#include "DebuggerBackend.h"

#include "imgui.h"
#include "imgui_internal.h"
#include "../Extensions/imguiExt.h"

#include <fstream>
#include <streambuf>

#include "LogBackend.h"
#include "utils/stringExtras.h"

ABB::DebuggerBackend::DebuggerBackend(Arduboy* ab, const char* winName) : ab(ab), winName(winName){

}

void ABB::DebuggerBackend::drawControls(){
	bool isHalted = ab->mcu.debugger.isHalted();
	if (!isHalted)
		ImGui::PushDisabled();

	if (ImGui::Button("Step")) {
		ab->mcu.debugger.step();
	}
	ImGui::SameLine();
	if (ImGui::Button("Continue")) {
		ab->mcu.debugger.continue_();
	}
	ImGui::SameLine();
	if(ImGui::Button("Jump to PC")) {
		if(srcMixFile.size() > 0) {
			size_t line = getLineIndFromPC(ab->mcu.cpu.getPC());
			srcMixFileScrollSet = (float)line/(float)srcMixFileLines.size();
		}
	}

	if (!isHalted)
		ImGui::PopDisabled();

	if (ImGui::Button("Reset")) {
		ab->reset();
	}
}
void ABB::DebuggerBackend::drawSrcFile() {
	if(srcMixFile.size() == 0)
		return;
	
	if(ImGui::BeginChild((winName+" srcWin").c_str(), {0,0},true)){
		ImGui::PushStyleVar(ImGuiStyleVar_ItemSpacing, ImVec2(0, 0));

		ImGuiListClipper clipper;
		clipper.Begin(srcMixFileLines.size());
		while (clipper.Step()) {
			for (int line_no = clipper.DisplayStart; line_no < clipper.DisplayEnd; line_no++) {
				const char* lineStart = srcMixFile.c_str() + srcMixFileLines[line_no];
				const char* lineEnd;
				if(((size_t)line_no+1) < srcMixFileLines.size()){
					lineEnd = srcMixFile.c_str() + srcMixFileLines[line_no+1];
				}else{
					lineEnd = srcMixFile.c_str() + srcMixFile.size();
				}

				if(srcMixFilePCs[line_no] == ab->mcu.cpu.getPC()){
					ImGui::TextColored({1,0,0,1},std::string(lineStart,lineEnd).c_str());
				}else{
					ImGui::TextUnformatted(lineStart,lineEnd);
				}
			}
		}
		clipper.End();
		ImGui::PopStyleVar();

		if(srcMixFileScrollSet != -1){
			float height = ImGui::GetCursorPos().y - ImGui::GetCursorStartPos().y;
			ImGui::SetScrollFromPosY(ImGui::GetCursorStartPos().y + height * srcMixFileScrollSet, 0.5);
			//ImGuiExt::SetScrollWithCenterRatioY(ImGui::GetCursorStartPos().y + height * srcMixFileScrollSet, 0.5);
			srcMixFileScrollSet = -1;
		}
	}
	ImGui::EndChild();
}
void ABB::DebuggerBackend::draw() {
	if (ImGui::Begin(winName.c_str())) {
		drawControls();
		drawSrcFile();
	}
	ImGui::End();
}

void ABB::DebuggerBackend::loadSrcFile(const char* path) {
	std::ifstream t(path);

	if(!t.is_open()){
		LogBackend::log((std::string("Cannot Open Source File: ") + path).c_str(),A32u4::ATmega32u4::LogLevel_Error);
		return;
	}

	srcMixFile = "";

	t.seekg(0, std::ios::end);   
	srcMixFile.reserve(t.tellg());
	t.seekg(0, std::ios::beg);

	srcMixFile.assign(std::istreambuf_iterator<char>(t), std::istreambuf_iterator<char>());

	processSrcFile();
}
void ABB::DebuggerBackend::processSrcFile() {
	size_t lineInd = 1;
	srcMixFileLines.resize(1000);
	srcMixFileLines[0] = 0;
	srcMixFilePCs.resize(1000);

	const char* str = srcMixFile.c_str();
	for(size_t i = 0; i < srcMixFile.size(); i++) {
		if(str[i] == '\n'){
			if(lineInd >= srcMixFileLines.size()){
				srcMixFileLines.resize(lineInd + 100);
			}
			srcMixFileLines[lineInd] = i+1;


			uint16_t Addr = getPCFromLine(str + srcMixFileLines[lineInd-1],str + i);
			uint16_t PC = Addr==(uint16_t)-1? -1 : Addr/2;
			if(lineInd >= srcMixFilePCs.size()){
				srcMixFilePCs.resize(lineInd + 100);
			}
			srcMixFilePCs[lineInd-1] = PC;
			lineInd++;
		}
	}

	srcMixFileLines.resize(lineInd);
	srcMixFilePCs.resize(lineInd);
}
uint16_t ABB::DebuggerBackend::getPCFromLine(const char* start, const char* end) {
	if(start+8 > end || *start != ' ' || start[8] != ':')
		return -1;

	if(!isValidHex(start,start+8))
		return -1;

	return stringExtras::HexStrToInt(std::string(start,start+8).c_str());
}

bool ABB::DebuggerBackend::isValidHex(const char* start, const char* end) {
	static constexpr char validHexDigits[] = {' ','0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'};
	for(const char* it = start; it < end; it++) {
		char c = *it;
		if(c >= 'A' && c <= 'Z') {
			c += ('a'-'A');
		}
		for(int i = 0; i<16;i++){
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

size_t ABB::DebuggerBackend::getLineIndFromPC(uint16_t PC){
	size_t from = 0;
	size_t to = srcMixFileLines.size();
	//while(srcMixFilePCs[from] == -1)
	//	from++;
	//while(srcMixFilePCs[to] == -1)
	//	to--;

	while(from != to){
		size_t mid = from + ((to-from)/2);
		while(srcMixFilePCs[mid] == (uint16_t)-1)
			mid++;
		
		uint16_t linePC = srcMixFilePCs[mid];
		if(linePC == PC){
			return mid;
		}else if(linePC < PC){
			from = mid;
		}else{
			to = mid;
		}
	}
	return from;
}