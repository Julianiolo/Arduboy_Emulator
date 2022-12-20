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


float ABB::utils::AsmViewer::branchWidth = 2;
float ABB::utils::AsmViewer::branchSpacing = 1;

ABB::utils::AsmViewer::SyntaxColors ABB::utils::AsmViewer::syntaxColors = {
	{1,0.5f,0,1}, {1,1,0,1}, {0.2f,0.2f,0.7f,1}, {0.2f,0.4f,0.7f,1}, {0.4f,0.6f,0.4f,1}, {0.3f,0.4f,0.7f,1}, {0.5f,0.5f,0.7f,1}, {0.4f,0.4f,0.6f,1},
	{1,0.7f,1,1}, {1,0,1,1},
	{0,1,1,1}, {0.5f,1,0.5f,1},
	{0.6f,0.6f,0.7f,1},
	{70/255.0f, 245/255.0f, 130/255.0f, 1}
};

void ABB::utils::AsmViewer::drawLine(const char* lineStart, const char* lineEnd, size_t line_no, size_t PCAddr, ImRect& lineRect, bool* hasAlreadyClicked) {
	auto lineAddr = file.addrs[line_no];
	ImDrawList* drawList = ImGui::GetWindowDrawList();

	if (breakpointsEnabled) {
		auto linePC = lineAddr / 2;
		bool isAddr = lineAddr != A32u4::Disassembler::DisasmFile::Addrs_notAnAddr && lineAddr != A32u4::Disassembler::DisasmFile::Addrs_symbolLabel;
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

	if(showLineHeat && lineAddr != A32u4::Disassembler::DisasmFile::Addrs_notAnAddr && lineAddr != A32u4::Disassembler::DisasmFile::Addrs_symbolLabel){
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
	
	if(lineAddr != A32u4::Disassembler::DisasmFile::Addrs_notAnAddr){
		if (lineAddr != A32u4::Disassembler::DisasmFile::Addrs_symbolLabel) {
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

	constexpr size_t instNameStart = 23;
	const size_t paramTabOff = StringUtils::findCharInStr('\t', lineStart + instNameStart, lineEnd);
	const bool hasParams = paramTabOff != (size_t)-1;
	const size_t instNameEnd = hasParams ? (instNameStart + paramTabOff) : (lineEnd-lineStart);
	const size_t paramStart = instNameEnd;

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
		ImGui::SetTooltip(A32u4::Disassembler::disassembleRaw(word, word2).c_str());
	}
	ImGui::SameLine();
	// instruction name
	ImGuiExt::TextColored(syntaxColors.instName,     lineStart+instBytesEnd,   lineStart+instNameEnd);


	if (hasParams) {
		ImGui::SameLine();

		const size_t commentCharPos = StringUtils::findCharInStr(';', lineStart+paramStart, lineEnd);
		if(commentCharPos == (size_t)-1){
			// parameters
			drawInstParams(lineStart+paramStart, lineEnd);
		}
		else{
			// parameters
			drawInstParams(lineStart+paramStart, lineStart+paramStart+commentCharPos);
			ImGui::SameLine();

			const size_t symbolPos = StringUtils::findCharInStr('<', lineStart + paramStart + commentCharPos, lineEnd);
			const size_t symbolEndPos = StringUtils::findCharInStr('>', lineStart + paramStart + commentCharPos, lineEnd);
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
			size_t comma = StringUtils::findCharInStr(',', start+nextParamOff, end);
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
				}
			}

			nextParamOff = comma+1;
		}
	}
}
void ABB::utils::AsmViewer::drawSymbolComment(const char* lineStart, const char* lineEnd, const size_t symbolStartOff, const size_t symbolEndOff, bool* hasAlreadyClicked) {
	const size_t symbolNameStartOff = symbolStartOff+1;
	const size_t plusPos = StringUtils::findCharInStr('+', lineStart + symbolStartOff, lineEnd);
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
		popFileStyle();
			ImGui::BeginTooltip();
			const A32u4::SymbolTable::Symbol* symbol = symbolTable->getSymbolByName(std::string(lineStart + symbolNameStartOff, lineStart + symbolNameEndOff));
			if(symbol)
				SymbolBackend::drawSymbol(symbol, -1, mcu->flash.getData());
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
			std::string symbolName = std::string(lineStart + symbolNameStartOff, lineStart + symbolNameEndOff);
			const A32u4::SymbolTable::Symbol* symbol = symbolTable->getSymbolByName(symbolName);
			if (symbol) {
				if (file.labels.find((addrmcu_t)symbol->value) != file.labels.end()) {
					if (io.KeyShift && hasOffset) {
						size_t off = (size_t)StringUtils::numStrToUInt<size_t>(lineStart + symbolNameEndOff + 1, lineStart + symbolEndOff - 1);
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
					LogBackend::log(A32u4::ATmega32u4::LogLevel_Error, ("[AsmViewer] Symbol \"" + symbolName + "\" could not be found in the file").c_str());
				}
			}
			else {
				LogBackend::log(A32u4::ATmega32u4::LogLevel_Error, ("[AsmViewer] Symbol \"" + symbolName + "\" could not be found").c_str());
			}
		}
	}
}
void ABB::utils::AsmViewer::drawSymbolLabel(const char* lineStart, const char* lineEnd){
	constexpr size_t addrEnd = 8;

	constexpr size_t symbolNameStartOff = addrEnd + 1 + 1;
	const size_t symbolNameEndOff = StringUtils::findCharInStrFromBack('>',lineStart,lineEnd);
	MCU_ASSERT(symbolNameEndOff != (size_t)-1);

	ImGuiExt::TextColored(syntaxColors.syntaxLabelAddr, lineStart,         lineStart+addrEnd);
	ImGui::SameLine();
	ImGuiExt::TextColored(syntaxColors.syntaxLabelText, lineStart+addrEnd, lineEnd);
	if(ImGui::IsItemHovered()){
		std::string symbolName = std::string(lineStart + symbolNameStartOff, lineStart+symbolNameEndOff);
		const A32u4::SymbolTable::Symbol* symbol = symbolTable->getSymbolByName(symbolName);
		if (symbol) {
			popFileStyle();
			ImGui::BeginTooltip();

			SymbolBackend::drawSymbol(symbol, -1, mcu->flash.getData());

			ImGui::EndTooltip();
			pushFileStyle();
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

void ABB::utils::AsmViewer::drawBranchVis(size_t lineStart, size_t lineEnd, const ImVec2& winStartPos, const ImVec2& winSize, float lineXOff, float lineHeight, float firstLineY) {
	ImDrawList* drawlist =  ImGui::GetWindowDrawList();

	// seperation line to breakpoints
	drawlist->AddLine(
		{winStartPos.x+lineXOff, winStartPos.y},
		{winStartPos.x+lineXOff, winStartPos.y+winSize.y},
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

	for (auto& b : branchRootInds) {
		auto& branchRoot = file.branchRoots[b];
		float baseX = winStartPos.x + lineXOff;


		float x;
		bool clip = false;

		if (std::max(branchRoot.startLine, branchRoot.destLine) - std::min(branchRoot.startLine, branchRoot.destLine) > maxBranchLen) {
			clip = true;
		}

		if (branchRoot.displayDepth < maxBranchDepth && !clip) {
			x = baseX - branchArrowSpace - branchRoot.displayDepth * (branchWidth+branchSpacing) - branchSpacing ;
		}
		else {
			// depth is too big, so we clip it
			x = baseX - branchArrowSpace - (maxBranchDepth+1) * (branchWidth+branchSpacing) - branchSpacing;
			clip = true;
		}

		
		

		ImVec4 col;
		{
			float h = (float)(DataUtils::simpleHash(branchRoot.dest)&0xFFFF)/0xFFFF;
			ImGui::ColorConvertHSVtoRGB(h, 0.5, !clip?0.9:0.5, col.x, col.y, col.z);
			col.w = 1;
		}

		float start;
		if (branchRoot.startLine < lineStart) { // too far up
			start = winStartPos.y;
		}
		else if (branchRoot.startLine > lineEnd) { // too far down
			start = winStartPos.y + winSize.y;
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
			}
		}

		float end;
		if (branchRoot.destLine < lineStart) { // too far up
			end = winStartPos.y;
		}
		else if (branchRoot.destLine > lineEnd) { // too far down
			end = winStartPos.y + winSize.y;
		}
		else {
			float lineY = firstLineY + (branchRoot.destLine - lineStart) * lineHeight + 1;
			end = lineY + 0.5*lineHeight;
			{ // draw start line thingy
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
			}
		}

		

		drawlist->AddLine(
			{x,start},
			{x,end},
			ImColor(col), branchWidth
		);
	}
}

void ABB::utils::AsmViewer::drawHeader(){
	if(file.content.size() == 0)
		return;
}
void ABB::utils::AsmViewer::drawFile(uint16_t PCAddr) {
	if(file.content.size() == 0)
		return;

	if (ImGui::BeginChild(title.c_str())) {
		drawHeader();

		pushFileStyle();

		ImVec2 winStartPos = ImGui::GetCursorScreenPos() + ImGui::GetStyle().WindowPadding;
		if(ImGui::BeginChild(title.c_str(), {0,0}, true)) {
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
					{winStartPos.x+lineXOff+extraOff, winStartPos.y},
					{winStartPos.x+lineXOff+extraOff, winStartPos.y+winSize.y},
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

		popFileStyle();
	}
	ImGui::EndChild();

	
}

void ABB::utils::AsmViewer::decorateScrollBar(uint16_t PCAddr) {
	ImGuiWindow* win = ImGui::GetCurrentWindow();
	if (win->ScrollbarY) {
		ImGui::PushClipRect(win->OuterRectClipped.Min, win->OuterRectClipped.Max, false);

		size_t PCAddrLine = file.getLineIndFromAddr(PCAddr);
		float perc = (float)PCAddrLine / (float)file.getNumLines();
		ImGuiExt::AddLineToScrollBar(win, ImGuiAxis_Y, perc, { 1,0,0,1 });

		if(showScollBarHeat){
			constexpr size_t chunks = 300;
			size_t lastChunkEnd = 0;
			for(size_t i = 0; i< chunks;i++){
				size_t chunkEnd = (size_t)std::ceil(((float) file.getNumLines()/ chunks) * (i+1));
				if(chunkEnd >= file.getNumLines())
					chunkEnd = file.getNumLines()-1;
				uint16_t startAddr,endAddr;
				while((endAddr = file.addrs[chunkEnd]) == A32u4::Disassembler::DisasmFile::Addrs_notAnAddr || endAddr == A32u4::Disassembler::DisasmFile::Addrs_symbolLabel){
					if(chunkEnd+1 >= file.getNumLines()){
						endAddr = (uint16_t)(mcu->flash.sizeWords()-1);
						break;
					}
					chunkEnd++;
				}
					
				while(((startAddr = file.addrs[lastChunkEnd]) == A32u4::Disassembler::DisasmFile::Addrs_notAnAddr || startAddr == A32u4::Disassembler::DisasmFile::Addrs_symbolLabel) && lastChunkEnd+1 < chunkEnd)
					lastChunkEnd++;
				
				uint64_t sum = 0;
				for(uint16_t j = startAddr/2; j<endAddr/2;j++){
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
		LogBackend::log(A32u4::ATmega32u4::LogLevel_Error, (std::string("Cannot Open Source File: ") + path).c_str());
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

void ABB::utils::AsmViewer::drawSettings() {
	ImGui::SliderFloat("Branch Width", &branchWidth, 0, 10);
	ImGui::SliderFloat("Branch Spacing", &branchSpacing, 0, 10);

	ImGui::Separator();
	if(ImGui::TreeNode("Syntax colors")){
		ImGui::ColorEdit3("PC Addr", (float*)&syntaxColors.PCAddr, ImGuiColorEditFlags_NoInputs | ImGuiColorEditFlags_NoAlpha);
		ImGui::ColorEdit3("Raw Inst Bytes", (float*)&syntaxColors.rawInstBytes, ImGuiColorEditFlags_NoInputs | ImGuiColorEditFlags_NoAlpha);
		ImGui::ColorEdit3("Inst Name", (float*)&syntaxColors.instName, ImGuiColorEditFlags_NoInputs | ImGuiColorEditFlags_NoAlpha);
		ImGui::ColorEdit3("Inst Parameter", (float*)&syntaxColors.instParams, ImGuiColorEditFlags_NoInputs | ImGuiColorEditFlags_NoAlpha);
		
		ImGui::Separator();

		ImGui::ColorEdit3("Comment", (float*)&syntaxColors.asmComment, ImGuiColorEditFlags_NoInputs | ImGuiColorEditFlags_NoAlpha);
		ImGui::ColorEdit3("Comment Symbol", (float*)&syntaxColors.asmCommentSymbol, ImGuiColorEditFlags_NoInputs | ImGuiColorEditFlags_NoAlpha);
		ImGui::ColorEdit3("Comment Symbol Brackets", (float*)&syntaxColors.asmCommentSymbolBrackets, ImGuiColorEditFlags_NoInputs | ImGuiColorEditFlags_NoAlpha);
		ImGui::ColorEdit3("Comment Symbol Offset", (float*)&syntaxColors.asmCommentSymbolOffset, ImGuiColorEditFlags_NoInputs | ImGuiColorEditFlags_NoAlpha);
		
		ImGui::Separator();
		
		ImGui::ColorEdit3("Syntax Label", (float*)&syntaxColors.syntaxLabelText, ImGuiColorEditFlags_NoInputs | ImGuiColorEditFlags_NoAlpha);
		ImGui::ColorEdit3("Syntax Label Addr", (float*)&syntaxColors.syntaxLabelAddr, ImGuiColorEditFlags_NoInputs | ImGuiColorEditFlags_NoAlpha);
		
		ImGui::Separator();

		ImGui::ColorEdit3("Data Block", (float*)&syntaxColors.dataBlock, ImGuiColorEditFlags_NoInputs | ImGuiColorEditFlags_NoAlpha);
		ImGui::ColorEdit3("Data Block String Interpretation", (float*)&syntaxColors.dataBlockText, ImGuiColorEditFlags_NoInputs | ImGuiColorEditFlags_NoAlpha);

		ImGui::Separator();

		ImGui::ColorEdit3("Source Code", (float*)&syntaxColors.srcCodeText, ImGuiColorEditFlags_NoInputs | ImGuiColorEditFlags_NoAlpha);

		ImGui::Separator();

		ImGui::ColorEdit3("Branch Clipped", (float*)&syntaxColors.branchClipped, ImGuiColorEditFlags_NoInputs | ImGuiColorEditFlags_NoAlpha);

		ImGui::TreePop();
	}
}

/*

float width = ImGui::GetContentRegionAvail().x;
ImDrawList* drawList = ImGui::GetWindowDrawList();
drawList->AddRect(ImGui::GetItemRectMin(), {ImGui::GetItemRectMin().x + width, ImGui::GetItemRectMax().y}, IM_COL32(255, 0, 0, 255));

*/