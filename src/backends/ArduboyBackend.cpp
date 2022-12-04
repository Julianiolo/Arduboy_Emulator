#include "ArduboyBackend.h"

#include "imgui.h"
#include "imgui_internal.h"
#include "../rlImGui/rlImGui.h"
#include "../utils/icons.h"
#include "../ArduEmu.h"

ABB::ArduboyBackend::ArduboyBackend(const char* n, size_t id) 
: name(n), devWinName(std::string(n) + "devtools"), 
	displayBackend  (        (name + " - " ADD_ICON(ICON_FA_TV)          "Display"  ).c_str(), &ab.display), 
	debuggerBackend (this,   (name + " - " ADD_ICON(ICON_FA_BUG)         "Debugger" ).c_str(), &devToolsOpen),
	logBackend      (        (name + " - " ADD_ICON(ICON_FA_STREAM)      "Log"      ).c_str(), &devToolsOpen),
	mcuInfoBackend  (&ab,    (name + " - " ADD_ICON(ICON_FA_INFO_CIRCLE) "Mcu Info" ).c_str(), &devToolsOpen),
	analyticsBackend(&ab,    (name + " - " ADD_ICON(ICON_FA_CHART_BAR)   "Analytics").c_str(), &devToolsOpen),
	compilerBackend (this,   (name + " - " ADD_ICON(ICON_FA_HAMMER)      "Compile"  ).c_str(), &devToolsOpen),
	symbolBackend   (&ab.mcu,(name + " - " ADD_ICON(ICON_FA_LIST)        "Symbols"  ).c_str(), &devToolsOpen),
	id(id)
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
	if(!ab.mcu.flash.isProgramLoaded())
		return;

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

	//uint64_t lastCycs = ab.mcu.cpu.getTotalCycles();
	ab.newFrame();
	//uint64_t stopAmt = 42500000;
	//if(ab.mcu.cpu.getTotalCycles() > stopAmt && lastCycs <= stopAmt)
	//	ab.mcu.debugger.halt();

	displayBackend.update();
	analyticsBackend.update();
}

