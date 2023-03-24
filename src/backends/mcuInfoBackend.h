#ifndef _ABB_MCUINFO_BACKEND
#define _ABB_MCUINFO_BACKEND

#include <vector>
#include <string>
#include <functional>
#include <ctime>


#include "imgui.h"
#include "ImGuiFD.h"
#include "ImGuiFD_internal.h"

#include "SymbolBackend.h"

#include "../utils/hexViewer.h"

namespace ABB {
	class ArduboyBackend;

	class McuInfoBackend {
	public:
		struct Save {
			MCU mcu;
			EmuUtils::SymbolTable symbolTable;

			size_t sizeBytes() const;
		};
	private:
		friend ArduboyBackend;

		ArduboyBackend* abb;

		std::vector<utils::HexViewer> hexViewers;

		bool winFocused = false;

		std::vector<std::pair<size_t,std::string>> ramStrings;
		std::vector<std::pair<size_t,std::string>> eepromStrings;
		std::vector<std::pair<size_t,std::string>> romStrings;

		struct SaveLoadFDIPair {
			ImGuiFD::FDInstance save;
			ImGuiFD::FDInstance load;

			SaveLoadFDIPair(const char* bothName);
			size_t sizeBytes() const;
		};

		std::vector<std::pair<std::string,Save>> states;

		SaveLoadFDIPair fdiState;
		size_t stateIndToSave = 0;

		void drawSaveLoadButtons(SaveLoadFDIPair* fdi);

		static void setRamValue(size_t addr, uint8_t val, void* userData);
		static void setEepromValue(size_t addr, uint8_t val, void* userData);
		static void setRomValue(size_t addr, uint8_t val, void* userData);

		void drawStates();

	public:
		std::string winName;
		bool* open;

		McuInfoBackend(ArduboyBackend* abb, const char* winName, bool* open);

		void draw();

		const char* getWinName() const;

		bool isWinFocused() const;
		void addState(const Save& save, const char* name = nullptr);

		size_t sizeBytes() const;
	};
}

namespace DataUtils {
	inline size_t approxSizeOf(const ABB::McuInfoBackend::Save& v) {
		return v.sizeBytes();
	}
}

#endif