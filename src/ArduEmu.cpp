#include "ArduEmu.h"

#include <chrono>
#include <cmath>

#ifndef __EMSCRIPTEN__
	#ifdef _WIN32
		#include <intrin.h> // for __rdtsc()
	#else
		#include <x86intrin.h>
	#endif
#endif

#ifdef __EMSCRIPTEN__
	#include "emscripten.h"
	#include "emscripten_browser_clipboard.h"
#endif


#define IMGUI_DEFINE_MATH_OPERATORS 1
#include "imgui.h"
#include "imgui_internal.h"

#define GLFW_INCLUDE_NONE
#include "external/glfw/include/GLFW/glfw3.h"

#include "ImGuiFD.h"

#include "imgui/imguiExt.h"

#include "mcu.h"

#include "backends/LogBackend.h"

#include "utils/byteVisualiser.h"
#include "utils/asmViewer.h"
#include "StringUtils.h"

#include "utils/icons.h"

#define LU_MODULE "ArduEmu"
#define SYS_LOG_MODULE "ArduEmu"

#ifndef GIT_COMMIT
#define GIT_COMMIT "N/A"
#endif

ArduEmu::Settings ArduEmu::settings;

std::vector<ABB::ArduboyBackend*> ArduEmu::instances;
size_t ArduEmu::idCounter = 0;
size_t ArduEmu::lastOpenDialogId = -1;
size_t ArduEmu::activeInd = -1;
size_t ArduEmu::wantsFullscreenInd = -1;

bool ArduEmu::fullscreenMenuUsedLastFrame = false;

float ArduEmu::rainbowCurrHue = 0;

std::string ArduEmu::benchmarkProgPath;


#if defined(__EMSCRIPTEN__)
bool ArduEmu::isSimpleLoadDialogOpen = false;
bool ArduEmu::simpleLoadDialogIsCurrentlyLoading = false;
std::string ArduEmu::simpleLoadDialogInputStr = "";
std::vector<uint8_t> ArduEmu::simpleLoadDialogLoadedData;
#endif

bool ArduEmu::showSettings = false;
bool ArduEmu::showBenchmark = false;
bool ArduEmu::showImGuiDemo = true;
bool ArduEmu::showAbout = false;

ActionManager ArduEmu::actionManager;

std::string ArduEmu::clipboardContent;

void ArduEmu::init() {
#ifdef __EMSCRIPTEN__
	ImGuiIO& io = ImGui::GetIO();
	io.GetClipboardTextFn = [](void* userData) {
		SYS_LOGF(LogUtils::LogLevel_DebugOutput, "ImGui requested clipboard, returing: \"%s\"", clipboardContent.c_str());
		return clipboardContent.c_str();
	};
	io.SetClipboardTextFn = [](void* userData, const char* text) {
		clipboardContent = text;
		SYS_LOGF(LogUtils::LogLevel_DebugOutput, "setting ImGui clipboard to: \"%s\"", clipboardContent.c_str());
		emscripten_browser_clipboard::copy(clipboardContent);  // send clipboard data to the browser
	};
	emscripten_browser_clipboard::paste([](std::string const &paste_data, void *callback_data [[maybe_unused]]){
		/// Callback to handle clipboard paste from browser
		SYS_LOGF(LogUtils::LogLevel_DebugOutput, "Clipboard updated from paste data: \"%s\"", paste_data.c_str());
		clipboardContent = std::move(paste_data);
	});
#endif
	setupImGuiStyle(settings.accentColor, settings.frameColor);
	setupActionManager();
	ABB::utils::ByteVisualiser::init();
}

void ArduEmu::destroy() {
	for (auto& i : instances) {
		delete i;
	}
	ABB::utils::ByteVisualiser::destroy();
}

