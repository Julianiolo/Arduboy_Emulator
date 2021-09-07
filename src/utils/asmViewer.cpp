#include "asmViewer.h"

#include <fstream>
#include <streambuf>

#include <algorithm> // for std::replace

#include "../backends/LogBackend.h"
#include "../Extensions/imguiExt.h"
#include "utils/StringUtils.h"

ABB::utils::AsmViewer::SyntaxColors ABB::utils::AsmViewer::syntaxColors = {
	{1,0.5f,0,1}, {1,1,0,1}, {0.2,0.2,0.7f,1}, {0.2,0.4f,0.7f,1}, {0.4,0.6,0.4,1}, {0.3,0.4,0.7,1}, {0.5,0.5,0.7,1}, {0.4,0.4,0.6,1},
	{1,0.7,1,1}, {1,0,1,1},
	{0,1,1,1}, {.5,1,.5,1},
	{0.6,0.6,0.7,1}
};

void ABB::utils::AsmViewer::drawLine(const char* lineStart, const char* lineEnd, size_t line_no, size_t PCAddr, ImRect& lineRect, bool* hasAlreadyClicked) {
	auto lineAddr = fileStrAddrs[line_no];
	

	if (breakpoints && true) {
		ImDrawList* drawList = ImGui::GetWindowDrawList();

		auto linePC = lineAddr / 2;
		bool isAddr = lineAddr != Addrs_notAnAddr && lineAddr != Addrs_symbolLabel;
		bool hasBreakpoint = isAddr && breakpoints[linePC];

		float lineHeight = lineRect.GetHeight();
		float extraPadding = 5;

		ImGuiExt::Rect(lineAddr + (size_t)lineStart + 20375324, ImVec4{ 0,0,0,0 }, {lineHeight+extraPadding*2, lineHeight});
		if (isAddr && ImGui::IsItemClicked()) {
			breakpoints[linePC] = !breakpoints[linePC];
		}
		ImGui::SameLine();

		if (isAddr && breakpoints[linePC]) {
			float spacing = lineHeight*0.1f;

			ImVec2 cursor = ImGui::GetCursorScreenPos();
			drawList->AddCircleFilled(
				{cursor.x - lineHeight/2 - extraPadding, cursor.y + lineHeight/2}, lineHeight/2 - spacing,
				IM_COL32(255,0,0,255)
			);
		}

		drawList->AddLine(
			{ImGui::GetCursorScreenPos().x, lineRect.Min.y},
			{ImGui::GetCursorScreenPos().x, lineRect.Max.y},
			ImColor(ImGui::GetStyleColorVec4(ImGuiCol_Separator))
		);

		ImGui::SetCursorPosX(ImGui::GetCursorPosX() + extraPadding);

		lineRect.Min = ImGui::GetCursorScreenPos();
	}
	
	ImGui::BeginGroup();

	if (line_no == selectedLine) {
		ImDrawList* drawList = ImGui::GetWindowDrawList();
		drawList->AddRectFilled(
			lineRect.Min, lineRect.Max,
			IM_COL32(50,50,255,150)
		);
	}
	
	if(lineAddr != Addrs_notAnAddr){
		if (lineAddr != Addrs_symbolLabel) {
			constexpr size_t addrEnd = 8;
			constexpr size_t addrEndExt = 10;

			ImGuiExt::TextColored(syntaxColors.PCAddr,lineStart,lineStart+addrEnd);
			ImGui::SameLine();
			ImGui::TextUnformatted(lineStart+addrEnd,lineStart+addrEndExt);
			ImGui::SameLine();

			bool isInstNotData = *(lineStart + 22) == '\t';
			if (isInstNotData) { // is instruction
				drawInst(lineStart, lineEnd, hasAlreadyClicked);
			}
			else {
				drawData(lineStart, lineEnd);
			}

			if(fileStrAddrs[line_no] == PCAddr){
				ImDrawList* drawList = ImGui::GetWindowDrawList();
				drawList->AddRect(
					lineRect.Min, lineRect.Max,
					IM_COL32(255, 0, 0, 255)
				);
			}
		}
		else { // symbolLabel
			constexpr size_t addrEnd = 8;
			ImGuiExt::TextColored(syntaxColors.syntaxLabelAddr, lineStart,         lineStart+addrEnd);
			ImGui::SameLine();
			ImGuiExt::TextColored(syntaxColors.syntaxLabelText, lineStart+addrEnd, lineEnd);
		}
	}
	else{
		ImGuiExt::TextColored(syntaxColors.srcCodeText,lineStart,lineEnd);
	}

	if (lineStart == lineEnd) {
		ImGui::TextUnformatted(" "); // fix for end of file not working with clipper TODO: improve (maybe add a space to end of fileStr?)
	}

	ImGui::EndGroup();
	if (!*hasAlreadyClicked && ImGui::IsItemClicked()) {
		selectedLine = line_no;
	}
}
void ABB::utils::AsmViewer::drawInst(const char* lineStart, const char* lineEnd, bool* hasAlreadyClicked) {
	constexpr size_t instBytesStart = 10;
	constexpr size_t instBytesEnd = 21;
	constexpr size_t instNameStart = 23;
	const size_t paramTabOff = findCharInLine(lineStart + instNameStart, lineEnd, '\t');
	const bool hasParams = paramTabOff != (size_t)-1;
	const size_t instNameEnd = hasParams ? (instNameStart + paramTabOff) : (lineEnd-lineStart);
	const size_t paramStart = instNameEnd;

	// raw instruction bytes
	ImGuiExt::TextColored(syntaxColors.rawInstBytes, lineStart+instBytesStart, lineStart+instBytesEnd);
	ImGui::SameLine();
	// instruction name
	ImGuiExt::TextColored(syntaxColors.instName,     lineStart+instBytesEnd,   lineStart+instNameEnd);


	if (hasParams) {
		ImGui::SameLine();

		const size_t commentCharPos = findCharInLine(lineStart+paramStart, lineEnd, ';');
		if(commentCharPos == (size_t)-1){
			// parameters
			drawInstParams(lineStart+paramStart, lineEnd);
		}
		else{
			// parameters
			drawInstParams(lineStart+paramStart, lineStart+paramStart+commentCharPos);
			ImGui::SameLine();

			const size_t symbolPos = findCharInLine(lineStart + paramStart + commentCharPos, lineEnd, '<');
			const size_t symbolEndPos = findCharInLine(lineStart + paramStart + commentCharPos, lineEnd, '>');
			if (symbolPos == (size_t)-1 || symbolEndPos == (size_t)-1) {
				// comment
				ImGuiExt::TextColored(syntaxColors.asmComment, lineStart+paramStart+commentCharPos, lineEnd);
			}
			else {
				//symbol

				// draw rest of comment before symbol
				ImGuiExt::TextColored(syntaxColors.asmComment, lineStart+paramStart+commentCharPos, lineStart+paramStart+commentCharPos+symbolPos);
				ImGui::SameLine();

				size_t symbolStartOff = paramStart + commentCharPos + symbolPos;
				size_t symbolEndOff = paramStart+commentCharPos+symbolEndPos+1;
				drawSymbolComment(lineStart, lineEnd, symbolStartOff, symbolEndOff, hasAlreadyClicked);

				// draw rest of comment
				ImGui::SameLine();
				ImGuiExt::TextColored(syntaxColors.asmComment, lineStart+symbolEndOff, lineEnd);
			}

		}
	}
}
void ABB::utils::AsmViewer::drawInstParams(const char* start, const char* end) {
	if (!mcu) {
		ImGuiExt::TextColored(syntaxColors.instParams, start, end);
	}
	else {
		size_t paramCnt = 1;
		for (const char* sptr = start; sptr < end; sptr++)
			if (*sptr == ',')
				paramCnt++;

		size_t nextParamOff = 0;
		for (size_t i = 0; i < paramCnt; i++) {
			size_t comma = findCharInLine(start+nextParamOff, end, ',');
			const char* paramEnd = (comma != (size_t)-1) ? start + nextParamOff + comma + 1 : end;
			ImGuiExt::TextColored(syntaxColors.instParams, start + nextParamOff, paramEnd);

			if (i != paramCnt - 1)
				ImGui::SameLine();

			if (ImGui::IsItemHovered()) {
				std::string paramRaw = std::string(start + nextParamOff, paramEnd);
				std::string param = "";
				for (auto c : paramRaw) {
					if (c != ' ' && c != '\t' && c != ',' && c != '\n')
						param += c;
				}

				switch (param[0]) {
					case 'r': {
						size_t regInd = StringUtils::numBaseStrToUIntT<10>(param.c_str() + 1, param.c_str() + param.size());
						if (regInd < A32u4::DataSpace::Consts::GPRs_size) {
							uint8_t regVal = mcu->dataspace.getGPReg(regInd);
							ImGui::SetTooltip("%s: 0x%02x => %d", param.c_str(), regVal, regVal);
						}
					} break;

					case 'X':
					case 'Y':
					case 'Z':
					{
						uint16_t regVal = -1;
						switch (param[0]) {
							case 'X':
								regVal = mcu->dataspace.getX();
								break;
							case 'Y':
								regVal = mcu->dataspace.getY();
								break;
							case 'Z':
								regVal = mcu->dataspace.getZ();
								break;
						}

						ImGui::SetTooltip("%c: 0x%04x => %d", param[0], regVal, regVal);
					} break;
				}
			}

			nextParamOff = comma+1;
		}
	}
}
void ABB::utils::AsmViewer::drawSymbolComment(const char* lineStart, const char* lineEnd, const size_t symbolStartOff, const size_t symbolEndOff, bool* hasAlreadyClicked) {
	const size_t symbolNameStartOff = symbolStartOff+1;
	const size_t plusPos = findCharInLine(lineStart + symbolStartOff, lineEnd, '+');
	const size_t symbolNameEndOff = (plusPos!=(size_t)-1) ? (symbolStartOff + plusPos) : (symbolEndOff-1);
	const bool hasOffset = symbolNameEndOff != symbolEndOff - 1;
	
	//ImGuiExt::TextColored(syntaxColors.asmCommentSymbol, lineStart+symbolStartOff, lineStart+symbolEndOff); // simple display

	ImDrawList* drawList = ImGui::GetWindowDrawList();
	ImGuiIO& io = ImGui::GetIO();

	ImGui::BeginGroup();
	ImGuiExt::TextColored(syntaxColors.asmCommentSymbolBrackets, lineStart+symbolStartOff, lineStart+symbolNameStartOff); // <
	ImGui::SameLine();
	ImGuiExt::TextColored(syntaxColors.asmCommentSymbol, lineStart+symbolNameStartOff, lineStart+symbolNameEndOff);       //  Symbol
	ImRect symbolNameRect = ImRect(ImGui::GetItemRectMin(), ImGui::GetItemRectMax());

	ImGui::SameLine();
	ImRect symbolOffsetRect;
	if (hasOffset) {
		if(io.KeyCtrl && io.KeyShift && ImGui::IsWindowHovered())
			symbolOffsetRect = ImRect(ImGui::GetItemRectMin(), ImGui::GetItemRectMax());
		ImGuiExt::TextColored(syntaxColors.asmCommentSymbolOffset, lineStart+symbolNameEndOff, lineStart+symbolEndOff-1); //        +0123
		ImGui::SameLine();
	}
	ImGuiExt::TextColored(syntaxColors.asmCommentSymbolBrackets, lineStart+symbolEndOff-1, lineStart+symbolEndOff);       //             >
	ImGui::EndGroup();

	if (ImGui::IsItemHovered()) {
		//symbolTable->drawAddrWithSymbol();
		ImGui::SetTooltip(std::string(lineStart+symbolStartOff, lineStart+symbolEndOff).c_str());
		
		if (io.KeyCtrl) {
			drawList->AddLine(
				{ symbolNameRect.Min.x, symbolNameRect.Max.y},
				symbolNameRect.Max ,
				ImColor(syntaxColors.asmCommentSymbol)
			);
			ImGui::SetMouseCursor(ImGuiMouseCursor_Hand);
		}

		if (io.KeyCtrl && io.KeyShift)
			drawList->AddLine(
				{ symbolOffsetRect.Min.x, symbolOffsetRect.Max.y},
				symbolOffsetRect.Max ,
				ImColor(syntaxColors.asmCommentSymbolOffset)
			);
	}
	if (!*hasAlreadyClicked && ImGui::GetIO().KeyCtrl && ImGui::IsItemClicked()) {
		*hasAlreadyClicked = true;
		if (symbolTable) {
			std::string symbolName = std::string(lineStart + symbolNameStartOff, lineStart + symbolNameEndOff);
			const SymbolTable::Symbol* symbol = symbolTable->getSymbolByName(symbolName);
			if (symbol) {
				if (fileStrLabels.find(symbol->value) != fileStrLabels.end()) {
					if (io.KeyShift && hasOffset) {
						size_t off = StringUtils::numBaseStrToUIntT<10>(lineStart + symbolNameEndOff + 1, lineStart + symbolEndOff - 1);
						if(off != (size_t)-1)
							selectedLine = fileStrLabels.at(symbol->value+off);
						else
							selectedLine = fileStrLabels.at(symbol->value);
					}
					else {
						selectedLine = fileStrLabels.at(symbol->value);
					}
					
					scrollToLine(selectedLine);
				}
				else {
					LogBackend::log(A32u4::ATmega32u4::LogLevel_Error, ("[AsmViewer] Symbol \"" + symbolName + "\" could not be found in the file").c_str());
				}
			}
			else {
				LogBackend::log(A32u4::ATmega32u4::LogLevel_Error, ("[AsmViewer] Symbol \"" + symbolName + "\" could not be found").c_str());
			}
		}
	}
}

