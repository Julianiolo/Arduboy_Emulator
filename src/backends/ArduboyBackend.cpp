#include "ArduboyBackend.h"

#include "imgui.h"
#include "imgui_internal.h"
#include "../rlImGui/rlImGui.h"

ABB::ArduboyBackend::ArduboyBackend(const char* n) : displayBackend(&ab.display) {
	name = n;
	debWinName = name + " - Debugger";
	ab.mcu.debugger.debugOutputMode = A32u4::Debugger::OutputMode_Passthrough;
}

void ABB::ArduboyBackend::update() {
	ab.buttonState = 0;
	ab.buttonState |= IsKeyDown(KEY_LEFT) << Arduboy::Button_Left_Bit;
	ab.buttonState |= IsKeyDown(KEY_RIGHT) << Arduboy::Button_Right_Bit;
	ab.buttonState |= IsKeyDown(KEY_UP) << Arduboy::Button_Up_Bit;
	ab.buttonState |= IsKeyDown(KEY_DOWN) << Arduboy::Button_Down_Bit;
	ab.buttonState |= IsKeyDown(KEY_A) << Arduboy::Button_A_Bit;
	ab.buttonState |= IsKeyDown(KEY_B) << Arduboy::Button_B_Bit;

	ab.newFrame();

	displayBackend.update();
}

void ABB::ArduboyBackend::draw() {
	update();

	if (ImGui::Begin(name.c_str())) {
		ImVec2 contentSize = ImGui::GetContentRegionAvail();
		constexpr float ratio = (float)AB::Display::WIDTH / (float)AB::Display::HEIGHT;
		ImVec2 size;
		ImVec2 pos;
		if (contentSize.x < contentSize.y * ratio) {
			size = { contentSize.x, contentSize.x / ratio };
			pos = { 0,(contentSize.y - size.y) / 2 };
		}
		else {
			size = { contentSize.y * ratio,contentSize.y };
			pos = { (contentSize.x - size.x) / 2,0 };
		}
		ImVec2 cursor = ImGui::GetCursorPos();
		ImGui::SetCursorPos({ cursor.x + pos.x, cursor.y + pos.y });
		RLImGuiImageSize(&displayBackend.getTex(),size.x,size.y);
	}
	ImGui::End();

	
	if (ImGui::Begin(debWinName.c_str())) {
		bool isHalted = ab.mcu.debugger.isHalted();
		if (!isHalted)
			ImGui::PushDisabled();

		if (ImGui::Button("Step")) {
			ab.mcu.debugger.step();
		}
		ImGui::SameLine();
		if (ImGui::Button("Continue")) {
			ab.mcu.debugger.continue_();
		}

		if (!isHalted)
			ImGui::PopDisabled();

		if (ImGui::Button("Reset")) {
			ab.reset();
		}


	}
	ImGui::End();
}