void ArduEmu::setupImGuiStyle(const ImVec4& accentColor, const ImVec4& frameColor) {
	ImGuiStyle& style = ImGui::GetStyle();
	ImVec4* colors = style.Colors;

	ImVec4 accentActiveColor = ImGuiExt::BrightenColor(accentColor, 1.3f);
	ImVec4 frameActiveColor = ImGuiExt::BrightenColor(frameColor, 1.3f);

	colors[ImGuiCol_Button]        = ImGuiExt::BrightenColor(accentColor, 1.0f);
	colors[ImGuiCol_ButtonHovered] = ImGuiExt::BrightenColor(accentColor, 1.2f);
	colors[ImGuiCol_ButtonActive]  = accentActiveColor;

	colors[ImGuiCol_TitleBg]       = ImGuiExt::BrightenColor(accentColor, 0.6f);
	colors[ImGuiCol_TitleBgActive] = ImGuiExt::BrightenColor(accentColor, 0.9f);

	colors[ImGuiCol_Tab]                = ImGuiExt::BrightenColor(accentColor, 0.8f);
	colors[ImGuiCol_TabHovered]         = ImGuiExt::BrightenColor(accentColor, 1.2f);
	colors[ImGuiCol_TabActive]          = accentActiveColor;
	colors[ImGuiCol_TabUnfocused]       = ImGuiExt::BrightenColor(accentColor, 0.4f);
	colors[ImGuiCol_TabUnfocusedActive] = accentActiveColor;

	colors[ImGuiCol_Header]        = ImGuiExt::BrightenColor(accentColor, 0.9f);
	colors[ImGuiCol_HeaderHovered] = ImGuiExt::BrightenColor(accentColor, 1.1f);
	colors[ImGuiCol_HeaderActive]  = accentActiveColor;

	colors[ImGuiCol_CheckMark]  = ImGuiExt::BrightenColor(accentColor, 2);

	colors[ImGuiCol_ScrollbarGrab]        = accentColor;
	colors[ImGuiCol_ScrollbarGrabHovered] = ImGuiExt::BrightenColor(accentColor, 1.3f);
	colors[ImGuiCol_ScrollbarGrabActive]  = accentActiveColor;

	colors[ImGuiCol_SliderGrab]        = ImGuiExt::BrightenColor(accentColor, 1.3f);
	colors[ImGuiCol_SliderGrabActive]  = ImGuiExt::BrightenColor(accentColor, 1.5f);

	colors[ImGuiCol_SeparatorHovered] = accentColor;
	colors[ImGuiCol_SeparatorActive] = accentActiveColor;

	colors[ImGuiCol_ResizeGrip]        = accentColor;
	colors[ImGuiCol_ResizeGripHovered] = ImGuiExt::BrightenColor(accentColor, 1.3f);
	colors[ImGuiCol_ResizeGripActive]  = accentActiveColor;

	colors[ImGuiCol_DockingPreview]  = ImGuiExt::BrightenColor(accentColor, 2);

	colors[ImGuiCol_TextSelectedBg]  = ImGuiExt::BrightenColor(accentColor, 2);

	colors[ImGuiCol_NavHighlight]  = ImGuiExt::BrightenColor(accentColor, 2);

	colors[ImGuiCol_FrameBg]        = frameColor;
	colors[ImGuiCol_FrameBgHovered] = ImGuiExt::BrightenColor(frameColor, 1.3f);
	colors[ImGuiCol_FrameBgActive]  = frameActiveColor;
}

