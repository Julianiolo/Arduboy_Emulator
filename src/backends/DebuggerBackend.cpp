#include "DebuggerBackend.h"

#include "imgui.h"
#include "imgui_internal.h"
#include "../Extensions/imguiExt.h"

#include "../utils/stringUtils.h"

ABB::DebuggerBackend::DebuggerBackend(Arduboy* ab, const char* winName, const utils::SymbolTable* symbolTable) : ab(ab), symbolTable(symbolTable), winName(winName){
	srcMix.setSymbolTable(symbolTable);
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

	if (!isHalted)
		ImGui::PopDisabled();

	ImGui::SameLine();
	if (ImGui::Button("Reset")) {
		ab->reset();
	}

	// ## Line 2 ##

	if (!isHalted)
		ImGui::PushDisabled();

	if(ImGui::Button("Jump to PC")) {
		if(!srcMix.isFileEmpty()) {
			size_t line = srcMix.getLineIndFromAddr(ab->mcu.cpu.getPCAddr());
			srcMix.scrollToLine(line);
		}
	}

	if (!isHalted)
		ImGui::PopDisabled();
}

void ABB::DebuggerBackend::drawDebugStack() {
	if (ImGui::BeginChild("DebugStack", { 600,80 }, true)) {
		int32_t stackSize = ab->mcu.debugger.getAddressStackPointer();
		if (ImGui::BeginTable("DebugStackTable", 2)) {
			for (int32_t i = stackSize-1; i >= 0; i--) {
				ImGui::TableNextRow();
				ImGui::TableNextColumn();
				
				{
					uint16_t Addr = ab->mcu.debugger.getAddresAt(i)*2;
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
					

				ImGui::TableNextColumn();
					
					
				ImGui::TextUnformatted(" : from");
				ImGui::SameLine();
					
				{
					uint16_t fromAddr = ab->mcu.debugger.getFromAddresAt(i) * 2;
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
				}
					
			}
			ImGui::EndTable();
		}
		
	}
	ImGui::EndChild();
}

void ABB::DebuggerBackend::draw() {
	if (ImGui::Begin(winName.c_str())) {
		drawControls();
		if (ImGui::TreeNode("Debug Stack")) {
			drawDebugStack();
			ImGui::TreePop();
		}
		
		srcMix.drawFile(winName, ab->mcu.cpu.getPCAddr());
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