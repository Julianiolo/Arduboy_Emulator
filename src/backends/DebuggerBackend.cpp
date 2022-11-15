#include "DebuggerBackend.h"

#include <inttypes.h> // for PRIx64 etc.

#define IMGUI_DEFINE_MATH_OPERATORS 1
#include "imgui.h"
#include "imgui_internal.h"
#include "../Extensions/imguiExt.h"

#include "ImGuiFD.h"

#include "StringUtils.h"

#include "ArduboyBackend.h"

#include "components/Disassembler.h"

#include "../utils/icons.h"


ABB::DebuggerBackend::DebuggerBackend(ArduboyBackend* abb, const char* winName, bool* open, const utils::SymbolTable* symbolTable) 
	: abb(abb), open(open), symbolTable(symbolTable), loadSrcMixFileDialogTitle(std::string(winName) + "srcMixFD"), winName(winName) 
{
	
}

void ABB::DebuggerBackend::drawControls(){
	if (stepFrame) {
		stepFrame = false;
		abb->ab.mcu.debugger.halt();
	}

	bool isHalted = abb->ab.mcu.debugger.isHalted(); // caching, but also so it cant change while something is disabled, not reenabling it as a result

	if (!isHalted) ImGui::BeginDisabled();
		if (ImGui::Button(ICON_OR_TEXT(ICON_FA_STEP_FORWARD,"Step"))) {
			abb->ab.mcu.debugger.step();
		}
		if (USE_ICONS && ImGui::IsItemHovered())
			ImGui::SetTooltip("Step");

		ImGui::SameLine();
		if (ImGui::Button(ICON_OR_TEXT(ICON_FA_FAST_FORWARD,"Step Frame"))) {
			stepFrame = true;
			abb->ab.mcu.debugger.continue_();
		}
		if (USE_ICONS && ImGui::IsItemHovered())
			ImGui::SetTooltip("Step Frame");

		ImGui::SameLine();
		if (ImGui::Button(ICON_OR_TEXT(ICON_FA_PLAY,"Continue"))) {
			abb->ab.mcu.debugger.continue_();
		}
		if (USE_ICONS && ImGui::IsItemHovered())
			ImGui::SetTooltip("Continue");

	if (!isHalted) ImGui::EndDisabled();

	ImGui::SameLine();
	if (isHalted) ImGui::BeginDisabled();
		if (ImGui::Button(ICON_OR_TEXT(ICON_FA_PAUSE,"Force Stop"))) {
			abb->ab.mcu.debugger.halt();
		}
		if (USE_ICONS && ImGui::IsItemHovered())
			ImGui::SetTooltip("Force Stop");
	if (isHalted) ImGui::EndDisabled();

	ImGui::SameLine();
	if (ImGui::Button(ICON_OR_TEXT(ICON_FA_UNDO,"Reset"))) {
		abb->resetMachine();
		if(haltOnReset)
			abb->ab.mcu.debugger.halt();
	}
	if (USE_ICONS && ImGui::IsItemHovered())
		ImGui::SetTooltip("Reset");
	ImGui::SameLine();
	ImGui::Checkbox("Halt on Reset", &haltOnReset);

	// ## Line 2 ##

	if(ImGui::Button("Jump to PC")) {
		if(srcMixs.size() > 0 && !srcMixs[selectedSrcMix].file.isEmpty()) {
			size_t line = srcMixs[selectedSrcMix].file.getLineIndFromAddr(abb->ab.mcu.cpu.getPCAddr());
			srcMixs[selectedSrcMix].scrollToLine(line);
		}
	}

	ImGui::SameLine();
	double totalSeconds = (double)abb->ab.mcu.cpu.getTotalCycles() / A32u4::CPU::ClockFreq;
	ImGui::Text("PC: %04x => Addr: %04x, totalcycs: %s (%.6fs)", 
		abb->ab.mcu.cpu.getPC(), abb->ab.mcu.cpu.getPCAddr(), 
		StringUtils::addThousandsSeperator(std::to_string(abb->ab.mcu.cpu.getTotalCycles()).c_str()).c_str(), totalSeconds);
}