void ArduEmu::setupActionManager() {
	actionManager.setTestCallB([](uint8_t type, int id, ActionManager::ActivationState activationState){
		{
			DU_STATIC_ASSERT(ActionManager::ActivationState_Down == 0);
			DU_STATIC_ASSERT(ActionManager::ActivationState_Up == 1);
			DU_STATIC_ASSERT(ActionManager::ActivationState_Pressed == 2);
			DU_STATIC_ASSERT(ActionManager::ActivationState_Released == 3);
		}
		if(type == ActionManager::Action::Part::Type_MouseButton) {
			std::function<bool(int)> funcs[] = {IsMouseButtonDown, IsMouseButtonUp, IsMouseButtonPressed, IsMouseButtonReleased};
			return funcs[activationState](id);
		}else if(type == ActionManager::Action::Part::Type_Key) {
			std::function<bool(ImGuiKey)> funcs[] = {(bool(*)(ImGuiKey))ImGui::IsKeyDown, [](ImGuiKey k){return !ImGui::IsKeyDown(k);}, [](ImGuiKey k){return ImGui::IsKeyPressed(k,false);}, (bool(*)(ImGuiKey))ImGui::IsKeyReleased};
			return funcs[activationState]((ImGuiKey)id);
		}else{
			abort();
		}
	});

	actionManager.addAction("Arduboy Up Button",Action_Arduboy_Up).addKey(ImGuiKey_W).setAsDefault();
	actionManager.addAction("Arduboy Down Button",Action_Arduboy_Down).addKey(ImGuiKey_S).setAsDefault();
	actionManager.addAction("Arduboy Left Button",Action_Arduboy_Left).addKey(ImGuiKey_A).setAsDefault();
	actionManager.addAction("Arduboy Right Button",Action_Arduboy_Right).addKey(ImGuiKey_D).setAsDefault();
	actionManager.addAction("Arduboy A Button",Action_Arduboy_A).addKey(ImGuiKey_K).setAsDefault();
	actionManager.addAction("Arduboy B Button",Action_Arduboy_B).addKey(ImGuiKey_L).setAsDefault();
	actionManager.addAction("Pause Program", Action_Pause).addKey(ImGuiKey_Space).setAsDefault();
	actionManager.addAction("Add State copy",Action_Add_State_Copy).addKey(ImGuiKey_LeftCtrl).addKey(ImGuiKey_B).setAsDefault();
}

void ArduEmu::draw() {
	drawLoadProgramDialog();

	if(wantsFullscreenInd == (size_t)-1){
		for (auto it = instances.begin(); it != instances.end();) {
			auto& i = *it;
			if (i->_wantsToBeClosed()) {
				delete i;
				it = instances.erase(it);
				activeInd = -1;
			}
			else {
				i->draw();
				if(i->isWinFocused())
					activeInd = std::distance(instances.begin(), it);
				if(i->_wantsFullScreen()) {
					wantsFullscreenInd = std::distance(instances.begin(), it);
				}
				
				it++;
			}
		}
		if(ImGui::BeginMainMenuBar()){
			drawMenuContents(activeInd);
			ImGui::EndMainMenuBar();
		}

		fullscreenMenuUsedLastFrame = false;
	}else{
		constexpr ImGuiWindowFlags flags =
			ImGuiWindowFlags_NoBringToFrontOnFocus | ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoCollapse |
			ImGuiWindowFlags_NoMove | ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoTitleBar;
		ImGui::SetNextWindowPos({0,0}, ImGuiCond_Always);
		ImGui::SetNextWindowSize(ImVec2{(float)GetScreenWidth(), (float)GetScreenHeight()}, ImGuiCond_Always);

		bool showMenu = settings.alwaysShowMenuFullscreen || 
			(fullscreenMenuUsedLastFrame || (ImGui::GetMousePos().y <= ImGui::GetFrameHeightWithSpacing()*2));
		bool menuUsed = false;
		if(ImGui::Begin("AEFullscreen", NULL, flags | (showMenu ? ImGuiWindowFlags_MenuBar : 0))){
			if(ImGui::BeginMenuBar()) {
				if(drawMenuContents(wantsFullscreenInd)) {
					menuUsed = true;
				}
				if(ImGui::BeginMenu("Fullscreen")){
					menuUsed = true;
					if(ImGui::MenuItem(ADD_ICON(ICON_FA_COMPRESS) "Exit Fullscreen")) {
						instances[wantsFullscreenInd]->exitFullscreen();
					}
					ImGui::EndMenu();
				}
				ImGui::EndMenuBar();
			}

			instances[wantsFullscreenInd]->draw();
			if(!instances[wantsFullscreenInd]->_wantsFullScreen())
				wantsFullscreenInd = -1;
		}
		ImGui::End();

		fullscreenMenuUsedLastFrame = menuUsed;
	}

	ABB::McuInfoBackend::drawStatic();

	drawBenchmark();
	drawSettings();
	drawAbout();

	if(showImGuiDemo)
		ImGui::ShowDemoWindow(&showImGuiDemo);

	if (IsFileDropped()) {
		auto files = LoadDroppedFiles();
		for (size_t i = 0; i < files.count; i++) {
			const char* path = files.paths[i];
			const char* name = StringUtils::getFileName(path);

			SYS_LOGF(LogUtils::LogLevel_Output, "Loading dropped file: %s", path);

			auto& abb = addEmulator(name);
			if (abb.loadFile(path))
				abb.mcu.powerOn();
		}
		UnloadDroppedFiles(files);
	}
}

