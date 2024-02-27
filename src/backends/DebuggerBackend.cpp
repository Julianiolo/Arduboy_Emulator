#include "DebuggerBackend.h"

#include <inttypes.h> // for PRIx64 etc.

#define IMGUI_DEFINE_MATH_OPERATORS 1
#include "imgui.h"
#include "imgui_internal.h"
#include "imgui/imguiExt.h"

#include "ImGuiFD.h"

#include "ArduboyBackend.h"

#include "extras/Disassembler.h"

#include "imgui/icons.h"
#include "StringUtils.h"
#include "DataUtilsSize.h"

#define LU_MODULE "DebuggerBackend"
#define LU_CONTEXT abb->logBackend.getLogContext()

ABB::DebuggerBackend::DebuggerBackend(ArduboyBackend* abb, const char* winName, bool* open) 
	: abb(abb), loadSrcMix((std::string(winName) + "srcMixFD").c_str()), winName(winName), open(open)
{
	
}

void ABB::DebuggerBackend::drawControls(){
	if (stepFrame) {
		stepFrame = false;
		abb->mcu.debugger_halt();
	}

	bool isHalted = abb->mcu.debugger_isHalted(); // caching, but also so it cant change while something is disabled, not reenabling it as a result

	if (!isHalted) ImGui::BeginDisabled();
		if (ImGui::Button(ICON_OR_TEXT(ICON_FA_FORWARD_STEP,"Step"))) {
			abb->mcu.debugger_step();
		}
		if (USE_ICONS && ImGui::IsItemHovered())
			ImGui::SetTooltip("Step");

		ImGui::SameLine();
		if (ImGui::Button(ICON_OR_TEXT(ICON_FA_FORWARD_FAST,"Step Frame"))) {
			stepFrame = true;
			abb->mcu.debugger_continue();
		}
		if (USE_ICONS && ImGui::IsItemHovered())
			ImGui::SetTooltip("Step Frame");

		ImGui::SameLine();
		if (ImGui::Button(ICON_OR_TEXT(ICON_FA_PLAY,"Continue"))) {
			abb->mcu.debugger_continue();
		}
		if (USE_ICONS && ImGui::IsItemHovered())
			ImGui::SetTooltip("Continue");

	if (!isHalted) ImGui::EndDisabled();

	ImGui::SameLine();
	if (isHalted) ImGui::BeginDisabled();
		if (ImGui::Button(ICON_OR_TEXT(ICON_FA_PAUSE,"Force Stop"))) {
			abb->mcu.debugger_halt();
		}
		if (USE_ICONS && ImGui::IsItemHovered())
			ImGui::SetTooltip("Force Stop");
	if (isHalted) ImGui::EndDisabled();

	ImGui::SameLine();
	if (ImGui::Button(ICON_OR_TEXT(ICON_FA_ROTATE_LEFT,"Reset"))) {
		abb->resetMachine();
		if(haltOnReset)
			abb->mcu.debugger_halt();
	}
	if (USE_ICONS && ImGui::IsItemHovered())
		ImGui::SetTooltip("Reset");
	ImGui::SameLine();
	ImGui::Checkbox("Halt on Reset", &haltOnReset);

	// ## Line 2 ##

	if(ImGui::Button("Jump to PC")) {
		if(srcMixs.size() > 0 && !srcMixs[selectedSrcMix].viewer.file.isEmpty()) {
			size_t line = srcMixs[selectedSrcMix].viewer.file.getLineIndFromAddr(abb->mcu.getPCAddr());
			srcMixs[selectedSrcMix].viewer.scrollToLine(line);
		}
	}

	ImGui::SameLine();
	double totalSeconds = (double)abb->mcu.totalCycles() / abb->mcu.clockFreq();
	ImGui::Text("PC: %04x => Addr: %04x, totalcycs: %s (%.6fs)", 
		abb->mcu.getPC(), abb->mcu.getPCAddr(), 
		StringUtils::addThousandsSeperator(std::to_string(abb->mcu.totalCycles()).c_str()).c_str(), totalSeconds);
}