void ABB::DebuggerBackend::drawDebugStack() {
	if (ImGui::BeginChild("DebugStack", { 0,80 }, true)) {
		int32_t stackSize = abb->ab.mcu.debugger.getCallStackPointer();
		ImGui::Text("Stack Size: %d", stackSize);
		if (ImGui::BeginTable("DebugStackTable", 2)) {
			for (int32_t i = stackSize-1; i >= 0; i--) {
				ImGui::TableNextRow();
				ImGui::TableNextColumn();
				
				if(symbolTable->hasSymbols()){
					uint16_t Addr = abb->ab.mcu.debugger.getPCAt(i)*2;
					const utils::SymbolTable::Symbol* symbol = symbolTable->drawAddrWithSymbol(Addr, symbolTable->getSymbolsRom());

					if (symbol && ImGui::IsItemHovered()) {
						ImGui::BeginTooltip();
						symbol->draw();
						ImGui::EndTooltip();
					}
					if (ImGui::IsItemClicked() && srcMixs.size() > 0) {
						size_t line = srcMixs[selectedSrcMix].file.getLineIndFromAddr(Addr);
						if(line != (size_t)-1)
							srcMixs[selectedSrcMix].scrollToLine(line, true);
					}
				}
				else{
					uint16_t Addr = abb->ab.mcu.debugger.getPCAt(i)*2;

					ImGui::Text("%04x",Addr);

					if (ImGui::IsItemClicked() && srcMixs.size() > 0) {
						size_t line = srcMixs[selectedSrcMix].file.getLineIndFromAddr(Addr);
						if(line != (size_t)-1)
							srcMixs[selectedSrcMix].scrollToLine(line, true);
					}
				}
					

				ImGui::TableNextColumn();
					
					
				ImGui::TextUnformatted(": from ");
				ImGui::SameLine();
					
				if(symbolTable->hasSymbols()){
					uint16_t fromAddr = abb->ab.mcu.debugger.getFromPCAt(i) * 2;
					const utils::SymbolTable::Symbol* fromSymbol = symbolTable->drawAddrWithSymbol(fromAddr, symbolTable->getSymbolsRom());

					if (fromSymbol && ImGui::IsItemHovered()) {
						ImGui::BeginTooltip();
						fromSymbol->draw();
						ImGui::EndTooltip();
					}
					if (ImGui::IsItemClicked() && srcMixs.size() > 0) {
						size_t line = srcMixs[selectedSrcMix].file.getLineIndFromAddr(fromAddr);
						if(line != (size_t)-1)
							srcMixs[selectedSrcMix].scrollToLine(line, true);
					}
				}else{
					uint16_t fromAddr = abb->ab.mcu.debugger.getFromPCAt(i) * 2;

					ImGui::Text("%04x",fromAddr);

					if (ImGui::IsItemClicked() && srcMixs.size() > 0) {
						size_t line = srcMixs[selectedSrcMix].file.getLineIndFromAddr(fromAddr);
						if(line != (size_t)-1)
							srcMixs[selectedSrcMix].scrollToLine(line, true);
					}
				}
					
			}
			ImGui::EndTable();
		}
		
	}
	ImGui::EndChild();
}
void ABB::DebuggerBackend::drawBreakpoints() {
	if (ImGui::BeginChild("DebugStack", { 600,80 }, true)) {
		for (auto& b : abb->ab.mcu.debugger.getBreakpointList()) {
			ImGui::Text("Breakpoint at addr %04x => PC %04x", b*2,b);
		}
	}
	ImGui::EndChild();
}
void ABB::DebuggerBackend::drawRegisters(){
	ImGui::Checkbox("Show GP-Registers", &showGPRegs);


	uint8_t sreg_val = abb->ab.mcu.dataspace.getDataByte(A32u4::DataSpace::Consts::SREG);
	constexpr const char* bitNames[] = {"I","T","H","S","V","N","Z","C"};
	ImGui::TextUnformatted("SREG");
	ImGui::BeginTable("SREG_TABLE",8, ImGuiTableFlags_NoHostExtendX | ImGuiTableFlags_SizingFixedFit);
	ImGui::TableNextRow();
	for(int i = 0; i<8;i++){
		ImGui::TableNextColumn();
		ImGui::TextUnformatted(bitNames[i]);
	}
	ImGui::TableNextRow();
	for(int i = 7; i>=0;i--){
		ImGui::TableNextColumn();
		ImGui::TextUnformatted((sreg_val & (1<<i)) ? "1" : "0");
	}
	ImGui::EndTable();
}
void ABB::DebuggerBackend::drawGPRegisters() {
	ImGui::PushStyleVar(ImGuiStyleVar_WindowPadding, { 4,4 });
	ImGui::PushStyleVar(ImGuiStyleVar_ItemSpacing, { 1,ImGui::GetStyle().ItemSpacing.y });
	if (ImGui::BeginChild("GPRegs", { ImGui::CalcTextSize("r99: ff").x+2*4+1, 0}, true)) {
		{
			size_t indPtr = 0;
			for (uint8_t i = 0; i < 32; i++) {
				ImGui::BeginGroup();

				if (gprWatches.size() > 0) {
					while (indPtr+1 < gprWatches.size() && gprWatches[indPtr+1].ind <= i) indPtr++; // advance indPtr to next entry in gprWatches (to the next where ind < i)
					if (i >= gprWatches[indPtr].ind && i < gprWatches[indPtr].ind+gprWatches[indPtr].len) { // check if inside Watch
						ImRect lineRect = ImRect(ImGui::GetCursorScreenPos(), ImGui::GetCursorScreenPos() + ImVec2{ ImGui::GetContentRegionAvail().x,ImGui::GetTextLineHeight() });
						ImGui::GetWindowDrawList()->AddRect(lineRect.Min, lineRect.Max, ImColor(gprWatches[indPtr].col));
					}
				}

				reg_t val = abb->ab.mcu.dataspace.getGPReg(i);
				ImGui::Text("%s%d: ", i > 9 ? "r" : " r", (int)i);
				ImGui::SameLine();
				ImGui::Text("%02x", val);

				ImGui::EndGroup();
				if (ImGui::IsItemClicked(ImGuiMouseButton_Right)) {
					ImGui::OpenPopup("dbgbkend_gprw");
					gprWatchAddAt = i;
				}
			}
		}
		

		if (ImGui::BeginPopup("dbgbkend_gprw")) {
			ImGui::TextUnformatted("General Porpouse Register Watch");
			ImGui::Separator();
			size_t indPtr = 0;
			while (indPtr+1 < gprWatches.size() && gprWatches[indPtr+1].ind <= gprWatchAddAt) indPtr++;
			if (gprWatches.size() > 0 && gprWatches[indPtr].ind == gprWatchAddAt) {
				if (ImGui::Button("Remove")) {
					gprWatches.erase(gprWatches.begin() + indPtr); // remove Watch
					ImGui::CloseCurrentPopup();
				}
			}
			else {
				ImGui::TextUnformatted("Add Watch Here!");

				static uint8_t size = 1;
				char buf[2]; // 2 should be enough, since we only ever need one digit and a null terminator
				buf[1] = 0;
				StringUtils::uIntToNumBaseBuf((uint64_t)1 << size, 1, buf);
				if (ImGui::BeginCombo("Size", buf)) {
					for (int i = 0; i < 4; i++) {
						StringUtils::uIntToNumBaseBuf((uint64_t)1 << i, 1, buf);
						if (ImGui::Selectable(buf, i == size))
							size = i;
					}
					ImGui::EndCombo();
				}

				if (ImGui::Button("Add")) {
					if (gprWatches.size() > 0 && gprWatchAddAt > gprWatches[indPtr].ind)
						indPtr++;

					uint8_t s = 1 << size;
					GPRWatch watch = GPRWatch{ gprWatchAddAt, s, {0,0,0,1} };

					ImVec4 col = {(float)(rand() % 256) / 256.0f, 0.8f, 1, 1};
					ImGui::ColorConvertHSVtoRGB(col.x, col.y, col.z, watch.col.x, watch.col.y, watch.col.z);
					gprWatches.insert(gprWatches.begin() + indPtr, watch);

					ImGui::CloseCurrentPopup();
				}
			}
			ImGui::EndPopup();
		}

		if (gprWatches.size() > 0) {
			float bottom = ImGui::GetCursorPosY() + ImGui::GetContentRegionAvail().y;
			ImGui::SetCursorPosY(bottom - ImGui::GetTextLineHeightWithSpacing() * gprWatches.size());

			for (size_t i = 0; i < gprWatches.size(); i++) {
				ImRect lineRect = ImRect(ImGui::GetCursorScreenPos(), ImGui::GetCursorScreenPos() + ImVec2{ ImGui::GetContentRegionAvail().x,ImGui::GetTextLineHeight() });
				ImGui::GetWindowDrawList()->AddRectFilled(lineRect.Min, lineRect.Max, ImColor(gprWatches[i].col));

				// collect Val
				uint64_t val = 0;
				for (uint8_t b = 0; b < gprWatches[i].len; b++) {
					val <<= 8;
					val |= abb->ab.mcu.dataspace.getDataByte(gprWatches[i].ind + (gprWatches[i].len - 1 - b));
				}

				if ((gprWatches[i].col.x + gprWatches[i].col.y + gprWatches[i].col.z) > 1.5) {
					ImGui::TextColored({0,0,0,1}, "%" PRIu64, val);
				}
				else {
					ImGui::Text("%" PRIu64, val);
				}
			}
		}
	}


	ImGui::EndChild();
	ImGui::PopStyleVar();
	ImGui::PopStyleVar();
	ImGui::SameLine();
}

