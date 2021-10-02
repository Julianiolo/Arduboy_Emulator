#include "ArduboyBackend.h"

#include "imgui.h"
#include "imgui_internal.h"
#include "../rlImGui/rlImGui.h"

#include <iostream>

ABB::ArduboyBackend::ArduboyBackend(const char* n) 
: name(n), displayBackend(&ab.display), debuggerBackend(&ab, (name + " - Debugger").c_str(), &symbolTable), logBackend((name + " - Log").c_str()),
	mcuInfoBackend(&ab, (name + " - Mcu Info").c_str(), &symbolTable), analyticsBackend(&ab, name.c_str(), &symbolTable)
{
	ab.mcu.debugger.debugOutputMode = A32u4::Debugger::OutputMode_Passthrough;
	ab.setLogCallBSimple(LogBackend::log);

	ab.execFlags |= A32u4::ATmega32u4::ExecFlags_Debug | A32u4::ATmega32u4::ExecFlags_Analyse;
}

void ABB::ArduboyBackend::update() {
	ab.buttonState = 0;
	ab.buttonState |= IsKeyDown(KEY_LEFT) << Arduboy::Button_Left_Bit;
	ab.buttonState |= IsKeyDown(KEY_RIGHT) << Arduboy::Button_Right_Bit;
	ab.buttonState |= IsKeyDown(KEY_UP) << Arduboy::Button_Up_Bit;
	ab.buttonState |= IsKeyDown(KEY_DOWN) << Arduboy::Button_Down_Bit;
	ab.buttonState |= IsKeyDown(KEY_A) << Arduboy::Button_A_Bit;
	ab.buttonState |= IsKeyDown(KEY_B) << Arduboy::Button_B_Bit;

	uint64_t lastCycs = ab.mcu.cpu.getTotalCycles();
	ab.newFrame();
	uint64_t stopAmt = 42500000;
	//if(ab.mcu.cpu.getTotalCycles() > stopAmt && lastCycs <= stopAmt)
	//	ab.mcu.debugger.halt();

	displayBackend.update();
	analyticsBackend.update();
}

void ABB::ArduboyBackend::draw() {
	ab.activateLog();
	logBackend.activate();

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
		displayBackend.draw(size);
	}
	ImGui::End();
	
	debuggerBackend.draw();

	logBackend.draw();

	mcuInfoBackend.draw();

	analyticsBackend.draw();
}