#ifndef _ARDU_EMU
#define _ARDU_EMU

#include <vector>
#include <string>
#include "ActionManager.h"

#include "backends/ArduboyBackend.h"


class ArduEmu {
	static struct Settings {
		bool alwaysShowMenuFullscreen;

		ImVec4 accentColor;
		ImVec4 frameColor;
	} settings;
private:
	static std::vector<ABB::ArduboyBackend*> instances;
	static size_t idCounter;
	static size_t lastOpenDialogId;
	static size_t activeInd;
	static size_t wantsFullscreenInd;

	static bool fullscreenMenuUsedLastFrame;


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
		Action_Arduboy_B
	};
	static ActionManager actionManager;

	static void init();
	static void destroy();

	static void draw();
	
	static void setupImGuiStyle(const ImVec4& accentColor, const ImVec4& frameColor);
	static void setupActionManager();

	static ABB::ArduboyBackend& addEmulator(const char* n);
	static ABB::ArduboyBackend* getInstance(size_t ind);
	static ABB::ArduboyBackend* getInstanceById(size_t id);
	static void openLoadProgramDialog(size_t ownId);
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