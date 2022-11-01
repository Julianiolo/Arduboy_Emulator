#ifndef _ARDU_EMU
#define _ARDU_EMU

#include <vector>
#include <string>
#include "backends/ArduboyBackend.h"

class ArduEmu {
private:
	static std::vector<ABB::ArduboyBackend*> instances;
	static size_t idCounter;
	static size_t lastOpenDialogId;

#if defined(__EMSCRIPTEN__)
	static bool isSimpleLoadDialogOpen;
	static bool simpleLoadDialogIsCurrentlyLoading;
	static std::string simpleLoadDialogInputStr;
	static std::vector<uint8_t> simpleLoadDialogLoadedData;
#endif
public:
	static void init();
	static void destroy();

	static void draw();
	

	static ABB::ArduboyBackend& addEmulator(const char* n);
	static ABB::ArduboyBackend* getInstance(size_t ind);
	static ABB::ArduboyBackend* getInstanceById(size_t id);
	static void openLoadProgramDialog(size_t ownId);

private:
	static void drawBenchmark();
	static void drawMenu();
	static void drawLoadProgramDialog();
};

#endif