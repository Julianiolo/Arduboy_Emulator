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


#include "extras/ElfReader.h"

namespace ABB {
	class ArduboyBackend {
	public:

		Arduboy ab;

		std::string name;
		std::string devWinName;

		LogBackend logBackend;
		DisplayBackend displayBackend;
		DebuggerBackend debuggerBackend;
		McuInfoBackend mcuInfoBackend;
		AnalyticsBackend analyticsBackend;
		CompilerBackend compilerBackend;
		SymbolBackend symbolBackend;

		A32u4::ELF::ELFFile elf;

		size_t id;

		bool fullScreen = false;

	private:
		bool open = true;
		bool open_try = true;

		bool winFocused = false;

		bool devToolsOpen = true;
		bool firstFrame = true; // whether this is the first frame ever displayed

		void update();

		void setMcu();
	public:

		ArduboyBackend(const char* n, size_t id);
		ArduboyBackend(const ArduboyBackend& src);
		ArduboyBackend& operator=(const ArduboyBackend& src);

		bool isWinFocused(); // is one of the windows associated with this instance focused
		void tryClose();
		void enterFullscreen();
		void exitFullscreen();

		void draw();
		void _drawMenuContents();

		void resetMachine();

		void buildDefaultLayout();

		bool load(const uint8_t* data, size_t dataLen);
		bool loadFile(const char* path);

		bool loadFromELF(const uint8_t* data, size_t dataLen);
		bool loadFromELFFile(const char* path);

		bool _wantsToBeClosed() const;
		bool _wantsFullScreen() const;
	};
}

#endif