void ArduEmu::drawBenchmark(){
	if(!showBenchmark) return;

#if 1

	if(ImGui::Begin("Benchmark",&showBenchmark)){
		ImGui::Text("File to run: \"%s\"", benchmarkProgPath.c_str());
		ImGui::SameLine();
		if(ImGui::Button("Change")) {
			ImGuiFD::OpenDialog("Load Benchmark Programm", ImGuiFDMode_LoadFile, ".");
		}

		uint64_t benchCycls = (ABB::MCU::clockFreq()/60)*1000;
		constexpr uint64_t min = 0;
		ImGui::DragScalar("##cycs",ImGuiDataType_U64, &benchCycls, 1000, &min);
		ImGui::SameLine();
		if(ImGui::SmallButton("*10"))
			benchCycls *= 10;
		ImGui::SameLine();
		if(ImGui::SmallButton("/10"))
			benchCycls /= 10;
		
		ImGui::TextUnformatted("Run Flags:");
		ImGui::Indent();
			static bool debug = false;
			ImGui::Checkbox("Debug",&debug);
		ImGui::Unindent();

		static std::string res = "";
		if(ImGui::Button("Do Benchmark")){
			ABB::MCU mcu;
			try {
				std::string content = StringUtils::loadFileIntoString(benchmarkProgPath.c_str());
				auto data = StringUtils::parseHexFileStr(content.c_str(), content.c_str()+content.size());
				mcu.flash_loadFromMemory(data.size()?&data[0]:nullptr, data.size());
			}catch(const std::exception& e) {
				res = StringUtils::format("Error loading file: %s", e.what()) + res;
			}

			if(mcu.flash_isProgramLoaded()) {
				mcu.powerOn();
				mcu.setButtons(false, false, false, false, false, false);
				mcu.setDebugMode(debug);

				auto start = std::chrono::high_resolution_clock::now();
				#ifndef __EMSCRIPTEN__
				uint64_t cpu_start = __rdtsc();
				#endif
				mcu.execute(benchCycls);
				#ifndef __EMSCRIPTEN__
				uint64_t cpu_end = __rdtsc();
				#endif
				auto end = std::chrono::high_resolution_clock::now();

				auto time = end - start;

				#ifndef __EMSCRIPTEN__
				uint64_t cycles = cpu_end - cpu_start;
				#else
				uint64_t cycles = 0;
				#endif
				double ms = (double)(time/std::chrono::microseconds(1))/1000.0;
				double frames = (double)benchCycls/(ABB::MCU::clockFreq()/60);
				double fps = 1000/(ms/frames);
				res = StringUtils::format("%" PRIu64 "/%" PRIu64 " cycles run in %.4f ms => %.2f frames => %.4ffps; %" PRIu64 " cycles\n", mcu.totalCycles(), benchCycls, ms, frames, fps, cycles) + res;
			}
		}

		ImGui::TextUnformatted(res.c_str());
	}
	ImGui::End();

	if (ImGuiFD::BeginDialog("Load Benchmark Programm")) {
		if (ImGuiFD::ActionDone()) {
			if(ImGuiFD::SelectionMade()) {
				std::string path = ImGuiFD::GetSelectionPathString(0);
				benchmarkProgPath = path;
			}
			ImGuiFD::CloseCurrentDialog();
		}

		ImGuiFD::EndDialog();
	}

#endif
}

