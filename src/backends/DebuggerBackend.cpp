#include "DebuggerBackend.h"

#include "imgui.h"
#include "imgui_internal.h"
#include "../Extensions/imguiExt.h"


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
			size_t line = srcMix.getLineIndFromPC(ab->mcu.cpu.getPC());
			srcMix.scrollToLine(line);
		}
	}

	if (!isHalted)
		ImGui::PopDisabled();
}

void ABB::DebuggerBackend::draw() {
	if (ImGui::Begin(winName.c_str())) {
		drawControls();
		srcMix.drawFile(winName, ab->mcu.cpu.getPC());
	}
	ImGui::End();
}