void ABB::utils::AsmViewer::drawData(const char* lineStart, const char* lineEnd) {
	constexpr size_t dataStart = 10;
	constexpr size_t dataEnd = 57;
	ImGuiExt::TextColored(syntaxColors.dataBlock,     lineStart+dataStart, lineStart+dataEnd);
	ImGui::SameLine();
	ImGuiExt::TextColored(syntaxColors.dataBlockText, lineStart+dataEnd,   lineEnd);
}

void ABB::utils::AsmViewer::drawFile(const std::string& winName, uint16_t PCAddr) {
	if(fileStr.size() == 0)
		return;

	ImGui::PushStyleVar(ImGuiStyleVar_WindowPadding, {2,2});

	if(ImGui::BeginChild((winName+" srcWin").c_str(), {0,0},true)){
		if (ImGui::IsWindowHovered() && ImGui::IsMouseClicked(ImGuiMouseButton_Right))
			selectedLine = -1;

		if (showScollBarHints)
			decorateScrollBar(PCAddr);

		ImGui::PushStyleVar(ImGuiStyleVar_ItemSpacing, ImVec2(0, 0));

		bool hasAlreadyClicked = false;

		ImGuiListClipper clipper;
		clipper.Begin(fileStrLines.size());
		while (clipper.Step()) {
			const float contentWidth = ImGui::GetContentRegionAvail().x;
			const ImVec2 charSize = ImGui::CalcTextSize(" ");
			
			for (int line_no = clipper.DisplayStart; line_no < clipper.DisplayEnd; line_no++) {
				const char* lineStart = fileStr.c_str() + fileStrLines[line_no];
				const char* lineEnd;
				if(((size_t)line_no+1) < fileStrLines.size())
					lineEnd = fileStr.c_str() + fileStrLines[line_no+1];
				else
					lineEnd = fileStr.c_str() + fileStr.size();

				ImRect lineRect = ImRect(
					ImGui::GetCursorScreenPos(),
					{ImGui::GetCursorScreenPos().x + contentWidth, ImGui::GetCursorScreenPos().y + charSize.y}
				);

				drawLine(lineStart, lineEnd, line_no, PCAddr, lineRect, &hasAlreadyClicked);
			}
		}
		clipper.End();
		ImGui::PopStyleVar();

		if(scrollSet != -1){
			ImGuiExt::SetScrollNormY(scrollSet);
			scrollSet = -1;
		}

		/*
		
		ImDrawList* drawList = ImGui::GetWindowDrawList();
		ImGuiWindow* win = ImGui::GetCurrentWindowRead();
		ImVec2 contentSize = ImGuiExt::GetContentSize();
		drawList->AddRect(
			{win->DC.CursorStartPos},
			{win->DC.CursorStartPos.x + contentSize.x, win->DC.CursorStartPos.y + contentSize.y - 10},
			IM_COL32(255,255,0,255)
		);
		float scrollMax = ImGui::GetScrollMaxY();
		drawList->AddRect(
			{win->DC.CursorStartPos},
			{win->DC.CursorStartPos.x + scrollMax, win->DC.CursorStartPos.y + scrollMax - 10},
			IM_COL32(255,0,0,255)
		);

		*/
		
	}

	ImGui::EndChild();

	ImGui::PopStyleVar();
}

