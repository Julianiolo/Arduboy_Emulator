#include "ArduboyBackend.h"

#include "imgui.h"
#include "imgui_internal.h"
#include "../rlImGui/rlImGui.h"

#include <iostream>

ABB::ArduboyBackend::ArduboyBackend(const char* n) 
: name(n), devWinName(std::string(n) + "devtools"), displayBackend(&ab.display), debuggerBackend(this, (name + " - Debugger").c_str(), &open, &symbolTable), logBackend((name + " - Log").c_str(), &open),
	mcuInfoBackend(&ab, (name + " - Mcu Info").c_str(), &open, &symbolTable), analyticsBackend(&ab, name.c_str(), &open, &symbolTable)
{
	ab.mcu.debugger.debugOutputMode = A32u4::Debugger::OutputMode_Passthrough;
	ab.setLogCallBSimple(LogBackend::log);

	ab.execFlags |= A32u4::ATmega32u4::ExecFlags_Debug | A32u4::ATmega32u4::ExecFlags_Analyse;

	//ImGui::DockBuilderSplitNode(ImGuiID(ImGui::GetID(devWinName.c_str())), ImGuiDir_Left, 0.5, );
}

bool ABB::ArduboyBackend::isWinFocused() {
	return displayBackend.isWinFocused() || debuggerBackend.isWinFocused() || logBackend.isWinFocused() || mcuInfoBackend.isWinFocused() || analyticsBackend.isWinFocused();
}

void ABB::ArduboyBackend::update() {
	ab.buttonState = 0;
	if (isWinFocused()) {
		ab.buttonState |= IsKeyDown(KEY_LEFT)  << Arduboy::Button_Left_Bit;
		ab.buttonState |= IsKeyDown(KEY_RIGHT) << Arduboy::Button_Right_Bit;
		ab.buttonState |= IsKeyDown(KEY_UP)    << Arduboy::Button_Up_Bit;
		ab.buttonState |= IsKeyDown(KEY_DOWN)  << Arduboy::Button_Down_Bit;
		ab.buttonState |= IsKeyDown(KEY_A)     << Arduboy::Button_A_Bit;
		ab.buttonState |= IsKeyDown(KEY_B)     << Arduboy::Button_B_Bit;
	}
	else {
		ab.buttonState = Arduboy::Button_None;
	}

	uint64_t lastCycs = ab.mcu.cpu.getTotalCycles();
	ab.newFrame();
	//uint64_t stopAmt = 42500000;
	//if(ab.mcu.cpu.getTotalCycles() > stopAmt && lastCycs <= stopAmt)
	//	ab.mcu.debugger.halt();

	displayBackend.update();
	analyticsBackend.update();
}

void ABB::ArduboyBackend::draw() {
	ab.activateLog();
	logBackend.activate();

	update();

	drawExecMenu();

	if (devToolsOpen) {
		debuggerBackend.draw();
		logBackend.draw();
		mcuInfoBackend.draw();
		analyticsBackend.draw();
	}

	

	bool isWinOpen = false;
	if (ImGui::Begin(name.c_str(), &open, ImGuiWindowFlags_MenuBar)) {
		isWinOpen = true;

		if (ImGui::BeginMenuBar()) {
			if (ImGui::BeginMenu("Menu")) {
				if(ImGui::MenuItem("Exec Menu", NULL, &execMenuOpen)) {}
				if (ImGui::MenuItem("Dev Tools", NULL, &devToolsOpen)) {}
				ImGui::EndMenu();
			}
			if (ImGui::BeginMenu("Display")) {
				if (ImGui::BeginMenu("Rotate")) {
					
					ImGui::EndMenu();
				}
				ImGui::EndMenu();
			}
			ImGui::EndMenuBar();
		}

		ImVec2 contentSize = ImGui::GetContentRegionAvail();
		//contentSize.y = ImMax(contentSize.y - devToolSpace, 0.0f);
		constexpr float ratio = (float)AB::Display::WIDTH / (float)AB::Display::HEIGHT;
		ImVec2 size;
		ImVec2 pos;
		if (contentSize.x < contentSize.y * ratio) {
			size = { contentSize.x, contentSize.x / ratio };
			pos = { 0, (contentSize.y - size.y) / 2 };
		}
		else {
			size = { contentSize.y * ratio,contentSize.y };
			pos = { (contentSize.x - size.x) / 2, 0 };
		}
		ImVec2 cursor = ImGui::GetCursorPos();
		ImGui::SetCursorPos({ cursor.x + pos.x, cursor.y + pos.y });
		displayBackend.draw(size);
	}
	ImGui::End();
	
	if (firstFrame) {
		buildDefaultLayout();
	}

	if (firstFrame)
		firstFrame = false;
}

void ABB::ArduboyBackend::resetMachine() {
	ab.reset();
	analyticsBackend.reset();
}

// build default window dock layout
void ABB::ArduboyBackend::buildDefaultLayout() {
	ImGuiWindow*   debugWin = ImGui::FindWindowByName(debuggerBackend.winName.c_str());

	ImGuiID node = ImGui::DockBuilderAddNode();
	ImGui::DockBuilderSetNodePos(node, debugWin->Pos);
	ImGui::DockBuilderSetNodeSize(node, {debugWin->Size.x*2, debugWin->Size.y}); // resize node bc if not window will shrink on split docking

	ImGuiID l, r;
	ImGui::DockBuilderSplitNode(node, ImGuiDir_Left, 0.5, &l, &r);
	ImGui::DockBuilderDockWindow(debuggerBackend.winName.c_str(), l);
	

	ImGuiID l2, r2;
	ImGui::DockBuilderSplitNode(r, ImGuiDir_Up, 0.5, &l2, &r2);

	ImGui::DockBuilderDockWindow(   mcuInfoBackend.winName.c_str(), l2);
	ImGui::DockBuilderDockWindow( analyticsBackend.winName.c_str(), r2);
	ImGui::DockBuilderDockWindow(       logBackend.winName.c_str(), r2);
}

void ABB::ArduboyBackend::drawExecMenu() {
	if (!execMenuOpen)
		return;

	if (ImGui::Begin((name + " Exec Menu").c_str())) {
		bool debug = (ab.execFlags & A32u4::ATmega32u4::ExecFlags_Debug) != 0;
		if (ImGui::Checkbox("Debug", &debug))
			ab.execFlags ^= A32u4::ATmega32u4::ExecFlags_Debug;

		bool analyze = (ab.execFlags & A32u4::ATmega32u4::ExecFlags_Analyse) != 0;
		if (ImGui::Checkbox("Analyze", &analyze))
			ab.execFlags ^= A32u4::ATmega32u4::ExecFlags_Analyse;
	}
	ImGui::End();
}