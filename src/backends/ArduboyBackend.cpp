#include "ArduboyBackend.h"

#include <exception>
#include <chrono>

#include "imgui.h"
#include "imgui_internal.h"
#include "../rlImGui/rlImGui.h"
#include "imgui/icons.h"

#include "../ArduEmu.h"

#include "imgui/imguiExt.h"

#define LU_MODULE "ArduboyBackend"
#define LU_CONTEXT logBackend.getLogContext()

ABB::ArduboyBackend::ArduboyBackend(const char* n, size_t id, std::unique_ptr<Console>&& mcu_) :
	mcu(std::move(mcu_)),
	name(n), devWinName(std::string(n) + "devtools"), 
	logBackend      (mcu.get(), (name + " - " ADD_ICON(ICON_FA_LIST)        "Log").c_str(), &devToolsOpen),
	displayBackend  (mcu.get(), (name + " - " ADD_ICON(ICON_FA_TV)          "Display").c_str()),
	debuggerBackend (this,      (name + " - " ADD_ICON(ICON_FA_BUG)         "Debugger" ).c_str(), &devToolsOpen),
	mcuInfoBackend  (this,      (name + " - " ADD_ICON(ICON_FA_CIRCLE_INFO) "Mcu Info" ).c_str(), &devToolsOpen),
	analyticsBackend(this,      (name + " - " ADD_ICON(ICON_FA_CHART_BAR)   "Analytics").c_str(), &devToolsOpen),
	compilerBackend (this,      (name + " - " ADD_ICON(ICON_FA_HAMMER)      "Compile"  ).c_str(), &devToolsOpen),
	symbolBackend   (this,      (name + " - " ADD_ICON(ICON_FA_LIST)        "Symbols"  ).c_str(), &devToolsOpen),
	soundBackend    (           (name + " - " ADD_ICON(ICON_FA_VOLUME_HIGH) "Sound"    ).c_str(), &devToolsOpen),
	id(id)
{
	try {
		symbolTable.loadDeviceSymbolDumpFile("resources/device/regSymbs.txt");
	}
	catch (const std::runtime_error& e) {
		LU_LOGF(LogUtils::LogLevel_Error, "Error loading device symbols: %s", e.what());
	}

	//ImGui::DockBuilderSplitNode(ImGuiID(ImGui::GetID(devWinName.c_str())), ImGuiDir_Left, 0.5, );
}

ABB::ArduboyBackend::ArduboyBackend(const ArduboyBackend& src):
mcu(src.mcu->clone()),
name(src.name), devWinName(src.devWinName),
logBackend(src.logBackend), displayBackend(src.displayBackend), debuggerBackend(src.debuggerBackend),
mcuInfoBackend(src.mcuInfoBackend), analyticsBackend(src.analyticsBackend), compilerBackend(src.compilerBackend), symbolBackend(src.symbolBackend), soundBackend(src.soundBackend),
id(src.id), fullScreen(src.fullScreen),
open(src.open), open_try(src.open_try), winFocused(src.winFocused),
devToolsOpen(src.devToolsOpen), firstFrame(src.firstFrame)
{
	setMcu();
}
ABB::ArduboyBackend& ABB::ArduboyBackend::operator=(const ArduboyBackend& src){
	mcu = src.mcu->clone();
	name = src.name; devWinName = src.name;
	logBackend = src.logBackend; displayBackend = src.displayBackend; debuggerBackend = src.debuggerBackend;
	mcuInfoBackend = src.mcuInfoBackend; analyticsBackend = src.analyticsBackend; compilerBackend = src.compilerBackend;
	symbolBackend = src.symbolBackend;
	setMcu();

	id = src.id; fullScreen = src.fullScreen;
	open = src.open; open_try = src.open_try; winFocused = src.winFocused;
	devToolsOpen = src.devToolsOpen; firstFrame = src.firstFrame;
	return *this;
}