void ABB::ArduboyBackend::draw() {
	if (!open)
		return;

	ab.activateLog();
	logBackend.activate();

	update();

	drawExecMenu();

	if (devToolsOpen) {
		debuggerBackend.draw();
		logBackend.draw();
		mcuInfoBackend.draw();
		analyticsBackend.draw();
		compilerBackend.draw();
		symbolBackend.draw();
	}

	displayBackend.drawSetColorWin();

	
	ImGui::SetNextWindowSize({ 800,450 }, ImGuiCond_FirstUseEver);
	ImGui::PushStyleVar(ImGuiStyleVar_WindowPadding, { 4,4 });
	ImGui::PushStyleVar(ImGuiStyleVar_ItemSpacing, { 4,4 });

	char nameBuf[512];
	snprintf(nameBuf, sizeof(nameBuf), "%s %s%s%s###%s", 
		name.c_str(),
		isWinFocused() ? "[Active]" : "",
		ab.mcu.debugger.isHalted() ? "[HALTED]" : "",
		ab.mcu.flash.isProgramLoaded() ? "" : " - NO PROGRAM LOADED!", 
		
		name.c_str()
	);
	if (ImGui::Begin(nameBuf, &open_try, ImGuiWindowFlags_MenuBar)) {
		if (ImGui::BeginMenuBar()) {
			if (ImGui::BeginMenu(ADD_ICON(ICON_FA_BARS) "Menu")) {
				if (!ab.mcu.flash.isProgramLoaded()) {
					if (ImGui::MenuItem(ADD_ICON(ICON_FA_FILE) "Load Program")) {
						ArduEmu::openLoadProgramDialog(id);
					}
				}
					

				if(ImGui::MenuItem(ADD_ICON(ICON_FA_WRENCH) "Exec Menu", NULL, &execMenuOpen)) {}
				if (ImGui::MenuItem(ADD_ICON(ICON_FA_TOOLBOX) "Dev Tools", NULL, &devToolsOpen)) {}
				ImGui::EndMenu();
			}
			if (ImGui::BeginMenu(ADD_ICON(ICON_FA_TV) "Display")) {
				if (ImGui::BeginMenu("Rotate Display")) {
					if (ImGui::Button(ICON_OR_TEXT(ICON_FA_UNDO,"CCW"))) {
						displayBackend.rotateCCW();
					}
					ImGui::SameLine();
					if (ImGui::Button(ICON_OR_TEXT(ICON_FA_REDO,"CW"))) {
						displayBackend.rotateCW();
					}
					
					ImGui::EndMenu();
				}
				if (ImGui::MenuItem("Set Colors")) {
					displayBackend.openSetColorWin();
				}
				ImGui::EndMenu();
			}
			ImGui::EndMenuBar();
		}

		ImVec2 initialPos = ImGui::GetCursorScreenPos();

		ImVec2 contentSize = ImGui::GetContentRegionAvail();
		//contentSize.y = ImMax(contentSize.y - devToolSpace, 0.0f);

		bool loaded = ab.mcu.flash.isProgramLoaded();

		if (!loaded) ImGui::BeginDisabled();

		displayBackend.draw(contentSize);

		if (!loaded) ImGui::EndDisabled();

		if (!loaded) {
			ImGuiStyle& style = ImGui::GetStyle();
			ImDrawList* drawlist = ImGui::GetWindowDrawList();
			/*
			ImGui::GetWindowDrawList()->AddRectFilled(
				initialPos - style.WindowPadding, initialPos + contentSize + style.WindowPadding,
				ImColor(ImGui::GetStyleColorVec4(ImGuiCol_ModalWindowDimBg))
			);
			*/

			constexpr float h = 50;
			float off = contentSize.y / 2 - h / 2;
			drawlist->AddRectFilled(
				initialPos + ImVec2{ 0,off }, initialPos + contentSize + ImVec2{ 0,-off },
				ImColor(ImGui::GetStyleColorVec4(ImGuiCol_ModalWindowDimBg))
			);

			const char* text = "No Program Loaded!";
			const ImVec2 textSize = ImGui::CalcTextSize(text);
			drawlist->AddRectFilled(
				initialPos + (contentSize/2) - (textSize/2) - style.FramePadding, initialPos + (contentSize/2) + (textSize/2) + style.FramePadding,
				ImColor(ImGui::GetStyleColorVec4(ImGuiCol_WindowBg))
			);
			drawlist->AddText(
				initialPos + (contentSize/2) - (textSize/2),
				ImColor(ImGui::GetStyleColorVec4(ImGuiCol_Text)),
				text
			);
		}
	}
	ImGui::End();
	ImGui::PopStyleVar();
	ImGui::PopStyleVar();
	
	if (firstFrame) {
		buildDefaultLayout();
	}

	if (firstFrame)
		firstFrame = false;

	if (!open_try) {
		tryClose();
	}
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
	ImVec2 size;
	//size = { debugWin->Size.x * 2, debugWin->Size.y }; // resize node bc if not, window will shrink on split docking
	size = {1000,700};
	ImGui::DockBuilderSetNodeSize(node, size);

	ImGuiID l, r;
	ImGui::DockBuilderSplitNode(node, ImGuiDir_Left, 0.5, &l, &r);
	ImGui::DockBuilderDockWindow(debuggerBackend.winName.c_str(), l);
	

	ImGuiID l2, r2;
	ImGui::DockBuilderSplitNode(r, ImGuiDir_Up, 0.5, &l2, &r2);

	ImGui::DockBuilderDockWindow(   mcuInfoBackend.winName.c_str(), l2);
	ImGui::DockBuilderDockWindow(    symbolBackend.winName.c_str(), l2);

	ImGui::DockBuilderDockWindow( analyticsBackend.winName.c_str(), r2);
	ImGui::DockBuilderDockWindow(  compilerBackend.winName.c_str(), r2);
	ImGui::DockBuilderDockWindow(       logBackend.winName.c_str(), r2);
}

