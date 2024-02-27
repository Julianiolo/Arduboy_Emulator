#ifndef _ARDUBOY_BACKEND
#define _ARDUBOY_BACKEND

#include "raylib.h"
#include <string>
#include <memory>

#include "../mcu.h"
#include "comps/StringTable.h"

#include "DisplayBackend.h"
#include "DebuggerBackend.h"
#include "LogBackend.h"
#include "mcuInfoBackend.h"
#include "AnalyticsBackend.h"
#include "CompilerBackend.h"
#include "SymbolBackend.h"
#include "SoundBackend.h"

namespace ABB {
	class ArduboyBackend {
	public:

		MCU mcu;
		EmuUtils::SymbolTable symbolTable;

		std::unique_ptr<EmuUtils::ELF::ELFFile> elfFile = nullptr;

		std::string name;
		std::string devWinName;

		LogBackend logBackend;
		DisplayBackend displayBackend;
		DebuggerBackend debuggerBackend;
		McuInfoBackend mcuInfoBackend;
		AnalyticsBackend analyticsBackend;
		CompilerBackend compilerBackend;
		SymbolBackend symbolBackend;
		SoundBackend soundBackend;

		size_t id;

		bool fullScreen = false;

	private:
		bool open = true;
		bool open_try = true;

		bool winFocused = false;

		bool devToolsOpen = true;
		bool firstFrame = true; // whether this is the first frame ever displayed

		bool rotateControls = true;

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

		bool loadFile(const char* path);

		bool loadFromELFFile(const char* path);
		bool loadFromELF(const uint8_t* data, size_t dataLen);

		void resetMachine();

		void buildDefaultLayout();

		size_t sizeBytes() const;

		bool _wantsToBeClosed() const;
		bool _wantsFullScreen() const;
	};
}

#endif