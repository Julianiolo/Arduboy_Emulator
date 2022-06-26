#include "DebuggerBackend.h"

#define IMGUI_DEFINE_MATH_OPERATORS 1
#include "imgui.h"
#include "imgui_internal.h"
#include "../Extensions/imguiExt.h"

#include "utils/StringUtils.h"

#include "ArduboyBackend.h"

#include "components/Disassembler.h"

#include <inttypes.h> // for PRIx64 etc.

ABB::DebuggerBackend::DebuggerBackend(ArduboyBackend* abb, const char* winName, bool* open, const utils::SymbolTable* symbolTable) 
	: abb(abb), open(open), winName(winName), symbolTable(symbolTable){
	srcMix.setSymbolTable(symbolTable);
	srcMix.setMcu(&abb->ab.mcu);
}

void ABB::DebuggerBackend::drawControls(){
	if (stepFrame) {
		stepFrame = false;
		abb->ab.mcu.debugger.halt();
	}

	bool isHalted = abb->ab.mcu.debugger.isHalted();

	if (!isHalted) ImGui::BeginDisabled();
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
	if (!isHalted) ImGui::EndDisabled();

	ImGui::SameLine();
	if (isHalted) ImGui::BeginDisabled();
		if (ImGui::Button("Force Stop")) {
			abb->ab.mcu.debugger.halt();
		}
	if (isHalted) ImGui::EndDisabled();

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
		ImGui::BeginDisabled();

	if(ImGui::Button("Jump to PC")) {
		if(!srcMix.file.isEmpty()) {
			size_t line = srcMix.file.getLineIndFromAddr(abb->ab.mcu.cpu.getPCAddr());
			srcMix.scrollToLine(line);
		}
	}

	if (!isHalted)
		ImGui::EndDisabled();

	ImGui::SameLine();
	double totalSeconds = (double)abb->ab.mcu.cpu.getTotalCycles() / A32u4::CPU::ClockFreq;
	ImGui::Text("PC: %04x => Addr: %04x, totalcycs: %" PRId64 " (%.6fs)", abb->ab.mcu.cpu.getPC(), abb->ab.mcu.cpu.getPCAddr(), abb->ab.mcu.cpu.getTotalCycles(), totalSeconds);
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
					const utils::SymbolTable::Symbol* symbol = symbolTable->drawAddrWithSymbol(Addr);

					if (symbol && ImGui::IsItemHovered()) {
						ImGui::BeginTooltip();
						symbol->draw();
						ImGui::EndTooltip();
					}
					if (ImGui::IsItemClicked()) {
						size_t line = srcMix.file.getLineIndFromAddr(Addr);
						if(line != (size_t)-1)
							srcMix.scrollToLine(line, true);
					}
				}
				else{
					uint16_t Addr = abb->ab.mcu.debugger.getPCAt(i)*2;

					ImGui::Text("%04x",Addr);

					if (ImGui::IsItemClicked()) {
						size_t line = srcMix.file.getLineIndFromAddr(Addr);
						if(line != (size_t)-1)
							srcMix.scrollToLine(line, true);
					}
				}
					

				ImGui::TableNextColumn();
					
					
				ImGui::TextUnformatted(": from ");
				ImGui::SameLine();
					
				if(symbolTable->hasSymbols()){
					uint16_t fromAddr = abb->ab.mcu.debugger.getFromPCAt(i) * 2;
					const utils::SymbolTable::Symbol* fromSymbol = symbolTable->drawAddrWithSymbol(fromAddr);

					if (fromSymbol && ImGui::IsItemHovered()) {
						ImGui::BeginTooltip();
						fromSymbol->draw();
						ImGui::EndTooltip();
					}
					if (ImGui::IsItemClicked()) {
						size_t line = srcMix.file.getLineIndFromAddr(fromAddr);
						if(line != (size_t)-1)
							srcMix.scrollToLine(line, true);
					}
				}else{
					uint16_t fromAddr = abb->ab.mcu.debugger.getFromPCAt(i) * 2;

					ImGui::Text("%04x",fromAddr);

					if (ImGui::IsItemClicked()) {
						size_t line = srcMix.file.getLineIndFromAddr(fromAddr);
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
				StringUtils::uIntToNumBaseBuf(1 << size, 1, buf);
				if (ImGui::BeginCombo("Size", buf)) {
					for (int i = 0; i < 4; i++) {
						StringUtils::uIntToNumBaseBuf(1 << i, 1, buf);
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
		
		if(!srcMix.file.isEmpty()){
			srcMix.drawFile(winName, abb->ab.mcu.cpu.getPCAddr());
		}
		else{
			ImGui::TextUnformatted("Couldnt generate disassembly, load or generate?");
			if(ImGui::Button("Load")){

			}

			bool programLoaded = abb->ab.mcu.flash.isProgramLoaded();
			if (!programLoaded)
				ImGui::BeginDisabled();

			if(ImGui::Button("Generate")){
				srcMix.generateDisasmFile(&abb->ab.mcu.flash);
			}

			if (!programLoaded) {
				if (ImGui::IsItemHovered(ImGuiHoveredFlags_AllowWhenDisabled)) {
					ImGui::SetTooltip("Cannot generate assembly because there is no program present in flash memory!");
				}
				ImGui::EndDisabled();
			}
		}
	}
	else {
		winFocused = false;
	}
	ImGui::End();
}

const char* ABB::DebuggerBackend::getWinName() const {
	return winName.c_str();
}
bool ABB::DebuggerBackend::isWinFocused() const {
	return winFocused;
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