bool ABB::DebuggerBackend::drawLoadGenerateButtons() {
	bool pressed = false;
	
	if(ImGui::Button("Load")){
		pressed = true;
		ImGuiFD::OpenFileDialog(loadSrcMixFileDialogTitle.c_str(), NULL, ".", ImGuiFD::ImGuiFDDialogFlags_Modal);
	}

	bool programLoaded = abb->ab.mcu.flash.isProgramLoaded();
	if (!programLoaded)
		ImGui::BeginDisabled();

	if(ImGui::Button("Generate")){
		pressed = true;
		generateSrc();
	}

	if (!programLoaded) {
		if (ImGui::IsItemHovered(ImGuiHoveredFlags_AllowWhenDisabled)) {
			ImGui::SetTooltip("Cannot generate assembly because there is no program present in flash memory!");
		}
		ImGui::EndDisabled();
	}

	return pressed;
}

void ABB::DebuggerBackend::draw() {
	if (ImGui::Begin(winName.c_str(),open)) {
		winFocused = ImGui::IsWindowFocused();

		drawControls();
		if (ImGui::TreeNode("Debug Stack")) {
			drawDebugStack();
			ImGui::TreePop();
		}
		if (ImGui::TreeNode("Breakpoints")) {
			drawBreakpoints();
			ImGui::TreePop();
		}
		if (ImGui::TreeNode("Registers")) {
			drawRegisters();
			ImGui::TreePop();
		}


		if (showGPRegs) {
			drawGPRegisters();
		}

		if (ImGui::BeginChild("srcMix")) {
			if (ImGui::BeginTabBar("srcMixTabBar")) {

				if (ImGui::TabItemButton("+", ImGuiTabItemFlags_Trailing | ImGuiTabItemFlags_NoTooltip)) {
					ImGui::OpenPopup("AddSrcMixPopup");
				}

				if (ImGui::BeginPopup("AddSrcMixPopup")) {
					ImGui::TextUnformatted("Add a Source Mix");
					if (drawLoadGenerateButtons())
						ImGui::CloseCurrentPopup();

					ImGui::EndPopup();
				}

				for (size_t i = 0; i < srcMixs.size();) {
					bool open = true;
					if (ImGui::BeginTabItem(srcMixs[i].title.c_str(), &open)) {
						selectedSrcMix = i;
						ImGui::EndTabItem();
					}

					if (!open) {
						srcMixs.erase(srcMixs.begin() + i);
						if (selectedSrcMix >= srcMixs.size())
							selectedSrcMix = srcMixs.size() - 1;
					}
					else {
						i++;
					}
				}

				ImGui::EndTabBar();
			}

			if(srcMixs.size() > 0){
				if(srcMixs[selectedSrcMix].file.isSelfDisassembled()){
					ImGui::AlignTextToFramePadding();
					ImGui::Text("Disassembled %" PRId64 " lines", srcMixs[selectedSrcMix].numOfDisasmLines());
					ImGui::SameLine();
					if(ImGui::Button("Update with analytics data")) {
						srcMixs[selectedSrcMix].generateDisasmFile(&abb->ab.mcu.flash, genDisamsInfo());
					}
				}
				srcMixs[selectedSrcMix].drawFile(abb->ab.mcu.cpu.getPCAddr());
			}
			else{
				ImGui::TextUnformatted("Couldnt generate disassembly, load or generate?");
				drawLoadGenerateButtons();
			}
		}
		ImGui::EndChild();
	}
	else {
		winFocused = false;
	}
	ImGui::End();

	if (ImGuiFD::BeginDialog(loadSrcMixFileDialogTitle.c_str())) {
		if (ImGuiFD::ActionDone()) {
			if (ImGuiFD::SelectionMade()) {
				addSrcFile(ImGuiFD::GetSelectionPathString(0));
			}
			ImGuiFD::CloseCurrentDialog();
		}
		ImGuiFD::EndDialog();
	}
}

