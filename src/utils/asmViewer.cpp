#include "asmViewer.h"

#include <fstream>
#include <streambuf>
#include <iostream>


#include <inttypes.h> // for printf

#include <iostream>
#include <set>

#include "../backends/LogBackend.h"
#include "extras/Disassembler.h"
#include "../backends/SymbolBackend.h"

#include "../Extensions/imguiExt.h"
#include "StringUtils.h"
#include "DataUtils.h"
#include "MathUtils.h"

#define MCU_MODULE "AsmViewer"


float ABB::utils::AsmViewer::branchWidth = 2;
float ABB::utils::AsmViewer::branchSpacing = 1;

bool ABB::utils::AsmViewer::showBranches = true;
size_t ABB::utils::AsmViewer::maxBranchDepth = 16;


ABB::utils::AsmViewer::SyntaxColors ABB::utils::AsmViewer::syntaxColors;

void ABB::utils::AsmViewer::drawLine(const char* lineStart, const char* lineEnd, size_t line_no, size_t PCAddr, ImRect& lineRect, bool* hasAlreadyClicked) {
	auto lineAddr = file.addrs[line_no];
	ImDrawList* drawList = ImGui::GetWindowDrawList();

	if (breakpointsEnabled) {
		auto linePC = lineAddr / 2;
		bool isAddr = A32u4::Disassembler::DisasmFile::addrIsActualAddr(lineAddr);
		bool hasBreakpoint = isAddr && mcu->debugger.getBreakpoints()[linePC];

		float lineHeight = lineRect.GetHeight();
		

		ImGuiExt::Rect((ImGuiID)(lineAddr + (size_t)lineStart + 20375324), ImVec4{ 0,0,0,0 }, {lineHeight+breakpointExtraPadding*2, lineHeight});
		if (isAddr && ImGui::IsItemClicked()) {
			if (!mcu->debugger.getBreakpoints()[linePC])
				mcu->debugger.setBreakpoint(linePC);
			else
				mcu->debugger.clearBreakpoint(linePC);
		}
		ImGui::SameLine();

		if (hasBreakpoint) {
			float spacing = lineHeight*0.1f;

			ImVec2 cursor = ImGui::GetCursorScreenPos();
			drawList->AddCircleFilled(
				{cursor.x - lineHeight/2 - breakpointExtraPadding, cursor.y + lineHeight/2}, lineHeight/2 - spacing,
				IM_COL32(255,0,0,255)
			);
		}

		ImGui::SetCursorPosX(ImGui::GetCursorPosX() + breakpointExtraPadding);

		lineRect.Min = ImGui::GetCursorScreenPos();
	}
	
	ImGui::BeginGroup();

	if(showLineHeat && A32u4::Disassembler::DisasmFile::addrIsActualAddr(lineAddr)){
		const uint64_t cnt = mcu->analytics.getPCCnt(lineAddr);
		if (cnt > 0) {
			const float intensity = MathUtils::clamp((float)std::log(cnt) / 15, 0.05f, 1.f);
			drawList->AddRectFilled(
				lineRect.Min, lineRect.Max,
				ImColor(ImVec4{1,0,0,intensity/3})
			);
		}
		
	}

	if (line_no == selectedLine) {
		drawList->AddRectFilled(
			lineRect.Min, lineRect.Max,
			IM_COL32(50,50,255,50)
		);
	}
	
	if(!A32u4::Disassembler::DisasmFile::addrIsNotProgram(lineAddr)){
		if (!A32u4::Disassembler::DisasmFile::addrIsSymbol(lineAddr)) {
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

			if(file.addrs[line_no] == PCAddr){
				drawList->AddRect(
					lineRect.Min, lineRect.Max,
					IM_COL32(255, 0, 0, 255)
				);
			}
		}
		else { // symbolLabel
			drawSymbolLabel(lineStart,lineEnd);
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
	constexpr size_t instBytesStart = A32u4::Disassembler::DisasmFile::FileConsts::instBytesStart;
	constexpr size_t instBytesEnd = A32u4::Disassembler::DisasmFile::FileConsts::instBytesEnd;

	const char* const instNameStart = lineStart + 23;
	const char* const paramTabOff = StringUtils::findCharInStr('\t', instNameStart, lineEnd);
	const bool hasParams = paramTabOff != nullptr;
	const char* const instNameEnd = hasParams ? paramTabOff : lineEnd;
	const char* const paramStart = instNameEnd;

	// raw instruction bytes
	ImGuiExt::TextColored(syntaxColors.rawInstBytes, lineStart + instBytesStart, lineStart + instBytesEnd);
	if(ImGui::IsItemHovered()){
		uint16_t word = (	StringUtils::hexStrToUIntLen<uint16_t>(lineStart+instBytesStart,   2)) |
						(	StringUtils::hexStrToUIntLen<uint16_t>(lineStart+instBytesStart+3, 2) << 8);
		uint16_t word2 = 0;
		if(*(lineStart+instBytesStart+3+3) != ' ') {
			word2 = (	StringUtils::hexStrToUIntLen<uint16_t>(lineStart+instBytesStart+3+3,   2)) |
					(	StringUtils::hexStrToUIntLen<uint16_t>(lineStart+instBytesStart+3+3+3, 2) << 8);
		}
		ImGui::SetTooltip("%s",A32u4::Disassembler::disassembleRaw(word, word2).c_str());
	}
	ImGui::SameLine();
	// instruction name
	ImGuiExt::TextColored(syntaxColors.instName, lineStart+instBytesEnd, instNameEnd);


	if (hasParams) {
		ImGui::SameLine();

		const char* const commentCharPos = StringUtils::findCharInStr(';', paramStart, lineEnd);
		if(commentCharPos == nullptr){
			// parameters
			drawInstParams(paramStart, lineEnd);
		}
		else{
			// parameters
			drawInstParams(paramStart, commentCharPos);
			ImGui::SameLine();

			const char* const symbolPos = StringUtils::findCharInStr('<', commentCharPos, lineEnd);
			const char* const symbolEndPos = StringUtils::findCharInStr('>', commentCharPos, lineEnd);
			if (symbolPos == nullptr || symbolEndPos == nullptr) {
				// comment
				ImGuiExt::TextColored(syntaxColors.asmComment, commentCharPos, lineEnd);
			}
			else {
				//symbol

				// draw rest of comment before symbol
				ImGuiExt::TextColored(syntaxColors.asmComment, commentCharPos, symbolPos);
				ImGui::SameLine();

				drawSymbolComment(lineStart, lineEnd, symbolPos, symbolEndPos+1, hasAlreadyClicked);

				// draw rest of comment
				ImGui::SameLine();
				ImGuiExt::TextColored(syntaxColors.asmComment, symbolEndPos+1, lineEnd);
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

		const char* nextParamOff = start;
		for (size_t i = 0; i < paramCnt; i++) {
			const char* const comma = StringUtils::findCharInStr(',', nextParamOff, end);
			const char* const paramEnd = (comma != nullptr) ? comma + 1 : end;
			ImGuiExt::TextColored(syntaxColors.instParams, nextParamOff, paramEnd);

			if (i != paramCnt - 1)
				ImGui::SameLine();

			if (ImGui::IsItemHovered()) {
				std::string paramRaw = std::string(nextParamOff, paramEnd);
				std::string param = StringUtils::stripString_(paramRaw);

				if(param.size() > 0){
					switch (param[0]) {
						case 'R':
						case 'r': {
							uint8_t regInd = (uint8_t)StringUtils::numBaseStrToUIntT<10,uint8_t>(param.c_str() + 1, param.c_str() + param.size());
							if (regInd < A32u4::DataSpace::Consts::GPRs_size) {
								uint8_t regVal = mcu->dataspace.getGPReg(regInd);
								ImGui::SetTooltip("r%d: 0x%02x => %d (%d)", regInd, regVal, regVal, (int8_t)regVal);
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

						case '0': {
							if(param.size() > 1 && param[1] == 'x'){
								if(param.size() >= 2+4) {
									popFileStyle();
									ImGui::BeginTooltip();

									addrmcu_t addr = StringUtils::hexStrToUIntLen<decltype(addr)>(param.c_str() + 2, 4);

									ImGui::Text("0x%04x => %u", addr, addr);

									const A32u4::SymbolTable::Symbol* symbol = mcu->symbolTable.getSymbolByValue(addr, mcu->symbolTable.getSymbolsRom());
									if(symbol) {
										ImGui::Separator();
										ABB::SymbolBackend::drawSymbol(symbol, addr, mcu->flash.getData());
									}

									ImGui::EndTooltip();
									pushFileStyle();
								}
							}
						} break;
					}
				}

			}

			nextParamOff = comma+1;
		}
	}
}
void ABB::utils::AsmViewer::drawSymbolComment(const char* lineStart, const char* lineEnd, const char* symbolStartOff, const char* symbolEndOff, bool* hasAlreadyClicked) {
	const char* const symbolNameStartOff = symbolStartOff+1;
	const char* const plusPos = StringUtils::findCharInStr('+', symbolStartOff, lineEnd);
	const char* const symbolNameEndOff = (plusPos!=nullptr) ? plusPos : (symbolEndOff-1);
	const bool hasOffset = symbolNameEndOff != symbolEndOff - 1;
	
	//ImGuiExt::TextColored(syntaxColors.asmCommentSymbol, lineStart+symbolStartOff, lineStart+symbolEndOff); // simple display

	ImDrawList* drawList = ImGui::GetWindowDrawList();
	ImGuiIO& io = ImGui::GetIO();

	ImGui::BeginGroup();
		ImGuiExt::TextColored(syntaxColors.asmCommentSymbolBrackets, symbolStartOff, symbolNameStartOff); // <
		ImGui::SameLine();
		ImGuiExt::TextColored(syntaxColors.asmCommentSymbol, symbolNameStartOff, symbolNameEndOff);       //  Symbol
		ImRect symbolNameRect = ImRect(ImGui::GetItemRectMin(), ImGui::GetItemRectMax());

		ImGui::SameLine();
		ImRect symbolOffsetRect;
		if (hasOffset) {
			if(io.KeyCtrl && io.KeyShift && ImGui::IsWindowHovered())
				symbolOffsetRect = ImRect(ImGui::GetItemRectMin(), ImGui::GetItemRectMax());
			ImGuiExt::TextColored(syntaxColors.asmCommentSymbolOffset, symbolNameEndOff, symbolEndOff-1); //        +0123
			ImGui::SameLine();
		}
		ImGuiExt::TextColored(syntaxColors.asmCommentSymbolBrackets, symbolEndOff-1, symbolEndOff);       //             >
	ImGui::EndGroup();

	if (ImGui::IsItemHovered()) {
		popFileStyle();
			ImGui::BeginTooltip();
			const A32u4::SymbolTable::Symbol* symbol = symbolTable->getSymbolByName(std::string(symbolNameStartOff, symbolNameEndOff));
			if (symbol) {
				SymbolBackend::drawSymbol(symbol, -1, mcu->flash.getData());
			}
			else {
				ImGui::TextUnformatted("Symbol not present in Symboltable");
			}
			ImGui::EndTooltip();
		pushFileStyle();

		// add Underline
		if (io.KeyCtrl) {
			drawList->AddLine(
				{ symbolNameRect.Min.x, symbolNameRect.Max.y},
				symbolNameRect.Max ,
				ImColor(syntaxColors.asmCommentSymbol)
			);
			ImGui::SetMouseCursor(ImGuiMouseCursor_Hand);
		}

		// add other Underline
		if (io.KeyCtrl && io.KeyShift)
			drawList->AddLine(
				{ symbolOffsetRect.Min.x, symbolOffsetRect.Max.y},
				symbolOffsetRect.Max ,
				ImColor(syntaxColors.asmCommentSymbolOffset)
			);
	}

	if (!*hasAlreadyClicked && ImGui::GetIO().KeyCtrl && ImGui::IsItemClicked()) {
		*hasAlreadyClicked = true; 
		if (symbolTable != nullptr) {
			std::string symbolName = std::string(symbolNameStartOff, symbolNameEndOff);
			const A32u4::SymbolTable::Symbol* symbol = symbolTable->getSymbolByName(symbolName);
			if (symbol) {
				if (file.labels.find((addrmcu_t)symbol->value) != file.labels.end()) {
					if (io.KeyShift && hasOffset) {
						size_t off = (size_t)StringUtils::numStrToUInt<size_t>(symbolNameEndOff + 1, symbolEndOff - 1);
						if(off != (size_t)-1)
							selectedLine = file.getLineIndFromAddr((addrmcu_t)( symbol->value + off ));
						else
							selectedLine = file.labels.at((addrmcu_t)symbol->value);
					}
					else {
						selectedLine = file.labels.at((addrmcu_t)symbol->value);
					}
					
					scrollToLine(selectedLine);
				}
				else {
					MCU_LOGF_(A32u4::ATmega32u4::LogLevel_Error, "[AsmViewer] Symbol \"\" could not be found in the file", symbolName.c_str());
				}
			}
			else {
				MCU_LOGF_(A32u4::ATmega32u4::LogLevel_Error, "[AsmViewer] Symbol \"%s\" could not be found", symbolName.c_str());
			}
		}
	}
}
void ABB::utils::AsmViewer::drawSymbolLabel(const char* lineStart, const char* lineEnd){
	const char* const addrEnd = lineStart + 8;

	const char* const symbolNameStartOff = addrEnd + 1 + 1;
	const char* const symbolNameEndOff = StringUtils::findCharInStrFromBack('>',lineStart,lineEnd);
	MCU_ASSERT(symbolNameEndOff != nullptr);

	ImGuiExt::TextColored(syntaxColors.syntaxLabelAddr, lineStart, addrEnd);
	ImGui::SameLine();
	ImGuiExt::TextColored(syntaxColors.syntaxLabelText, addrEnd, lineEnd);
	if(ImGui::IsItemHovered()){
		std::string symbolName = std::string(symbolNameStartOff, symbolNameEndOff);
		const A32u4::SymbolTable::Symbol* symbol = symbolTable->getSymbolByName(symbolName);
		
		popFileStyle();
		ImGui::BeginTooltip();

		if (symbol) {
			SymbolBackend::drawSymbol(symbol, -1, mcu->flash.getData());
		}
		else {
			ImGui::Text("Symbol \"%s\" not present in Symboltable", symbolName.c_str());
		}

		ImGui::EndTooltip();
		pushFileStyle();
	}
}

void ABB::utils::AsmViewer::drawData(const char* lineStart, const char* lineEnd) {
	constexpr size_t dataStart = 10;
	constexpr size_t dataEnd = 57;
	ImGuiExt::TextColored(syntaxColors.dataBlock,     lineStart+dataStart, lineStart+dataEnd);
	ImGui::SameLine();
	ImGuiExt::TextColored(syntaxColors.dataBlockText, lineStart+dataEnd,   lineEnd);
}

void ABB::utils::AsmViewer::drawBranchVis(size_t lineStart, size_t lineEnd, const ImVec2& winStartPos, const ImVec2& winSize, float lineXOff, float lineHeight, float firstLineY) {
	ImDrawList* drawlist =  ImGui::GetWindowDrawList();
	const size_t maxDepth = std::min(maxBranchDepth+1, file.maxBranchDisplayDepth);

	// seperation line to breakpoints
	drawlist->AddLine(
		{winStartPos.x+lineXOff, winStartPos.y + ImGui::GetScrollY()},
		{winStartPos.x+lineXOff, winStartPos.y + ImGui::GetScrollY() + winSize.y},
		ImColor(ImGui::GetStyleColorVec4(ImGuiCol_Separator))
	);

	std::set<size_t> branchRootInds;
	{
		size_t from = file.passingBranchesInds[lineStart];
		for (size_t c = from; c < file.passingBranchesVec.size(); c++) {
			auto& pb = file.passingBranchesVec[c];
			if (pb.startLine > lineEnd) {
				break;
			}

			for (size_t i = 0; i < pb.passing.size(); i++) {
				branchRootInds.insert(pb.passing[i]);
			}
		}
	}

	const float baseX = winStartPos.x + lineXOff;
	for (auto& b : branchRootInds) {
		auto& branchRoot = file.branchRoots[b];


		float x;
		bool clip = false;
		if (branchRoot.displayDepth < maxBranchDepth) {
			x = baseX - branchArrowSpace - branchRoot.displayDepth * (branchWidth+branchSpacing) - branchSpacing ;
		}
		else {
			// depth is too big, so we clip it
			x = baseX - branchArrowSpace - maxDepth * (branchWidth+branchSpacing) - branchSpacing;
			clip = true;
		}

		ImVec4 col;
		{
			float h = (float)(DataUtils::simpleHash(branchRoot.dest)&0xFFFF)/0xFFFF;
			ImGui::ColorConvertHSVtoRGB(h, 0.5, !clip?0.9f:0.5f, col.x, col.y, col.z);
			col.w = 1;
		}

		float start;
		if (branchRoot.startLine < lineStart) { // too far up
			start = winStartPos.y + ImGui::GetScrollY();
		}
		else if (branchRoot.startLine > lineEnd) { // too far down
			start = winStartPos.y + ImGui::GetScrollY() + winSize.y;
		}
		else {
			float lineY = firstLineY + (branchRoot.startLine - lineStart) * lineHeight - 1;
			start = lineY + 0.5f * lineHeight;
			{ // draw start line thingy
				drawlist->AddLine(
					{x,start},
					{baseX,start},
					ImColor(col), branchWidth
				);

				drawlist->AddLine(
					{baseX-branchArrowSpace,start},
					{baseX-branchArrowSpace*0.66f,start-branchArrowSpace*0.33f},
					ImColor(col)
				);
				drawlist->AddLine(
					{baseX-branchArrowSpace,start},
					{baseX-branchArrowSpace*0.66f,start+branchArrowSpace*0.33f},
					ImColor(col)
				);

				if (clip) {
					drawlist->AddLine(
						{x,start},
						{x,start+(branchRoot.startLine<branchRoot.destLine?ImGui::GetTextLineHeight()/2:-ImGui::GetTextLineHeight()/2)},
						ImColor(col)
					);
				}
			}
		}

		float end;
		if (branchRoot.destLine < lineStart) { // too far up
			end = winStartPos.y + ImGui::GetScrollY();
		}
		else if (branchRoot.destLine > lineEnd) { // too far down
			end = winStartPos.y + ImGui::GetScrollY() + winSize.y;
		}
		else {
			float lineY = firstLineY + (branchRoot.destLine - lineStart) * lineHeight + 1;
			end = lineY + 0.5f*lineHeight;
			{ // draw end line thingy
				drawlist->AddLine(
					{x,end},
					{baseX-branchArrowSpace*0.25f,end},
					ImColor(col), branchWidth
				);

				// arrow
				drawlist->AddTriangleFilled(
					{baseX-branchArrowSpace/2, end-branchArrowSpace/2},
					{baseX, end},
					{baseX-branchArrowSpace/2, end+branchArrowSpace/2},
					ImColor(col)
				);

				if (clip) {
					drawlist->AddLine(
						{x,end},
						{x,end+(branchRoot.startLine>branchRoot.destLine?ImGui::GetTextLineHeight()/2:-ImGui::GetTextLineHeight()/2)},
						ImColor(col)
					);
				}
			}
		}

		// draw main line
		if(!clip)
			drawlist->AddLine(
				{x,start},
				{x,end},
				ImColor(col), branchWidth
			);
	}
}
void ABB::utils::AsmViewer::drawFile(uint16_t PCAddr) {
	if(file.content.size() == 0)
		return;

	pushFileStyle();

	if(ImGui::BeginChild(title.c_str(), {0,0}, true, ImGuiWindowFlags_HorizontalScrollbar)) {
		ImVec2 winStartPos = ImGui::GetCursorScreenPos();
		ImVec2 winSize = ImGui::GetContentRegionAvail();


		if (ImGui::IsWindowHovered() && ImGui::IsMouseClicked(ImGuiMouseButton_Right))
			selectedLine = -1;

		if (showScollBarHints)
			decorateScrollBar(PCAddr);


		float lineXOff = 0;
		if (showBranches) {
			lineXOff += std::min(maxBranchDepth+1,file.maxBranchDisplayDepth) * (branchWidth+branchSpacing) + branchSpacing + branchArrowSpace;
		}

		const float lineHeight = ImGui::GetTextLineHeightWithSpacing();

		if (breakpointsEnabled) {
			float extraOff = lineHeight + breakpointExtraPadding * 2; // amount of extra offset due to the space for the breakpoint
			// add border line that seperates breakpoints and lines
			ImGui::GetWindowDrawList()->AddLine(
				{winStartPos.x+lineXOff+extraOff, winStartPos.y+ImGui::GetScrollY()},
				{winStartPos.x+lineXOff+extraOff, winStartPos.y+ImGui::GetScrollY()+winSize.y},
				ImColor(ImGui::GetStyleColorVec4(ImGuiCol_Separator))
			);
		}


		bool hasAlreadyClicked = false;

		size_t lineStart = -1, lineEnd = -1;
		float firstLineY = -1;
		{
			ImGuiListClipper clipper;
			clipper.Begin((int)file.lines.size(), lineHeight);
			while (clipper.Step()) {
				const float contentWidth = ImGui::GetContentRegionAvail().x;
				const ImVec2 charSize = ImGui::CalcTextSize(" ");

				lineStart = clipper.DisplayStart;
				lineEnd = clipper.DisplayEnd;
				firstLineY = ImGui::GetCursorScreenPos().y;
				for (int line_no = clipper.DisplayStart; line_no < clipper.DisplayEnd; line_no++) {
					const char* lineStart = file.content.c_str() + file.lines[line_no];
					const char* lineEnd;
					if(((size_t)line_no+1) < file.lines.size())
						lineEnd = file.content.c_str() + file.lines[line_no+1];
					else
						lineEnd = file.content.c_str() + file.content.size();

					if (showBranches) {
						ImGui::SetCursorPosX(ImGui::GetCursorPosX() + lineXOff);
					}

					ImRect lineRect = ImRect(
						ImGui::GetCursorScreenPos(),
						{ImGui::GetCursorScreenPos().x + contentWidth, ImGui::GetCursorScreenPos().y + charSize.y}
					);

					drawLine(lineStart, lineEnd, line_no, PCAddr, lineRect, &hasAlreadyClicked);
				}
			}
			clipper.End();
		}



		if (showBranches) {
			drawBranchVis(lineStart, lineEnd, winStartPos, winSize, lineXOff, lineHeight, firstLineY);
		}


		if(scrollSet != -1){
			ImGuiExt::SetScrollNormY(scrollSet);
			scrollSet = -1;
		}
	}

	ImGui::EndChild();

	popFileStyle();
}

void ABB::utils::AsmViewer::decorateScrollBar(uint16_t PCAddr) {
	ImGuiWindow* win = ImGui::GetCurrentWindow();
	if (win->ScrollbarY) {
		ImGui::PushClipRect(win->OuterRectClipped.Min, win->OuterRectClipped.Max, false);

		size_t PCAddrLine = file.getLineIndFromAddr(PCAddr);
		float perc = (float)PCAddrLine / (float)file.getNumLines();
		ImGuiExt::AddLineToScrollBar(win, ImGuiAxis_Y, perc, { 1,0,0,1 });

		if(showScollBarHeat){
			// we reduce the resolution by only drawing [chunks] many chunks
			constexpr size_t chunks = 300;
			size_t lastChunkEnd = 0;
			for(size_t i = 0; i< chunks;i++){
				size_t chunkEnd = (size_t)std::ceil(((float) file.getNumLines()/ chunks) * (i+1));
				if(chunkEnd >= file.getNumLines())
					chunkEnd = file.getNumLines()-1;

				addrmcu_t startAddr = file.getNextActualAddr(lastChunkEnd);
				addrmcu_t endAddr = file.getPrevActualAddr(chunkEnd);

				if (endAddr > mcu->flash.size())
					endAddr = mcu->flash.size();
				
				uint64_t sum = 0;
				for(pc_t j = startAddr/2; j<endAddr/2;j++){
					sum += mcu->analytics.getPCHeat()[j];
				}

				if(sum > 0){
					float avg = (float)((double)sum / (double)(endAddr-startAddr));
					float intensity = std::log(avg) / 15;
					if(intensity < 0.05f)
						intensity = 0.05f;
					if(intensity > 1)
						intensity = 1;
					
					if(intensity > (1.0/256))
						ImGuiExt::AddRectToScrollBar(win, ImGuiAxis_Y, {{0,lastChunkEnd/(float)file.getNumLines()},{1,chunkEnd/(float)file.getNumLines()}}, {1,0,0,intensity/1.5f});
				}
				
				lastChunkEnd = chunkEnd+1;
			}
		}
		
		const ImRect& scrollRect = ImGuiExt::GetScrollBarHandleRect(win, ImGuiAxis_Y);
		ImGui::GetWindowDrawList()->AddRectFilled(scrollRect.Min,scrollRect.Max,  ImColor(ImGui::GetStyleColorVec4(ImGuiCol_ScrollbarGrab)), ImGui::GetStyle().ScrollbarRounding);

		ImGui::GetContentRegionMaxAbs();

		ImGui::PopClipRect();
	}
}

void ABB::utils::AsmViewer::loadSrc(const char* str, const char* strEnd) {
	file.loadSrc(str, strEnd);
}
bool ABB::utils::AsmViewer::loadSrcFile(const char* path) {
	bool res = file.loadSrcFile(path);
	if(!res)
		MCU_LOGF_(A32u4::ATmega32u4::LogLevel_Error, "Cannot Open Source File: %s", path);
	return res;
}
void ABB::utils::AsmViewer::generateDisasmFile(const A32u4::Flash* data, const A32u4::Disassembler::DisasmFile::AdditionalDisasmInfo& info) {
	file.disassembleBinFile(data, info);
}

size_t ABB::utils::AsmViewer::numOfDisasmLines(){
	return file.getDisasmData()->lines.size();
}

void ABB::utils::AsmViewer::scrollToLine(size_t line, bool select) {
	if (file.isEmpty())
		return;

	scrollSet = (float)line/(float)file.getNumLines();
	if (select)
		selectedLine = line;
}

void ABB::utils::AsmViewer::pushFileStyle(){
	ImGui::PushStyleVar(ImGuiStyleVar_WindowPadding, {2,2});
	ImGui::PushStyleVar(ImGuiStyleVar_ItemSpacing, ImVec2(0, 0));
}
void ABB::utils::AsmViewer::popFileStyle(){
	ImGui::PopStyleVar();
	ImGui::PopStyleVar();
}

void ABB::utils::AsmViewer::setSymbolTable(const A32u4::SymbolTable* table) {
	symbolTable = table;
}
void ABB::utils::AsmViewer::setMcu(A32u4::ATmega32u4* mcuPtr) {
	mcu = mcuPtr;
}

size_t ABB::utils::AsmViewer::sizeBytes() const {
	size_t sum = 0;

	sum += DataUtils::approxSizeOf(title);
	sum += file.sizeBytes();

	return sum;
}

void ABB::utils::AsmViewer::drawSettings() {
	ImGui::SliderFloat("Branch Width", &branchWidth, 0, 10);
	ImGui::SliderFloat("Branch Spacing", &branchSpacing, 0, 10);

	ImGui::Separator();

	ImGui::Checkbox("Show Branches", &showBranches);

	{
		int v = (int)maxBranchDepth;
		if(ImGui::SliderInt("Branch Clip Amt", &v, 1, 128))
			maxBranchDepth = v;
	}

	

	ImGui::Separator();
	if(ImGui::TreeNode("Syntax colors")){
		const float resetBtnWidth = ImGui::CalcTextSize("Reset").x + ImGui::GetStyle().FramePadding.x * 2;
#define COLOR_MACRO(str,_x_)	ImGui::ColorEdit3(str, (float*)&syntaxColors. _x_, ImGuiColorEditFlags_NoInputs | ImGuiColorEditFlags_NoAlpha); \
								ImGui::SameLine(); \
								ImGui::SetCursorPosX(ImGui::GetCursorPosX() + (ImGui::GetContentRegionAvail().x-resetBtnWidth)); \
								if(ImGui::Button("Reset"))syntaxColors. _x_ = defSyntaxColors. _x_;

		COLOR_MACRO("PC Addr", PCAddr);
		COLOR_MACRO("Raw Inst Bytes", rawInstBytes);
		COLOR_MACRO("Inst Name", instName);
		COLOR_MACRO("Inst Parameter", instParams);
		
		ImGui::Spacing();

		COLOR_MACRO("Comment", asmComment);
		COLOR_MACRO("Comment Symbol", asmCommentSymbol);
		COLOR_MACRO("Comment Symbol Brackets", asmCommentSymbolBrackets);
		COLOR_MACRO("Comment Symbol Offset", asmCommentSymbolOffset);
		
		ImGui::Spacing();
		
		COLOR_MACRO("Syntax Label", syntaxLabelText);
		COLOR_MACRO("Syntax Label Addr", syntaxLabelAddr);
		
		ImGui::Spacing();

		COLOR_MACRO("Data Block", dataBlock);
		COLOR_MACRO("Data Block String Interpretation", dataBlockText);

		ImGui::Spacing();

		COLOR_MACRO("Source Code", srcCodeText);

		ImGui::Spacing();

		COLOR_MACRO("Branch Clipped", branchClipped);

#undef COLOR_MACRO
		ImGui::TreePop();
	}
}

/*

float width = ImGui::GetContentRegionAvail().x;
ImDrawList* drawList = ImGui::GetWindowDrawList();
drawList->AddRect(ImGui::GetItemRectMin(), {ImGui::GetItemRectMin().x + width, ImGui::GetItemRectMax().y}, IM_COL32(255, 0, 0, 255));

*/