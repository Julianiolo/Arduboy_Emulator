#include "ArduboyBackend.h"

#include "imgui.h"
#include "rlImGui/rlImGui.h"

ABB::ArduboyBackend::ArduboyBackend() : displayBackend(&ab.display) {

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

	if (ImGui::Begin("lul")) {
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
}