void ABB::utils::AsmViewer::decorateScrollBar(uint16_t PCAddr) {
	ImGuiWindow* win = ImGui::GetCurrentWindow();
	if (win->ScrollbarY) {
		ImGui::PushClipRect(win->OuterRectClipped.Min, win->OuterRectClipped.Max, false);

		uint16_t PCAddrLine = getLineIndFromAddr(PCAddr);
		float perc = (float)PCAddrLine / (float)fileStrLines.size();
		ImGuiExt::AddLineToScrollBar(win, ImGuiAxis_Y, perc, { 1,0,0,1 });

		ImGui::GetContentRegionMaxAbs();

		ImGui::PopClipRect();
	}
}

void ABB::utils::AsmViewer::loadSrcFile(const char* path) {
	std::ifstream t(path);

	if(!t.is_open()){
		LogBackend::log(A32u4::ATmega32u4::LogLevel_Error, (std::string("Cannot Open Source File: ") + path).c_str());
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
	fileStrAddrs.resize(1000);

	const char* str = fileStr.c_str();
	size_t i = 0;
	for(; i < fileStr.size(); i++) {
		if(str[i] == '\n'){
			if(lineInd >= fileStrLines.size()){
				fileStrLines.resize(lineInd + 100);
			}
			fileStrLines[lineInd] = i+1;

			addAddrToList(str + fileStrLines[lineInd - 1], str + i, lineInd);
			
			lineInd++;
		}
	}
	addAddrToList(str + fileStrLines[lineInd - 1], str + fileStr.size(), lineInd);
	//lineInd++;

	fileStrLines.resize(lineInd);
	fileStrAddrs.resize(lineInd);
}
void ABB::utils::AsmViewer::addAddrToList(const char* start, const char* end, size_t lineInd) {
	uint16_t Addr = generateAddrFromLine(start, end);
	if(lineInd >= fileStrAddrs.size()){
		fileStrAddrs.resize(lineInd + 100);
	}
	fileStrAddrs[lineInd-1] = Addr;

	if (Addr == Addrs_symbolLabel) {
		uint16_t symbAddr = StringUtils::hexStrToUIntLen(start, 8);
		fileStrLabels[symbAddr] = lineInd-1;
	}
}
uint16_t ABB::utils::AsmViewer::generateAddrFromLine(const char* start, const char* end) {
	if (start + 8 > end || *start != ' ' || start[8] != ':') {
		if (*start == '0' && start[8] == ' ' && isValidHexAddr(start,start+8))
			return Addrs_symbolLabel;
		else
			return Addrs_notAnAddr;
	}

	if(!isValidHexAddr(start,start+8))
		return Addrs_notAnAddr;

	return StringUtils::hexStrToUIntLen(start, 8);
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
size_t ABB::utils::AsmViewer::findCharInLine(const char* start, const char* end, const char chr){
	for(const char* i = start; i<end; i++){
		if(*i == chr)
			return i-start;
	}
	return -1;
}

size_t ABB::utils::AsmViewer::getLineIndFromAddr(uint16_t Addr){
    if(isFileEmpty())
        return -1;

	size_t from = 0;
	size_t to = fileStrLines.size()-1;
	while ((fileStrAddrs[to] == Addrs_notAnAddr || fileStrAddrs[to] == Addrs_symbolLabel) && to > 0)
		to--;
	if (fileStrAddrs[to] < Addr || to == 0)
		return 0;

	while(from != to){
		size_t mid = from + ((to-from)/2);

		uint16_t lineAddr;
		while((lineAddr = fileStrAddrs[mid]) == Addrs_notAnAddr || lineAddr == Addrs_symbolLabel)
			mid++;
		
		if(lineAddr == Addr){
			return mid;
		}
		else {
			if (lineAddr < Addr) {
				if(mid == from)
					break;
				from = mid;
			}else{
				if(mid == to)
					break;
				to = mid;
			}
		}
	}
	return from;
}

void ABB::utils::AsmViewer::scrollToLine(size_t line, bool select) {
	if (isFileEmpty())
		return;

	scrollSet = (float)line/(float)fileStrLines.size();
	if (select)
		selectedLine = line;
}

bool ABB::utils::AsmViewer::isFileEmpty() {
    return fileStr.size() == 0;
}

void ABB::utils::AsmViewer::setSymbolTable(const SymbolTable* table) {
	symbolTable = table;
}
void ABB::utils::AsmViewer::setMcu(const A32u4::ATmega32u4* mcuPtr) {
	mcu = mcuPtr;
}
void ABB::utils::AsmViewer::setBreakpointArr(A32u4::Debugger::Breakpoint* breakpointsPtr) {
	breakpoints = breakpointsPtr;
}

/*

float width = ImGui::GetContentRegionAvail().x;
ImDrawList* drawList = ImGui::GetWindowDrawList();
drawList->AddRect(ImGui::GetItemRectMin(), {ImGui::GetItemRectMin().x + width, ImGui::GetItemRectMax().y}, IM_COL32(255, 0, 0, 255));

*/