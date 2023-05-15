#ifndef _ARDU_EMU
#define _ARDU_EMU

#include <vector>
#include <string>

#include "ActionManager.h"

#include "backends/ArduboyBackend.h"

#define AB_VERSION "1.0 Alpha"

class ArduEmu {
public:
	struct Info {
		static constexpr const char* compileTime = __TIME__;
		static constexpr const char* compileDate = __DATE__;
		static int constexpr cplusplusStd = __cplusplus;
	};

private:
	static struct Settings {
		bool alwaysShowMenuFullscreen = false;

		ImVec4 accentColor = ImVec4{0.129f, 0.373f, 0.368f, 1};
		ImVec4 frameColor = ImVec4{0.2f, 0.2f, 0.2f, 1};
		struct RainbowSettings {
			bool active = false;
			float speed = 0.003f;
			float saturation = 0.5f;
			float brightness = 0.5f;
		} rainbowSettings;
	} settings;
	static std::vector<ABB::ArduboyBackend*> instances;
	static size_t idCounter;
	static size_t lastOpenDialogId;
	static size_t activeInd;
	static size_t wantsFullscreenInd;

	static bool fullscreenMenuUsedLastFrame;

	static float rainbowCurrHue;

	static std::string benchmarkProgPath;


#if defined(__EMSCRIPTEN__)
	static bool isSimpleLoadDialogOpen;
	static bool simpleLoadDialogIsCurrentlyLoading;
	static std::string simpleLoadDialogInputStr;
	static std::vector<uint8_t> simpleLoadDialogLoadedData;
#endif
public:
	static bool showSettings;

	static bool showBenchmark;
	static bool showImGuiDemo;
	static bool showAbout;

	enum {
		Action_Arduboy_Up=0,
		Action_Arduboy_Down,
		Action_Arduboy_Left,
		Action_Arduboy_Right,
		Action_Arduboy_A,
		Action_Arduboy_B,
		Action_Add_State_Copy,
		Action_Pause
	};
	static ActionManager actionManager;

	static std::string clipboardContent;

	static void init();
	static void destroy();

	static void draw();
	
	static void setupImGuiStyle(const ImVec4& accentColor, const ImVec4& frameColor);
	static void setupActionManager();

	static ABB::ArduboyBackend& addEmulator(const char* n);
	static ABB::ArduboyBackend* getInstance(size_t ind);
	static ABB::ArduboyBackend* getInstanceById(size_t id);
	static void openLoadProgramDialog(size_t ownId);
	static std::string getActionKeyStr(const ActionManager::Action& action);
private:
	static void drawBenchmark();
	static bool drawMenuContents(size_t activeInstanceInd); // returns true if menu is active
	static void drawLoadProgramDialog();

	enum {
		SettingsSection_main = 0,
		SettingsSection_logbackend,
		SettingsSection_asmviewer,
		SettingsSection_hexviewer,
		SettingsSection_keybinds,
		SettingsSection_COUNT
	};
	static void drawSettings();
	static void drawKeybindSettings();

	static void drawAbout();
};

#endif