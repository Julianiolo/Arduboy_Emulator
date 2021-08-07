#include "asmViewer.h"

#include <fstream>
#include <streambuf>

#include "../backends/LogBackend.h"
#include "utils/stringExtras.h"

ABB::utils::AsmViewer::SyntaxColors ABB::utils::AsmViewer::syntaxColors = {{1,0.5f,0,1}, {1,1,0,1}, {0.2,0.2,0.7f,1}, {0.2,0.4f,0.7f,1}};

void ABB::utils::AsmViewer::drawFile(const std::string& winName, uint16_t PC) {
	if(fileStr.size() == 0)
		return;
	
	if(ImGui::BeginChild((winName+" srcWin").c_str(), {0,0},true)){
		ImGui::PushStyleVar(ImGuiStyleVar_ItemSpacing, ImVec2(0, 0));

		ImGuiListClipper clipper;
		clipper.Begin(fileStrLines.size());
		while (clipper.Step()) {
			for (int line_no = clipper.DisplayStart; line_no < clipper.DisplayEnd; line_no++) {
				const char* lineStart = fileStr.c_str() + fileStrLines[line_no];
				const char* lineEnd;
				if(((size_t)line_no+1) < fileStrLines.size()){
					lineEnd = fileStr.c_str() + fileStrLines[line_no+1];
				}else{
					lineEnd = fileStr.c_str() + fileStr.size();
				}

                if(fileStrPCs[line_no] != (uint16_t) -1){
                    if(fileStrPCs[line_no] == PC){
                        float width = ImGui::GetContentRegionAvail().x;
                        ImDrawList* drawList = ImGui::GetWindowDrawList();
                        drawList->AddRect(ImGui::GetItemRectMin(), {ImGui::GetItemRectMin().x + width, ImGui::GetItemRectMax().y}, IM_COL32(255, 0, 0, 255));
                    }

                    ImGui::TextColored(syntaxColors.PCAddr,std::string(lineStart,lineStart+8).c_str());
                    ImGui::SameLine();
                    ImGui::TextColored(ImGui::GetStyleColorVec4(ImGuiCol_Text),std::string(lineStart+8,lineStart+10).c_str());
                    ImGui::SameLine();
                    ImGui::TextColored(syntaxColors.rawInstBytes,std::string(lineStart+10,lineStart+21).c_str());
                    ImGui::SameLine();
                    ImGui::TextColored(syntaxColors.instName,std::string(lineStart+21,lineStart+27).c_str());
                    ImGui::SameLine();
                    const size_t paramStart = 27;
                    const size_t commentCharPos = findCharInLine(lineStart+paramStart, lineEnd, ';');
                    if(commentCharPos == (size_t)-1){
                        ImGui::TextColored(syntaxColors.instParams,std::string(lineStart+paramStart,lineEnd).c_str());
                    }else{
                        ImGui::TextColored(syntaxColors.instParams,std::string(lineStart+paramStart,lineStart+paramStart+commentCharPos).c_str());
                        ImGui::SameLine();
                        ImGui::TextUnformatted(lineStart+paramStart+commentCharPos,lineEnd);
                    }
                    
                }
				else{
					ImGui::TextUnformatted(lineStart,lineEnd);
				}
			}
		}
		clipper.End();
		ImGui::PopStyleVar();

		if(scrollSet != -1){
			ImGui::SetScrollY(ImGui::GetScrollMaxY() * scrollSet);
			scrollSet = -1;
		}
	}
	ImGui::EndChild();
}

void ABB::utils::AsmViewer::loadSrcFile(const char* path) {
	std::ifstream t(path);

	if(!t.is_open()){
		LogBackend::log((std::string("Cannot Open Source File: ") + path).c_str(),A32u4::ATmega32u4::LogLevel_Error);
		return;
	}

	fileStr = "";

	t.seekg(0, std::ios::end);   
	fileStr.reserve(t.tellg());
	t.seekg(0, std::ios::beg);

	fileStr.assign(std::istreambuf_iterator<char>(t), std::istreambuf_iterator<char>());

	processSrcFile();
}
void ABB::utils::AsmViewer::processSrcFile() {
	size_t lineInd = 1;
	fileStrLines.resize(1000);
	fileStrLines[0] = 0;
	fileStrPCs.resize(1000);

	const char* str = fileStr.c_str();
	for(size_t i = 0; i < fileStr.size(); i++) {
		if(str[i] == '\n'){
			if(lineInd >= fileStrLines.size()){
				fileStrLines.resize(lineInd + 100);
			}
			fileStrLines[lineInd] = i+1;


			uint16_t Addr = getPCFromLine(str + fileStrLines[lineInd-1],str + i);
			uint16_t PC = Addr==(uint16_t)-1? -1 : Addr/2;
			if(lineInd >= fileStrPCs.size()){
				fileStrPCs.resize(lineInd + 100);
			}
			fileStrPCs[lineInd-1] = PC;
			lineInd++;
		}
	}

	fileStrLines.resize(lineInd);
	fileStrPCs.resize(lineInd);
}
uint16_t ABB::utils::AsmViewer::getPCFromLine(const char* start, const char* end) {
	if(start+8 > end || *start != ' ' || start[8] != ':')
		return -1;

	if(!isValidHexAddr(start,start+8))
		return -1;

	return stringExtras::HexStrToInt(std::string(start,start+8).c_str());
}

bool ABB::utils::AsmViewer::isValidHexAddr(const char* start, const char* end) {
	static constexpr char validHexDigits[] = {' ','0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'};
	for(const char* it = start; it < end; it++) {
		char c = *it;
		if(c >= 'A' && c <= 'Z') {
			c += ('a'-'A');
		}
		for(int i = 0; i<17;i++){
			if(c == validHexDigits[i])
				goto continue_outer;
		}
		return false;
	continue_outer:
		;
	}
	if(*(end-1) == ' ')
		return false;
	return true;
}

size_t ABB::utils::AsmViewer::getLineIndFromPC(uint16_t PC){
    if(isFileEmpty())
        return -1;

	size_t from = 0;
	size_t to = fileStrLines.size();

	while(from != to){
		size_t mid = from + ((to-from)/2);
		while(fileStrPCs[mid] == (uint16_t)-1)
			mid++;
		
		uint16_t linePC = fileStrPCs[mid];
		if(linePC == PC){
			return mid;
		}else if(linePC < PC){
			from = mid;
		}else{
            if(mid == to)
                break;
			to = mid;
		}
	}
	return from;
}

size_t ABB::utils::AsmViewer::findCharInLine(const char* start, const char* end, const char chr){
    for(const char* i = start; i<end; i++){
        if(*i == chr)
            return i-start;
    }
    return -1;
}

void ABB::utils::AsmViewer::scrollToLine(size_t line) {
    if(!isFileEmpty())
        scrollSet = (float)line/(float)fileStrLines.size();
}

bool ABB::utils::AsmViewer::isFileEmpty() {
    return fileStr.size() == 0;
}