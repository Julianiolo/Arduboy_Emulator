#ifndef _ARDUBOY_BACKEND
#define _ARDUBOY_BACKEND

#include "Arduboy.h"
#include "raylib.h"
#include <string>

#include "DisplayBackend.h"
#include "DebuggerBackend.h"
#include "LogBackend.h"
#include "mcuInfoBackend.h"
#include "AnalyticsBackend.h"
#include "CompilerBackend.h"
#include "SymbolBackend.h"


#include "extras/elfReader.h"

namespace ABB {
	class ArduboyBackend {
	public:

		Arduboy ab;

		std::string name;
		std::string devWinName;

		DisplayBackend displayBackend;
		DebuggerBackend debuggerBackend;
		LogBackend logBackend;
		McuInfoBackend mcuInfoBackend;
		AnalyticsBackend analyticsBackend;
		CompilerBackend compilerBackend;
		SymbolBackend symbolBackend;

		A32u4::ELF::ELFFile elf;

		size_t id;

		
	private:
		bool open = true;
		bool open_try = true;

		bool winActive = false;

		bool devToolsOpen = true;
		bool execMenuOpen = false;
		bool firstFrame = true; // whether this is the first frame ever displayed

		bool isWinFocused(); // is one of the windows associated with this instance focused
		void update();

		void drawExecMenu();
	public:

		ArduboyBackend(const char* n, size_t id);

		void tryClose();

		void draw();

		void resetMachine();

		void buildDefaultLayout();

		bool load(const uint8_t* data, size_t dataLen);
		bool loadFile(const char* path);

		bool loadFromELF(const uint8_t* data, size_t dataLen);
		bool loadFromELFFile(const char* path);

		bool _wantsToBeClosed();
	};
}

#endif