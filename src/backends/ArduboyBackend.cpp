#include "ArduboyBackend.h"

#include "imgui.h"
#include "imgui_internal.h"
#include "../rlImGui/rlImGui.h"
#include "../utils/icons.h"

#include "../ArduEmu.h"

#include "../Extensions/imguiExt.h"

ABB::ArduboyBackend::ArduboyBackend(const char* n, size_t id) :
	name(n), devWinName(std::string(n) + "devtools"), 
	logBackend      (&ab,    (name + " - " ADD_ICON(ICON_FA_LIST)        "Log"      ).c_str(), &devToolsOpen),
	displayBackend  (        (name + " - " ADD_ICON(ICON_FA_TV)          "Display"  ).c_str(), &ab.display  ), 
	debuggerBackend (this,   (name + " - " ADD_ICON(ICON_FA_BUG)         "Debugger" ).c_str(), &devToolsOpen),
	mcuInfoBackend  (this,   (name + " - " ADD_ICON(ICON_FA_CIRCLE_INFO) "Mcu Info" ).c_str(), &devToolsOpen),
	analyticsBackend(&ab,    (name + " - " ADD_ICON(ICON_FA_CHART_BAR)   "Analytics").c_str(), &devToolsOpen),
	compilerBackend (this,   (name + " - " ADD_ICON(ICON_FA_HAMMER)      "Compile"  ).c_str(), &devToolsOpen),
	symbolBackend   (&ab.mcu,(name + " - " ADD_ICON(ICON_FA_LIST)        "Symbols"  ).c_str(), &devToolsOpen),
	id(id)
{
	ab.mcu.debugger.debugOutputMode = A32u4::Debugger::OutputMode_Passthrough;

	ab.execFlags |= A32u4::ATmega32u4::ExecFlags_Debug | A32u4::ATmega32u4::ExecFlags_Analyse;

	//ImGui::DockBuilderSplitNode(ImGuiID(ImGui::GetID(devWinName.c_str())), ImGuiDir_Left, 0.5, );
}

ABB::ArduboyBackend::ArduboyBackend(const ArduboyBackend& src):
ab(src.ab),
name(src.name), devWinName(src.devWinName),
logBackend(src.logBackend), displayBackend(src.displayBackend), debuggerBackend(src.debuggerBackend),
mcuInfoBackend(src.mcuInfoBackend), analyticsBackend(src.analyticsBackend), compilerBackend(src.compilerBackend), symbolBackend(src.symbolBackend),
elf(src.elf), id(src.id), fullScreen(src.fullScreen),
open(src.open), open_try(src.open_try), winFocused(src.winFocused),
devToolsOpen(src.devToolsOpen), firstFrame(src.firstFrame)
{
	setMcu();
}
ABB::ArduboyBackend& ABB::ArduboyBackend::operator=(const ArduboyBackend& src){
	ab = src.ab;
	name = src.name; devWinName = src.name;
	logBackend = src.logBackend; displayBackend = src.displayBackend; debuggerBackend = src.debuggerBackend;
	mcuInfoBackend = src.mcuInfoBackend; analyticsBackend = src.analyticsBackend; compilerBackend = src.compilerBackend;
	symbolBackend = src.symbolBackend;
	setMcu();

	elf = src.elf; id = src.id; fullScreen = src.fullScreen;
	open = src.open; open_try = src.open_try; winFocused = src.winFocused;
	devToolsOpen = src.devToolsOpen; firstFrame = src.firstFrame;
	return *this;
}

void ABB::ArduboyBackend::setMcu() {
	logBackend.ab = &ab;
	displayBackend.display = &ab.display;
	debuggerBackend.abb = this;
	mcuInfoBackend.abb = this;
	analyticsBackend.ab = &ab;
	compilerBackend.abb = this;
	symbolBackend.mcu = &ab.mcu;
}

bool ABB::ArduboyBackend::isWinFocused() {
	return winFocused || displayBackend.isWinFocused() || debuggerBackend.isWinFocused() || logBackend.isWinFocused() || mcuInfoBackend.isWinFocused() || analyticsBackend.isWinFocused();
}

void ABB::ArduboyBackend::enterFullscreen(){
	fullScreen = true;
}
void ABB::ArduboyBackend::exitFullscreen(){
	fullScreen = false;
}