void ABB::ArduboyBackend::setMcu() {
	logBackend.mcu = mcu.get();
	displayBackend.mcu = mcu.get();
	debuggerBackend.abb = this;
	mcuInfoBackend.abb = this;
	analyticsBackend.abb = this;
	compilerBackend.abb = this;
	symbolBackend.abb = this;
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
	if(!mcu->flash_isProgramLoaded())
		return;

	
	if (isWinFocused()) {
		bool up, down, left, right;
		{
			constexpr size_t loop[] = {ArduEmu::Action_Arduboy_Up,ArduEmu::Action_Arduboy_Right,ArduEmu::Action_Arduboy_Down,ArduEmu::Action_Arduboy_Left};
			size_t rotInd = rotateControls ? displayBackend.getRotation() : 0;
			up = ArduEmu::actionManager.isActionActive(loop[(rotInd + 0) % 4], ActionManager::ActivationState_Down);
			right = ArduEmu::actionManager.isActionActive(loop[(rotInd + 1) % 4], ActionManager::ActivationState_Down);
			down = ArduEmu::actionManager.isActionActive(loop[(rotInd + 2) % 4], ActionManager::ActivationState_Down);
			left = ArduEmu::actionManager.isActionActive(loop[(rotInd + 3) % 4], ActionManager::ActivationState_Down);
		}
		
		bool a = ArduEmu::actionManager.isActionActive(ArduEmu::Action_Arduboy_A, ActionManager::ActivationState_Down);
		bool b = ArduEmu::actionManager.isActionActive(ArduEmu::Action_Arduboy_B, ActionManager::ActivationState_Down);
		mcu->setButtons(up, down, left, right, a, b);
	}
	else {
		mcu->setButtons(false, false, false, false, false, false);
	}

	auto start = std::chrono::high_resolution_clock::now();
	mcu->newFrame();
	auto end = std::chrono::high_resolution_clock::now();
	analyticsBackend.frameTimeBuf.add((float)std::chrono::duration_cast<std::chrono::microseconds>(end-start).count()/1000);
	//printf("%fms\n", (double)std::chrono::duration_cast<std::chrono::microseconds>(end-start).count()/1000);
	
	soundBackend.makeSound(mcu->genSoundWave(44100));

	displayBackend.update();
	analyticsBackend.update();
}