void ABB::ArduboyBackend::drawExecMenu() {
	if (!execMenuOpen)
		return;

	if (ImGui::Begin((name + " Exec Menu").c_str(), &execMenuOpen)) {
		bool debug = (ab.execFlags & A32u4::ATmega32u4::ExecFlags_Debug) != 0;
		if (ImGui::Checkbox("Debug", &debug))
			ab.execFlags ^= A32u4::ATmega32u4::ExecFlags_Debug;

		bool analyze = (ab.execFlags & A32u4::ATmega32u4::ExecFlags_Analyse) != 0;
		if (ImGui::Checkbox("Analyze", &analyze))
			ab.execFlags ^= A32u4::ATmega32u4::ExecFlags_Analyse;
	}
	ImGui::End();
}

void ABB::ArduboyBackend::tryClose() {
	open = false;
}
bool ABB::ArduboyBackend::_wantsToBeClosed() {
	return !open;
}

bool ABB::ArduboyBackend::load(const uint8_t* data, size_t dataLen){
	bool isElf = false;
	if(dataLen >= 4 && std::memcmp(data, "\x7f" "ELF", 4) == 0){ // check for magic number
		isElf = true;
	}

	bool success = false;
	if(isElf){
		success = loadFromELF(data, dataLen);
	}else{
		success = ab.loadFromHexString((const char*)data);
	}

	if(!success){
		LogBackend::logf(LogBackend::LogLevel_Error, "Couldn't load program from data");
		return false;
	}

	return true;
}
bool ABB::ArduboyBackend::loadFile(const char* path) {
	const char* ext = StringUtils::getFileExtension(path);

	if (std::strcmp(ext, "hex") == 0) {
		ab.loadFromHexFile(path);
	}
	else if (std::strcmp(ext, "elf") == 0) {
		loadFromELFFile(path);
	}
	else {
		LogBackend::logf(LogBackend::LogLevel_Error, "Cant load file with extension %s! Trying to load: %s", ext, path);
		return false;
	}
	return true;
}

bool ABB::ArduboyBackend::loadFromELF(const uint8_t* data, size_t dataLen) {
	elf = A32u4::ELF::parseELFFile(data, dataLen);

	ab.mcu.symbolTable.loadFromELF(elf);

	size_t textInd = elf.getIndOfSectionWithName(".text");
	size_t dataInd = elf.getIndOfSectionWithName(".data");

	if (textInd != (size_t)-1 && dataInd != (size_t)-1) {
		size_t len = elf.sectionContents[textInd].second + elf.sectionContents[dataInd].second;
		uint8_t* romData = new uint8_t[len];
		memcpy(romData, &elf.data[0] + elf.sectionContents[textInd].first, elf.sectionContents[textInd].second);
		memcpy(romData + elf.sectionContents[textInd].second, &elf.data[0] + elf.sectionContents[dataInd].first, elf.sectionContents[dataInd].second);

		ab.mcu.flash.loadFromMemory(romData, len);

		delete[] romData;

		LogBackend::log(LogBackend::LogLevel_DebugOutput, "Successfully loaded Flash content from elf!");
		return true;
	}
	else {
		LogBackend::logf(LogBackend::LogLevel_Error, "Couldn't find required sections for execution: %s %s", textInd == (size_t)-1 ? ".text" : "", dataInd == (size_t)-1 ? ".data" : "");
		return false;
	}
}

bool ABB::ArduboyBackend::loadFromELFFile(const char* path) {
	bool success = true;
	std::vector<uint8_t> content = StringUtils::loadFileIntoByteArray(path, &success);
	if (!success) {
		LogBackend::logf(LogBackend::LogLevel_Error, "Couldn't load ELF file: %s", path);
		return false;
	}
		
	return loadFromELF(&content[0], content.size());
}