bool ArduEmu::drawMenuContents(size_t activeInstanceInd) {
	bool menuUsed = false;
	if(ImGui::BeginMenu("File")){
		menuUsed = true;
		if(ImGui::MenuItem(ADD_ICON(ICON_FA_GAMEPAD) "Open game")){
			openLoadProgramDialog(-1);
		}
		ImGui::EndMenu();
	}
	if(ImGui::BeginMenu("Edit")){
		menuUsed = true;
		ImGui::MenuItem(ADD_ICON(ICON_FA_GEAR) "Settings", nullptr, &showSettings);
		ImGui::EndMenu();
	}
	if(ImGui::BeginMenu("Info")){
		menuUsed = true;
		ImGui::MenuItem("Benchmark", nullptr, &showBenchmark);
		ImGui::MenuItem("Dear ImGui Demo Window", nullptr, &showImGuiDemo);
		ImGui::MenuItem("About", nullptr, &showAbout);
		ImGui::EndMenu();
	}
	if(activeInstanceInd != (size_t)-1 && ImGui::BeginMenu("Active")){
		menuUsed = true;
		ABB::ArduboyBackend* abb = instances[activeInstanceInd];
		abb->_drawMenuContents();
		ImGui::EndMenu();
	}

	return menuUsed;
}



ABB::ArduboyBackend& ArduEmu::addEmulator(const char* n) {
	ABB::ArduboyBackend* ptr = new ABB::ArduboyBackend(n, idCounter++);
	instances.push_back(ptr);
	return *ptr;
}

ABB::ArduboyBackend* ArduEmu::getInstance(size_t ind) {
	return instances.at(ind);
}
ABB::ArduboyBackend* ArduEmu::getInstanceById(size_t id) {
	for (size_t i = 0; i < instances.size(); i++) {
		if (instances.at(i)->id == id) {
			return instances.at(i);
		}
	}
	return nullptr;
}