void ABB::DebuggerBackend::drawDebugStack() {
	if (ImGui::BeginChild("DebugStack", { 0,80 }, true)) {
		size_t stackSize = abb->mcu.getStackPtr();
		ImGui::Text("Stack Size: %" CU_PRIuSIZE, stackSize);
		if (ImGui::BeginTable("DebugStackTable", 2)) {
			for (int32_t i = (int32_t)stackSize-1; i >= 0; i--) {
				ImGui::TableNextRow();
				ImGui::TableNextColumn();
				
				uint16_t addr = abb->mcu.getStackTo(i)*2;
				if(abb->symbolTable.hasSymbols()){
					const EmuUtils::SymbolTable::Symbol* symbol = abb->symbolBackend.drawAddrWithSymbol(addr, abb->symbolTable.getSymbolsRom());

					if (symbol && ImGui::IsItemHovered()) {
						ImGui::BeginTooltip();
						SymbolBackend::drawSymbol(symbol);
						ImGui::EndTooltip();
					}
				}
				else{
					ImGui::Text("%04x", addr);
				}
				if (ImGui::IsItemClicked() && srcMixs.size() > 0) {
					size_t line = srcMixs[selectedSrcMix].viewer.file.getLineIndFromAddr(addr);
					if(line != (size_t)-1)
						srcMixs[selectedSrcMix].viewer.scrollToLine(line, true);
				}
					

				ImGui::TableNextColumn();
					
					
				ImGui::TextUnformatted(": from ");
				ImGui::SameLine();
				
				uint16_t fromAddr = abb->mcu.getStackFrom(i) * 2;

				if(abb->symbolTable.hasSymbols()){
					const EmuUtils::SymbolTable::Symbol* fromSymbol = abb->symbolBackend.drawAddrWithSymbol(fromAddr, abb->symbolTable.getSymbolsRom());

					if (fromSymbol && ImGui::IsItemHovered()) {
						ImGui::BeginTooltip();
						SymbolBackend::drawSymbol(fromSymbol);
						ImGui::EndTooltip();
					}
				}else{
					ImGui::Text("%04x",fromAddr);
				}
				if (ImGui::IsItemClicked() && srcMixs.size() > 0) {
					size_t line = srcMixs[selectedSrcMix].viewer.file.getLineIndFromAddr(fromAddr);
					if(line != (size_t)-1)
						srcMixs[selectedSrcMix].viewer.scrollToLine(line, true);
				}
			}
			ImGui::EndTable();
		}
		
	}
	ImGui::EndChild();
}
void ABB::DebuggerBackend::drawBreakpoints() {
	if (ImGui::Button("Clear All Breakpoints")) {
		abb->mcu.debugger_clearAllBreakpoints();
	}
	if (ImGui::BeginChild("DebugStack", { 0,80 }, true)) {
		for (auto& b : abb->mcu.debugger_getBreakpointList()) {
			ImGui::Text("Breakpoint at addr %04x => PC %04x", b*2,b);
		}
	}
	ImGui::EndChild();
}
void ABB::DebuggerBackend::drawRegisters(){
	ImGui::Checkbox("Show GP-Registers", &showGPRegs);

	abb->mcu.draw_stateInfo();
}
void ABB::DebuggerBackend::drawGPRegisters() {
	ImGui::PushStyleVar(ImGuiStyleVar_WindowPadding, { 4,4 });
	ImGui::PushStyleVar(ImGuiStyleVar_ItemSpacing, { 1,1 });
	ImGui::PushStyleVar(ImGuiStyleVar_ScrollbarSize, 3);
	if (ImGui::BeginChild("GPRegs", { ImGui::CalcTextSize("r99: ff").x+2*4+1, 0}, true)) {
		for (uint8_t i = 0; i < abb->mcu.getRegNum(); i++) {
			auto reg = abb->mcu.getReg(i);
			ImGui::Text("%3s: %02x", reg.first, reg.second);
		}
	}


	ImGui::EndChild();
	ImGui::PopStyleVar();
	ImGui::PopStyleVar();
	ImGui::PopStyleVar();
	ImGui::SameLine();
}

