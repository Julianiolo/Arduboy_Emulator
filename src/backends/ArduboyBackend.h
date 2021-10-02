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

namespace ABB {
	class ArduboyBackend {
	public:
		Arduboy ab;

		std::string name;

		DisplayBackend displayBackend;
		DebuggerBackend debuggerBackend;
		LogBackend logBackend;
		McuInfoBackend mcuInfoBackend;
		AnalyticsBackend analyticsBackend;
		utils::SymbolTable symbolTable;
	private:
		

		void update();
	public:

		ArduboyBackend(const char* n);

		void draw();
	};
}

#endif