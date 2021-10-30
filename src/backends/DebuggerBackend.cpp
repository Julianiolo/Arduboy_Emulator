#include "DebuggerBackend.h"

#include "imgui.h"
#include "imgui_internal.h"
#include "../Extensions/imguiExt.h"

#include "utils/StringUtils.h"

#include "ArduboyBackend.h"

#include "components/Disassembler.h"

ABB::DebuggerBackend::DebuggerBackend(ArduboyBackend* abb, const char* winName, const utils::SymbolTable* symbolTable) : abb(abb), symbolTable(symbolTable), winName(winName){
	srcMix.setSymbolTable(symbolTable);
	srcMix.setMcu(&abb->ab.mcu);
}

void ABB::DebuggerBackend::drawControls(){
	if (stepFrame) {
		stepFrame = false;
		abb->ab.mcu.debugger.halt();
	}

	bool isHalted = abb->ab.mcu.debugger.isHalted();

	if (!isHalted) ImGui::PushDisabled();
		if (ImGui::Button("Step")) {
			abb->ab.mcu.debugger.step();
		}
		ImGui::SameLine();
		if (ImGui::Button("Step Frame")) {
			stepFrame = true;
			abb->ab.mcu.debugger.continue_();
		}
		ImGui::SameLine();
		if (ImGui::Button("Continue")) {
			abb->ab.mcu.debugger.continue_();
		}
	if (!isHalted) ImGui::PopDisabled();

	ImGui::SameLine();
	if (isHalted) ImGui::PushDisabled();
		if (ImGui::Button("Force Stop")) {
			abb->ab.mcu.debugger.halt();
		}
	if (isHalted) ImGui::PopDisabled();

	ImGui::SameLine();
	if (ImGui::Button("Reset")) {
		abb->resetMachine();
		if(haltOnReset)
			abb->ab.mcu.debugger.halt();
	}
	ImGui::SameLine();
	ImGui::Checkbox("Halt on Reset", &haltOnReset);

	// ## Line 2 ##

	if (!isHalted)
		ImGui::PushDisabled();

	if(ImGui::Button("Jump to PC")) {
		if(!srcMix.isFileEmpty()) {
			size_t line = srcMix.getLineIndFromAddr(abb->ab.mcu.cpu.getPCAddr());
			srcMix.scrollToLine(line);
		}
	}

	if (!isHalted)
		ImGui::PopDisabled();

	ImGui::SameLine();
	ImGui::Text("PC: %04x => Addr: %04x, totalcycs: %s", abb->ab.mcu.cpu.getPC(), abb->ab.mcu.cpu.getPCAddr(), std::to_string(abb->ab.mcu.cpu.getTotalCycles()).c_str());
}

void ABB::DebuggerBackend::drawDebugStack() {
	if (ImGui::BeginChild("DebugStack", { 600,80 }, true)) {
		int32_t stackSize = abb->ab.mcu.debugger.getAddressStackPointer();
		ImGui::Text("Stack Size: %d", stackSize);
		if (ImGui::BeginTable("DebugStackTable", 2)) {
			for (int32_t i = stackSize-1; i >= 0; i--) {
				ImGui::TableNextRow();
				ImGui::TableNextColumn();
				
				if(symbolTable->hasSymbols()){
					uint16_t Addr = abb->ab.mcu.debugger.getAddresAt(i)*2;
					const utils::SymbolTable::Symbol* symbol = symbolTable->drawAddrWithSymbol(Addr);

					if (symbol && ImGui::IsItemHovered()) {
						ImGui::BeginTooltip();
						symbol->draw();
						ImGui::EndTooltip();
					}
					if (ImGui::IsItemClicked()) {
						size_t line = srcMix.getLineIndFromAddr(Addr);
						if(line != (size_t)-1)
							srcMix.scrollToLine(line, true);
					}
				}
				else{
					uint16_t Addr = abb->ab.mcu.debugger.getAddresAt(i)*2;

					ImGui::Text("%04x",Addr);

					if (ImGui::IsItemClicked()) {
						size_t line = srcMix.getLineIndFromAddr(Addr);
						if(line != (size_t)-1)
							srcMix.scrollToLine(line, true);
					}
				}
					

				ImGui::TableNextColumn();
					
					
				ImGui::TextUnformatted(": from ");
				ImGui::SameLine();
					
				if(symbolTable->hasSymbols()){
					uint16_t fromAddr = abb->ab.mcu.debugger.getFromAddresAt(i) * 2;
					const utils::SymbolTable::Symbol* fromSymbol = symbolTable->drawAddrWithSymbol(fromAddr);

					if (fromSymbol && ImGui::IsItemHovered()) {
						ImGui::BeginTooltip();
						fromSymbol->draw();
						ImGui::EndTooltip();
					}
					if (ImGui::IsItemClicked()) {
						size_t line = srcMix.getLineIndFromAddr(fromAddr);
						if(line != (size_t)-1)
							srcMix.scrollToLine(line, true);
					}
				}else{
					uint16_t fromAddr = abb->ab.mcu.debugger.getFromAddresAt(i) * 2;

					ImGui::Text("%04x",fromAddr);

					if (ImGui::IsItemClicked()) {
						size_t line = srcMix.getLineIndFromAddr(fromAddr);
						if(line != (size_t)-1)
							srcMix.scrollToLine(line, true);
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

void ABB::DebuggerBackend::draw() {
	if (ImGui::Begin(winName.c_str())) {
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
		
		if(!srcMix.isFileEmpty()){
			srcMix.drawFile(winName, abb->ab.mcu.cpu.getPCAddr());
		}
		else{
			ImGui::TextUnformatted("Couldnt generate disassembly, load or generate?");
			if(ImGui::Button("Load")){

			}
			if(ImGui::Button("Generate")){
				srcMix.generateDisasmFile(&abb->ab.mcu.flash);
			}
		}
	}
	ImGui::End();
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