bool ABB::DebuggerBackend::drawLoadGenerateButtons() {
	bool pressed = false;
	
	if(ImGui::Button("Load")){
		pressed = true;
		loadSrcMix.OpenDialog(ImGuiFDMode_LoadFile, ".", "Asm Dump: *.asm,*.txt", ImGuiFDDialogFlags_Modal);
	}

	if (ImGui::IsItemHovered()) {
		ImGui::SetTooltip("Browse or drop file here");
		if (IsFileDropped()) {
			auto files = LoadDroppedFiles();
			for (size_t i = 0; i < files.count; i++) {
				if (addSrcFile(files.paths[i]))
					LU_LOGF(LogUtils::LogLevel_Output, "sucessfully loaded file %s", files.paths[i]);
			}
			UnloadDroppedFiles(files);
		}
	}

	bool programLoaded = abb->mcu.flash_isProgramLoaded();
	if (!programLoaded)
		ImGui::BeginDisabled();

	if(ImGui::Button("Generate")){
		pressed = true;
		generateSrc();
	}

	if (!programLoaded) {
		ImGui::EndDisabled();
		if (ImGui::IsItemHovered(ImGuiHoveredFlags_AllowWhenDisabled)) {
			ImGui::SetTooltip("Cannot generate assembly because there is no program present in flash memory!");
		}
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
					if (ImGui::BeginTabItem(srcMixs[i].viewer.title.c_str(), &open)) {
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
				if(srcMixs[selectedSrcMix].selfDisassembled){
					ImGui::AlignTextToFramePadding();
					ImGui::Text("Disassembled %" CU_PRIuSIZE " lines", srcMixs[selectedSrcMix].viewer.numOfDisasmLines());
					ImGui::SameLine();
					if(ImGui::Button("Update with analytics data")) {
						std::string disasmed = disasmProg();
						srcMixs[selectedSrcMix].viewer.loadSrc(disasmed.c_str(), disasmed.c_str() + disasmed.size());
					}
				}
				srcMixs[selectedSrcMix].viewer.drawFile(abb->mcu.getPCAddr(), &abb->mcu,&abb->symbolTable);
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

	if (loadSrcMix.Begin()) {
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


ABB::utils::AsmViewer& ABB::DebuggerBackend::addSrcMix(bool selfDisassembled) {
	srcMixs.push_back({ utils::AsmViewer(), selfDisassembled });

	utils::AsmViewer& srcMix = srcMixs.back().viewer;
	selectedSrcMix = srcMixs.size() - 1;

	return srcMix;
}

std::string ABB::DebuggerBackend::disasmProg() {
	std::vector<std::pair<uint32_t, std::string>> srcLines;
	if (abb->elfFile) {
		srcLines = EmuUtils::ELF::genSourceSnippets(*abb->elfFile);
	}
	const std::vector<std::pair<uint32_t, std::string>> funcSymbs = abb->symbolTable.getFuncSymbols();

	auto ret = abb->symbolTable.getDataSymbolsAndDisasmSeeds();
	auto& dataSymbs = ret.first;
	auto& seeds = ret.second;

	// merge in analytics seeds
	{
		size_t ind = 0;
		for (size_t i = 0; i < abb->mcu.flash_size(); i+=2) {
			while (ind < seeds.size() && i > seeds[ind])
				ind++;

			if (abb->mcu.analytics_getPCHeat((MCU::pc_t)(i/2)) && (ind >= seeds.size() || seeds[ind] != i)) {
				seeds.insert(seeds.begin() + ind, (uint32_t)i);
			}
		}
	}

	return abb->mcu.disassembler_disassembleProg(
		srcLines.size() ? &srcLines : nullptr,
		&funcSymbs, &dataSymbs, &seeds
	);
}
void ABB::DebuggerBackend::generateSrc() {
	utils::AsmViewer& srcMix = addSrcMix(true);
	
	srcMix.title = ADD_ICON(ICON_FA_FILE_CODE) "Generated";
	std::string disasmed = disasmProg();
	srcMix.loadSrc(disasmed.c_str(), disasmed.c_str() + disasmed.size());
}

void ABB::DebuggerBackend::addSrc(const char* str, const char* title) {
	utils::AsmViewer& srcMix = addSrcMix(false);

	srcMix.title = title ? title : std::string(ADD_ICON(ICON_FA_FILE_CODE) "Loaded #") + std::to_string(loadedSrcFileInc++);
	srcMix.loadSrc(str);
}
bool ABB::DebuggerBackend::addSrcFile(const char* path) {
	std::string content;
	try {
		content = StringUtils::loadFileIntoString(path);
	}
	catch (const std::runtime_error&) {
		return false;
	}

	addSrc(content.c_str(), (std::string(ADD_ICON(ICON_FA_FILE_CODE)) + StringUtils::getFileName(path)).c_str());

	return true;
}

size_t ABB::DebuggerBackend::SrcMix::sizeBytes() const {
	size_t sum = 0; 

	sum += viewer.sizeBytes();
	sum += sizeof(selfDisassembled);

	return sum;
}

size_t ABB::DebuggerBackend::sizeBytes() const {
	size_t sum = 0; 

	sum += sizeof(abb);

	sum += sizeof(winFocused);
	sum += sizeof(showGPRegs);

	sum += sizeof(loadedSrcFileInc);
	sum += loadSrcMix.sizeBytes();

	sum += DataUtils::approxSizeOf(winName);
	sum += sizeof(open);

	sum += DataUtils::approxSizeOf(srcMixs);
	sum += sizeof(selectedSrcMix);
	sum += sizeof(stepFrame);
	sum += sizeof(haltOnReset);

	return sum;
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