const char* ABB::DebuggerBackend::getWinName() const {
	return winName.c_str();
}
bool ABB::DebuggerBackend::isWinFocused() const {
	return winFocused;
}


ABB::utils::AsmViewer& ABB::DebuggerBackend::addSrcMix() {
	srcMixs.push_back(utils::AsmViewer());

	utils::AsmViewer& srcMix = srcMixs.back();
	selectedSrcMix = srcMixs.size() - 1;

	srcMix.setSymbolTable(symbolTable);
	srcMix.setMcu(&abb->ab.mcu);
	return srcMix;
}

A32u4::Disassembler::DisasmFile::AdditionalDisasmInfo ABB::DebuggerBackend::genDisamsInfo(){
	A32u4::Disassembler::DisasmFile::AdditionalDisasmInfo info;
	info.analytics = &abb->ab.mcu.analytics;
	bool (*funcLine)(addrmcu_t,std::string*,void*) = [](addrmcu_t addr, std::string* out, void* userData) {
		utils::ELF::ELFFile* elf = (utils::ELF::ELFFile*)userData;
		size_t entryInd = elf->dwarf.debug_line.getEntryIndByAddr(addr);
		auto entry = entryInd != (size_t)-1 ? elf->dwarf.debug_line.getEntry(entryInd) : nullptr;

		if (entry && entry->file != (uint32_t)-1) {
			const auto& file = elf->dwarf.debug_line.files[entry->file];
			if (file.couldFind && entry->line < file.lines.size()) {
				size_t lineFrom = entry->line;

				if (entryInd > 0) {
					auto lastEntry = elf->dwarf.debug_line.getEntry(entryInd - 1);
					if (lastEntry->file == entry->file && lastEntry->line+1 < entry->line) {
						lineFrom = lastEntry->line+1;
					}
				}

				const size_t lineTo = entry->line + 1;

				if(lineTo - lineFrom > 64) { // TODO improve this, currently it just randomly cuts off at 64 lines
					lineFrom = lineTo-64;
				}

				*out = /*file.name + ":" + std::to_string(entry->line) +*/ std::string(
					file.content.c_str() + file.lines[lineFrom], 
					file.content.c_str() + ((lineTo < file.lines.size()) ? file.lines[lineTo]-1 : file.content.size())
				);
				return true;
			}
		}
		return false;
	};
	info.getLineInfoFromAddr = abb->elf.hasInfosLoaded() ? funcLine : NULL;
	info.lineUserData = &abb->elf;

	bool (*funcSymb)(addrmcu_t,bool,std::string*,void*) = [](addrmcu_t addr, bool ramNotRom, std::string* out, void* userData) {
		const utils::SymbolTable* symbolTable = (utils::SymbolTable*)userData;
		const utils::SymbolTable::Symbol* symb = utils::SymbolTable::getSymbolByValue(addr, ramNotRom ? symbolTable->getSymbolsRam() : symbolTable->getSymbolsRom());
		if (symb != NULL) {
			*out = symb->name;
			return true;
		}
		return false;
	};
	info.getSymbolNameFromAddr = funcSymb;
	info.symbolUserData = (void*)symbolTable;

	return info;
}