void ArduEmu::drawLoadProgramDialog() {
#if !defined(__EMSCRIPTEN__)
	if (ImGuiFD::BeginDialog("LoadProgramDialog")) {
		if (ImGuiFD::ActionDone()) {
			if(ImGuiFD::SelectionMade()) {
				std::string path = ImGuiFD::GetSelectionPathString(0);
				std::string name = ImGuiFD::GetSelectionNameString(0);

				ABB::ArduboyBackend* abb = nullptr;
				if (lastOpenDialogId != (size_t)-1) {
					abb = getInstanceById(lastOpenDialogId);
					DU_ASSERT(abb != nullptr); // couldnt find id
				}

				if (abb == nullptr) { // also a failsafe, if it couldnt find the given id, dunno if thats smart
					abb = &addEmulator(name.c_str());
				}

				if(abb->loadFile(path.c_str()))
					abb->mcu.powerOn();
			}
			ImGuiFD::CloseCurrentDialog();
		}

		ImGuiFD::EndDialog();
	}
#else

#if 1
	if(simpleLoadDialogLoadedData.size() > 0) {
		ABB::ArduboyBackend* abb = nullptr;
		if (lastOpenDialogId != (size_t)-1) {
			abb = getInstanceById(lastOpenDialogId);
			MCU_ASSERT(abb != nullptr); // couldnt find id
		}

		if (abb == nullptr) { // also a failsafe, if it couldnt find the given id, dunno if thats smart
			char buf[9];
			StringUtils::uIntToHexBuf(rand(), 8, buf);
			abb = &addEmulator(buf);
		}

		abb->load(&simpleLoadDialogLoadedData[0], simpleLoadDialogLoadedData.size());
		abb->ab.mcu.powerOn();

		simpleLoadDialogLoadedData.clear();
		isSimpleLoadDialogOpen = false;
	}

	if (isSimpleLoadDialogOpen) {
		bool wantToBeOpen = true;
		if (ImGui::Begin("Simple Load Program Dialog", &wantToBeOpen)) {
			if (simpleLoadDialogIsCurrentlyLoading) ImGui::BeginDisabled();

			ImGuiExt::InputTextString("Url to file", "Enter the url of the file you want to load", &simpleLoadDialogInputStr);
			if (ImGui::Button("Load")) {
				simpleLoadDialogIsCurrentlyLoading = true;
				emscripten_async_wget_data(simpleLoadDialogInputStr.c_str(), NULL, 
				[](void* userData,void* data, int len) {
					ArduEmu::simpleLoadDialogLoadedData.assign((uint8_t*)data, (uint8_t*)data+len);
				},
				[](void* userData) {
					simpleLoadDialogIsCurrentlyLoading = false;
				});
			}

			if (simpleLoadDialogIsCurrentlyLoading) ImGui::EndDisabled();

			if (simpleLoadDialogIsCurrentlyLoading) {
				ImGui::Text("Loading...");
			}
		}
		ImGui::End();

		if(!wantToBeOpen && !simpleLoadDialogIsCurrentlyLoading) {
			isSimpleLoadDialogOpen = false;
		}
	}
#endif
	if (isSimpleLoadDialogOpen) {
		if (ImGui::Begin("Simple Load Program Dialog",&isSimpleLoadDialogOpen)) {
			ImGui::Text("Use the input field below to load from a url");
		}
		ImGui::End();
	}
#endif
}

void ArduEmu::openLoadProgramDialog(size_t ownId) {
	lastOpenDialogId = ownId;
#if !defined(__EMSCRIPTEN__)
	ImGuiFD::OpenDialog("LoadProgramDialog", ImGuiFDMode_LoadFile, ".");
#else
	isSimpleLoadDialogOpen = true;
#endif
}

#if 0 && defined(__EMSCRIPTEN__)
extern "C" {
__attribute__((used)) void ArduEmu_loadFile(const char* url) {
	printf("File: %s\n", url);
}
}
#endif





