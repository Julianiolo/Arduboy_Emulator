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
#include "../utils/symbolTable.h"
#include "../utils/elfReader.h"

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
		utils::SymbolTable symbolTable;

		bool open = true;
	private:
		bool open_try = true;

		bool winActive = false;

		bool devToolsOpen = true;
		bool execMenuOpen = false;
		bool firstFrame = true; // whether this is the first frame ever displayed

		bool isWinFocused(); // is one of the windows associated with this instance focused
		void update();

		void drawExecMenu();
	public:

		ArduboyBackend(const char* n);

		void draw();
		void resetMachine();

		void buildDefaultLayout();

		void loadFromELF(const uint8_t* data, size_t dataLen);
		void loadFromELFFile(const char* path);
	};
}

#endif