void ABB::ArduboyBackend::draw() {
	if (!open)
		return;

	logBackend.activateLog();

	update();

	if(isWinFocused()) {
		if(ArduEmu::actionManager.isActionActive(ArduEmu::Action_Pause, ActionManager::ActivationState_Pressed)){
			if(!mcu->debugger_isHalted()){
				mcu->debugger_halt();
			}else{
				mcu->debugger_continue();
			}
		}
		if(ArduEmu::actionManager.isActionActive(ArduEmu::Action_Add_State_Copy, ActionManager::ActivationState_Pressed))
			mcuInfoBackend.addState(McuInfoBackend::Save(mcu->clone(), EmuUtils::SymbolTable(symbolTable)));
	}


	if (devToolsOpen) {
		debuggerBackend.draw();
		logBackend.draw();
		mcuInfoBackend.draw();
		analyticsBackend.draw();
		compilerBackend.draw();
		symbolBackend.draw();
		soundBackend.draw();
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
			if(mcu->getEmuSpeed() != 1) {
				snprintf(subBuf, sizeof(subBuf), "[%.2f]", mcu->getEmuSpeed());
			}
			snprintf(nameBuf, sizeof(nameBuf), "%s %s%s%s%s###%s", 
				name.c_str(),
				subBuf,
				isWinFocused() ? "[Active]" : "",
				mcu->debugger_isHalted() ? "[HALTED]" : "",
				mcu->flash_isProgramLoaded() ? "" : " - NO PROGRAM LOADED!", 
				
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

			bool loaded = mcu->flash_isProgramLoaded();

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

bool ABB::ArduboyBackend::loadFile(const char* path) {
	const char* ext = StringUtils::getFileExtension(path);

	if (std::strcmp(ext, "hex") == 0) {
		std::string content;
		try {
			content = StringUtils::loadFileIntoString(path);
		}
		catch (const std::runtime_error& e) {
			LU_LOGF(LogUtils::LogLevel_Error, "Couldn't load File: %s", e.what());
			return false;
		}

		std::vector<uint8_t> hex;
		try {
			hex = StringUtils::parseHexFileStr(content.c_str(), content.c_str() + content.size());
		}
		catch (const std::runtime_error& e) {
			LU_LOGF(LogUtils::LogLevel_Error, "Parsing hex failed: %s", e.what());
			return false;
		}

		return mcu->flash_loadFromMemory(hex.size() ? & hex[0] : 0, hex.size());
	}
	else if (std::strcmp(ext, "bin") == 0) {
		std::vector<uint8_t> data;
		try {
			data = StringUtils::loadFileIntoByteArray(path);
		}
		catch (const std::runtime_error& e) {
			LU_LOGF(LogUtils::LogLevel_Error, "Couldn't load File: %s", e.what());
			return false;
		}

		return mcu->flash_loadFromMemory(data.size()>0? &data[0] : nullptr, data.size());
	}
	else if (std::strcmp(ext, "elf") == 0) {
		std::vector<uint8_t> content;
		try {
			content = StringUtils::loadFileIntoByteArray(path);
		}
		catch (const std::runtime_error& e) {
			LU_LOGF(LogUtils::LogLevel_Error, "Couldn't load File: %s", e.what());
			return false;
		}

		return loadFromELF(content.size() ? &content[0] : 0, content.size());
	}
	else {
		LU_LOGF(LogUtils::LogLevel_Error, "Can't load file with extension %s! Trying to load: %s", ext, path);
		return false;
	}
	return true;
}

bool ABB::ArduboyBackend::loadFromELFFile(const char* path) {
	std::vector<uint8_t> content;
	try {
		content = StringUtils::loadFileIntoByteArray(path);
	}
	catch (const std::runtime_error& e) {
		LU_LOGF(LogUtils::LogLevel_Error, "Couldn't load File: %s", e.what());
		return false;
	}

	return loadFromELF(content.size() ? &content[0] : 0, content.size());
}
bool ABB::ArduboyBackend::loadFromELF(const uint8_t* data, size_t dataLen) {
	try {
		elfFile = std::make_unique<EmuUtils::ELF::ELFFile>(EmuUtils::ELF::parseELFFile(data, dataLen));

		symbolTable.loadFromELF(*elfFile);

		auto romData = EmuUtils::ELF::getProgramData(*elfFile);

		return mcu->flash_loadFromMemory(&romData[0], romData.size());
	}
	catch (const std::runtime_error& e) {
		LU_LOGF(LogUtils::LogLevel_Error, "Couldn't load ELF File: %s", e.what());
		return false;
	}
}

void ABB::ArduboyBackend::_drawMenuContents() {
	if (ImGui::BeginMenu(ADD_ICON(ICON_FA_BARS) "Menu")) {
		if (!mcu->flash_isProgramLoaded()) {
			if (ImGui::MenuItem(ADD_ICON(ICON_FA_FILE) "Load Program")) {
				ArduEmu::openLoadProgramDialog(id);
			}
		}
			
		if (ImGui::MenuItem(ADD_ICON(ICON_FA_TOOLBOX) "Dev Tools", NULL, &devToolsOpen)) {}

		if(ImGui::MenuItem(ADD_ICON(ICON_FA_SQUARE_PLUS) "Backup State", ArduEmu::getActionKeyStr(ArduEmu::actionManager.getAction(ArduEmu::Action_Add_State_Copy)).c_str())) {
			mcuInfoBackend.addState({mcu->clone(), EmuUtils::SymbolTable(symbolTable)});
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

		if (ImGui::BeginMenu(ADD_ICON(ICON_FA_ARROW_ROTATE_LEFT) "Rotate Display")) {
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
		if (ImGui::MenuItem(ADD_ICON(ICON_FA_PAINT_ROLLER) "Set Colors")) {
			displayBackend.openSetColorWin();
		}
		ImGui::EndMenu();
	}
	if(ImGui::BeginMenu(ADD_ICON(ICON_FA_PLAY) "Emulation")){
		if(ImGui::BeginMenu(ADD_ICON(ICON_FA_WRENCH) "ExecFlags")){
			const bool debug = mcu->getDebugMode();
			if (ImGui::MenuItem("Debug", NULL, debug))
				mcu->setDebugMode(!debug);
			
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
			for(size_t i = 0; i<DU_ARRAYSIZE(speeds); i++) {
				if(mcu->getEmuSpeed() == speeds[i]) {
					currVal = i;
					break;
				}
			}
			size_t newVal = ImGuiExt::SelectSwitch("SpeedSel",(const char**)speedLabels, DU_ARRAYSIZE(speeds), currVal, {300,0});
			if(newVal != currVal) {
				mcu->setEmuSpeed(speeds[newVal]);
			}
			ImGui::EndMenu();
		}
		ImGui::EndMenu();
	}
}

void ABB::ArduboyBackend::resetMachine() {
	mcu.reset();
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
	ImGui::DockBuilderDockWindow(     soundBackend.winName.c_str(), l2);

	ImGui::DockBuilderDockWindow( analyticsBackend.winName.c_str(), r2);
	ImGui::DockBuilderDockWindow(  compilerBackend.winName.c_str(), r2);
	ImGui::DockBuilderDockWindow(       logBackend.winName.c_str(), r2);
}


size_t ABB::ArduboyBackend::sizeBytes() const {
	size_t sum = 0;

	sum += mcu->sizeBytes();

	sum += DataUtils::approxSizeOf(name);
	sum += DataUtils::approxSizeOf(devWinName);

	sum += logBackend.sizeBytes();
	sum += displayBackend.sizeBytes();
	sum += debuggerBackend.sizeBytes();
	sum += mcuInfoBackend.sizeBytes();
	sum += analyticsBackend.sizeBytes();
	sum += compilerBackend.sizeBytes();
	sum += symbolBackend.sizeBytes();

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