void ArduEmu::drawSettings() {
	if(!showSettings) return;

	ImGui::SetNextWindowSize({600,400},ImGuiCond_Appearing);
	if(ImGui::Begin(ADD_ICON(ICON_FA_GEAR) "Settings",&showSettings)) {
		ImVec2 size = ImGui::GetContentRegionAvail();

		ImGui::PushItemWidth(-1);
		static size_t selectedInd = SettingsSection_main;
		if(ImGui::BeginListBox("##SubSectionSel", {std::min(ImGui::GetFrameHeight()*5.f,size.x*0.3f),size.y})){
			constexpr const char * labels[] = {"Main","Logbackend","Asmviewer","Hexviewer","Keybinds"};
			DU_STATIC_ASSERT(DU_ARRAYSIZE(labels) == SettingsSection_COUNT);
			
			for(size_t i = 0; i<SettingsSection_COUNT; i++) {
				const bool isSelected = selectedInd == i;
				if(ImGui::Selectable(labels[i], isSelected))
					selectedInd = i;

				if (isSelected)
					ImGui::SetItemDefaultFocus();
			}
			ImGui::EndListBox();
		}
		ImGui::PopItemWidth();

		ImGui::SameLine();

		if(ImGui::BeginChild("Section", {0,0}, true)){
			switch(selectedInd) {
				case SettingsSection_main: {
					ImGui::Checkbox("Always show Menubar in fullscreen", &settings.alwaysShowMenuFullscreen);
					
					ImGui::Separator();

					if(settings.rainbowSettings.active)
						ImGui::BeginDisabled();

					{
						ImGui::BeginGroup();

						static bool autoUpdate = true;

						bool update = false;
						if (ImGui::ColorEdit3("Accent Color", (float*)&settings.accentColor, ImGuiColorEditFlags_NoInputs | ImGuiColorEditFlags_NoAlpha)) {
							if(autoUpdate)
								update = true;
						}
						if (ImGui::ColorEdit4("Frame Color", (float*)&settings.frameColor, ImGuiColorEditFlags_NoInputs | ImGuiColorEditFlags_AlphaPreview)) {
							if(autoUpdate)
								update = true;
						}

						ImGui::Checkbox("Autoupdate", &autoUpdate);
						if (!autoUpdate && ImGui::Button("Update")) {
							update = true;
						}

						if (update) {
							setupImGuiStyle(settings.accentColor, settings.frameColor);
						}

						ImGui::EndGroup();
					}

					if(settings.rainbowSettings.active){
						ImGui::EndDisabled();
						if(ImGui::IsItemHovered()) {
							ImGui::SetTooltip("Rainbow Mode!");
						}
					}


					if(ImGui::Checkbox("Rainbow Mode!", &settings.rainbowSettings.active)) {
						if(!settings.rainbowSettings.active)
							setupImGuiStyle(settings.accentColor, settings.frameColor);
					}

					if(settings.rainbowSettings.active) {
						ImGui::Indent();

						ImGui::DragFloat("Speed", &settings.rainbowSettings.speed, 0.0001f, 0, 1);

						ImGui::Spacing();

						ImGui::DragFloat("Saturation", &settings.rainbowSettings.saturation, 0.01f, 0, 1);
						ImGui::DragFloat("Brightness", &settings.rainbowSettings.brightness, 0.01f, 0, 1);

						rainbowCurrHue += settings.rainbowSettings.speed;
						rainbowCurrHue = (float)std::fmod(rainbowCurrHue, 1);

						ImVec4 col;
						ImGui::ColorConvertHSVtoRGB(
							rainbowCurrHue, settings.rainbowSettings.saturation, settings.rainbowSettings.brightness,
							col.x, col.y, col.z
						);
						col.w = 1;

						setupImGuiStyle(col, settings.frameColor);

						ImGui::Unindent();
					}


					ImGui::Separator();

					if(ImGui::TreeNode("Fine Tune Style")){
						ImGui::ShowStyleEditor();
						ImGui::TreePop();
					}
				}
				break;

				case SettingsSection_logbackend: {
					ABB::LogBackend::drawSettings();
				}
				break;

				case SettingsSection_asmviewer: {
					ABB::utils::AsmViewer::drawSettings();
				}
				break;

				case SettingsSection_hexviewer: {
					ABB::utils::HexViewer::drawSettings();
				}
				break;

				case SettingsSection_keybinds: {
					drawKeybindSettings();
				}
				break;
			}
		}
		ImGui::EndChild();
	}
	ImGui::End();
}

std::string ArduEmu::getActionKeyStr(const ActionManager::Action& action){
	std::string keysStr;
	for(size_t i = 0; i<action.parts.size(); i++) {
		if(i>0)
			keysStr += " + ";
		auto& part = action.parts[i];
		if(part.type == ActionManager::Action::Part::Type_MouseButton){
			constexpr const char* mouseButtonNames[] = {"LEFT","RIGHT","MIDDLE","SIDE","EXTRA","FORWARD","BACK"};
			{
				DU_STATIC_ASSERT(MOUSE_BUTTON_LEFT==0);
				DU_STATIC_ASSERT(MOUSE_BUTTON_RIGHT==1);
				DU_STATIC_ASSERT(MOUSE_BUTTON_MIDDLE==2);
				DU_STATIC_ASSERT(MOUSE_BUTTON_SIDE==3);
				DU_STATIC_ASSERT(MOUSE_BUTTON_EXTRA==4);
				DU_STATIC_ASSERT(MOUSE_BUTTON_FORWARD==5);
				DU_STATIC_ASSERT(MOUSE_BUTTON_BACK==6);
			}
			keysStr += mouseButtonNames[part.id];
		}else if(part.type == ActionManager::Action::Part::Type_Key){
			keysStr += ImGui::GetKeyName((ImGuiKey)part.id);
		}
	}
	return keysStr;
}