void ABB::DebuggerBackend::generateSrc() {
	utils::AsmViewer& srcMix = addSrcMix();
	
	srcMix.title = ADD_ICON(ICON_FA_FILE_CODE) "Generated";
	auto info = genDisamsInfo();
	srcMix.generateDisasmFile(&abb->ab.mcu.flash, info);
}

void ABB::DebuggerBackend::addSrc(const char* str, const char* title) {
	utils::AsmViewer& srcMix = addSrcMix();

	srcMix.title = title ? title : std::string(ADD_ICON(ICON_FA_FILE_CODE) "Loaded #") + std::to_string(loadedSrcFileInc++);
	srcMix.loadSrc(str);
}
bool ABB::DebuggerBackend::addSrcFile(const char* path) {
	utils::AsmViewer& srcMix = addSrcMix();

	srcMix.title = std::string(ADD_ICON(ICON_FA_FILE_CODE)) + StringUtils::getFileName(path);

	return srcMix.loadSrcFile(path);
}

/*

StringUtils::uIntToHex(Addr, 4, texBuf);

ImGui::BeginGroup();
ImGui::TextUnformatted(texBuf, texBuf+4);

const utils::SymbolTable::Symbol* symbol = symbolTable->getSymbolByValue(Addr);
if (symbol) {
ImGui::SameLine();
ImGui::TextColored(symbol->col, symbol->demangled.c_str());
}

ImGui::EndGroup();

*/