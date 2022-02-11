#ifndef _ARDU_EMU
#define _ARDU_EMU

#include <vector>
#include "backends/ArduboyBackend.h"

class ArduEmu {
private:
	static std::vector<ABB::ArduboyBackend*> instances;
public:
	static void init();
	static void destroy();

	static void draw();
	static void drawBenchmark();
	static void drawMenu();

	static ABB::ArduboyBackend& addEmulator(const char* n);
	static ABB::ArduboyBackend& getInstance(size_t ind);
};

#endif