void ArduEmu::drawKeybindSettings() {
	static ActionManager::Action editAction;

	if(ImGui::BeginTable("Table", 3, ImGuiTableFlags_Borders | ImGuiTableFlags_SizingFixedFit)) {
		if(ImGui::BeginPopupModal("EditKeybinds")){
			ImGui::Text("Edit Keybind \"%s\"", editAction.title.c_str());
			ImGui::Separator();

			ImGui::Spacing();


			{
				for (ImGuiKey key = ImGuiKey_KeysData_OFFSET; key < ImGuiKey_MouseLeft; key = (ImGuiKey)(key + 1)) { 
					if (!ImGui::IsKeyPressed(key) || (key < 512 && ImGui::GetIO().KeyMap[key] != -1)) continue; 
					editAction.addKey(key);
				}
			}
			
			std::string keyStr = getActionKeyStr(editAction);
			if(keyStr.size() == 0)
				keyStr = "Press any Key";
			ImVec2 textSize = ImGui::CalcTextSize(keyStr.c_str());
			ImGui::SetCursorPosX(ImGui::GetContentRegionAvail().x/2-textSize.x/2);
			ImGui::GetWindowDrawList()->AddRect(ImGui::GetCursorScreenPos()-ImVec2{1,1}, ImGui::GetCursorScreenPos()+textSize+ImVec2{1,1}, ImColor(ImGui::GetStyleColorVec4(ImGuiCol_Border)));
			ImGui::TextUnformatted(keyStr.c_str());

			ImGui::Spacing();

			if(ImGui::Button("OK", ImVec2(100,0))){
				actionManager.getAction(editAction.id) = std::move(editAction);
				editAction.clear();
				ImGui::CloseCurrentPopup();
			}
			ImGui::SameLine();
			if(ImGui::Button("Cancel",ImVec2(100,0))){
				ImGui::CloseCurrentPopup();
			}
			ImGui::EndPopup();
		}


		ImGui::TableSetupScrollFreeze(0, 1); // Make top row always visible

		ImGui::TableSetupColumn("Title");
		ImGui::TableSetupColumn("Keys", ImGuiTableColumnFlags_WidthStretch);
		ImGui::TableSetupColumn("Action");
		ImGui::TableHeadersRow();

		for(auto& action : actionManager) {
			ImGui::PushID(&action);
			ImGui::TableNextRow();
			ImGui::TableNextColumn();

			ImGui::TextUnformatted(action.title.c_str());

			ImGui::TableNextColumn();

			

			ImGui::TextUnformatted(getActionKeyStr(action).c_str());

			ImGui::TableNextColumn();
			if(ImGui::Button("Change")) {
				ImGui::OpenPopup("EditKeybinds");
				editAction.clear();
				editAction.id = action.id;
				editAction.title = action.title;
			}
			ImGui::SameLine();
			if(ImGui::Button("Default")) {
				action.resetToDefault();
			}
			ImGui::SameLine();
			if(ImGui::Button("Clear")){
				action.clear();
			}

			ImGui::PopID();
		}
		ImGui::EndTable();
	}
}

void ArduEmu::drawAbout(){
	if(!showAbout) return;

	if(ImGui::Begin("About Arduboy_Emulator", &showAbout)) {
		ImGui::TextUnformatted("TODO");
		ImGui::Separator();
		ImGui::TextUnformatted("Build info:");
		ImGui::Indent();
			ImGui::Text("Version: %s", AB_VERSION);
			ImGui::Text("Build date: %s %s", __DATE__, __TIME__);
			ImGui::Text("Git commit: %s", GIT_COMMIT);
		ImGui::Unindent();
	}
	ImGui::End();
}