void ABB::ArduboyBackend::update() {
	if(!ab.mcu.flash.isProgramLoaded())
		return;

	ab.buttonState = 0;
	if (isWinFocused()) {
		{
			constexpr size_t loop[] = {ArduEmu::Action_Arduboy_Up,ArduEmu::Action_Arduboy_Right,ArduEmu::Action_Arduboy_Down,ArduEmu::Action_Arduboy_Left};
			size_t rotInd = rotateControls ? displayBackend.getRotation() : 0;

			ab.buttonState |= ArduEmu::actionManager.isActionActive(loop[(rotInd+0)%4], ActionManager::ActivationState_Down) << Arduboy::Button_Up_Bit;    //IsKeyDown(KEY_UP)   
			ab.buttonState |= ArduEmu::actionManager.isActionActive(loop[(rotInd+1)%4], ActionManager::ActivationState_Down) << Arduboy::Button_Right_Bit; //IsKeyDown(KEY_RIGHT)
			ab.buttonState |= ArduEmu::actionManager.isActionActive(loop[(rotInd+2)%4], ActionManager::ActivationState_Down) << Arduboy::Button_Down_Bit;  //IsKeyDown(KEY_DOWN)
			ab.buttonState |= ArduEmu::actionManager.isActionActive(loop[(rotInd+3)%4], ActionManager::ActivationState_Down) << Arduboy::Button_Left_Bit;  //IsKeyDown(KEY_LEFT) 
		}
		 
		
		ab.buttonState |= ArduEmu::actionManager.isActionActive(ArduEmu::Action_Arduboy_A,     ActionManager::ActivationState_Down) << Arduboy::Button_A_Bit;     //IsKeyDown(KEY_A)    
		ab.buttonState |= ArduEmu::actionManager.isActionActive(ArduEmu::Action_Arduboy_B,     ActionManager::ActivationState_Down) << Arduboy::Button_B_Bit;     //IsKeyDown(KEY_B)    
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

	ab.mcu.activateLog();

	update();

	if(ArduEmu::actionManager.isActionActive(ArduEmu::Action_Add_State_Copy, ActionManager::ActivationState_Pressed))
		mcuInfoBackend.addState(ab);

	if (devToolsOpen) {
		debuggerBackend.draw();
		logBackend.draw();
		mcuInfoBackend.draw();
		analyticsBackend.draw();
		compilerBackend.draw();
		symbolBackend.draw();
	}

	displayBackend.drawSetColorWin();

	
	if(!fullScreen){
		ImGui::SetNextWindowSize({ 800,450 }, ImGuiCond_FirstUseEver);
		ImGui::PushStyleVar(ImGuiStyleVar_WindowPadding, { 4,4 });
		ImGui::PushStyleVar(ImGuiStyleVar_ItemSpacing, { 4,4 });

		char nameBuf[512];
		{
			char subBuf[128];
			subBuf[0] = 0;
			if(ab.emulationSpeed != 1) {
				snprintf(subBuf, sizeof(subBuf), "[%.2f]",ab.emulationSpeed);
			}
			snprintf(nameBuf, sizeof(nameBuf), "%s %s%s%s%s###%s", 
				name.c_str(),
				subBuf,
				isWinFocused() ? "[Active]" : "",
				ab.mcu.debugger.isHalted() ? "[HALTED]" : "",
				ab.mcu.flash.isProgramLoaded() ? "" : " - NO PROGRAM LOADED!", 
				
				name.c_str()
			);
		}
		

		if (ImGui::Begin(nameBuf, &open_try, ImGuiWindowFlags_MenuBar)) {
			winFocused = ImGui::IsWindowFocused();
			if (ImGui::BeginMenuBar()) {
				_drawMenuContents();
				ImGui::EndMenuBar();
			}

			ImVec2 initialPos = ImGui::GetCursorScreenPos();

			ImVec2 contentSize = ImGui::GetContentRegionAvail();
			//contentSize.y = ImMax(contentSize.y - devToolSpace, 0.0f);

			bool loaded = ab.mcu.flash.isProgramLoaded();

			if (!loaded) ImGui::BeginDisabled();

			displayBackend.draw(contentSize, devToolsOpen);

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
	}else{
		// TODO: maybe decouple size from raylib by using imgui viewport size?
		displayBackend.draw(ImGui::GetContentRegionAvail(), devToolsOpen);
	}
	
	if (firstFrame) {
		buildDefaultLayout();
	}

	if (firstFrame)
		firstFrame = false;

	if (!open_try) {
		tryClose();
	}
}

void ABB::ArduboyBackend::_drawMenuContents() {
	if (ImGui::BeginMenu(ADD_ICON(ICON_FA_BARS) "Menu")) {
		if (!ab.mcu.flash.isProgramLoaded()) {
			if (ImGui::MenuItem(ADD_ICON(ICON_FA_FILE) "Load Program")) {
				ArduEmu::openLoadProgramDialog(id);
			}
		}
			
		if (ImGui::MenuItem(ADD_ICON(ICON_FA_TOOLBOX) "Dev Tools", NULL, &devToolsOpen)) {}

		if(ImGui::MenuItem(ADD_ICON(ICON_FA_SQUARE_PLUS) "Backup State", ArduEmu::getActionKeyStr(ArduEmu::actionManager.getAction(ArduEmu::Action_Add_State_Copy)).c_str())) {
			mcuInfoBackend.addState(ab);
		}
		ImGui::EndMenu();
	}
	if (ImGui::BeginMenu(ADD_ICON(ICON_FA_TV) "Display")) {
		{
			if(ImGui::MenuItem(fullScreen?(ADD_ICON(ICON_FA_COMPRESS) "Exit Fullscreen###FSSW") : (ADD_ICON(ICON_FA_EXPAND) "Fullscreen###FSSW"))){
				if(!fullScreen){
					enterFullscreen();
				}else{
					exitFullscreen();
				}
			}
		}

		if (ImGui::BeginMenu("Rotate Display")) {
			if (ImGui::Button(ICON_OR_TEXT(ICON_FA_ARROW_ROTATE_LEFT,"CCW"))) {
				displayBackend.rotateCCW();
			}
			ImGui::SameLine();
			if (ImGui::Button(ICON_OR_TEXT(ICON_FA_ARROW_ROTATE_RIGHT,"CW"))) {
				displayBackend.rotateCW();
			}

			ImGui::Checkbox("Also rotate Controls",&rotateControls);
			
			ImGui::EndMenu();
		}
		if (ImGui::MenuItem("Set Colors")) {
			displayBackend.openSetColorWin();
		}
		ImGui::EndMenu();
	}
	if(ImGui::BeginMenu(ADD_ICON(ICON_FA_PLAY) "Emulation")){
		if(ImGui::BeginMenu(ADD_ICON(ICON_FA_WRENCH) "ExecFlags")){
			bool debug = (ab.execFlags & A32u4::ATmega32u4::ExecFlags_Debug) != 0;
			if (ImGui::MenuItem("Debug", NULL, debug))
				ab.execFlags ^= A32u4::ATmega32u4::ExecFlags_Debug;

			bool analyze = (ab.execFlags & A32u4::ATmega32u4::ExecFlags_Analyse) != 0;
			if (ImGui::MenuItem("Analyze", NULL, analyze))
				ab.execFlags ^= A32u4::ATmega32u4::ExecFlags_Analyse;
			
			ImGui::EndMenu();
		}
		if(ImGui::BeginMenu(ADD_ICON(ICON_FA_GAUGE_HIGH) "Speed")){
			constexpr float speeds[] = {
				0.1f, 0.25f, 0.5f, 1, 2, 4, 10
			};
			constexpr const char* speedLabels[] = {
				"0.1x", "0.25x", "0.5x", "1x", "2x", "4x", "10x"
			};
			size_t currVal = -1;
			for(size_t i = 0; i<MCU_ARR_SIZE(speeds); i++) {
				if(ab.emulationSpeed == speeds[i]) {
					currVal = i;
					break;
				}
			}
			if(ImGuiExt::SelectSwitch((const char**)speedLabels, MCU_ARR_SIZE(speeds), &currVal, {300,0})) {
				ab.emulationSpeed = speeds[currVal];
			}
			ImGui::EndMenu();
		}
		ImGui::EndMenu();
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


size_t ABB::ArduboyBackend::sizeBytes() const {
	size_t sum = 0;

	sum += ab.sizeBytes();

	sum += DataUtils::approxSizeOf(name);
	sum += DataUtils::approxSizeOf(devWinName);

	sum += logBackend.sizeBytes();
	sum += displayBackend.sizeBytes();
	sum += debuggerBackend.sizeBytes();
	sum += mcuInfoBackend.sizeBytes();
	sum += analyticsBackend.sizeBytes();
	sum += compilerBackend.sizeBytes();
	sum += symbolBackend.sizeBytes();

	sum += elf.sizeBytes();

	sum += sizeof(id);

	sum += sizeof(fullScreen);

	sum += sizeof(open);
	sum += sizeof(open_try);

	sum += sizeof(winFocused);

	sum += sizeof(devToolsOpen);
	sum += sizeof(firstFrame);

	sum += sizeof(rotateControls);

	return sum;
}

void ABB::ArduboyBackend::tryClose() {
	open = false;
}
bool ABB::ArduboyBackend::_wantsToBeClosed() const {
	return !open;
}
bool ABB::ArduboyBackend::_wantsFullScreen() const {
	return fullScreen;
}

