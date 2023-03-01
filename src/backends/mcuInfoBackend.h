#ifndef _ABB_MCUINFO_BACKEND
#define _ABB_MCUINFO_BACKEND

#include <vector>
#include <string>
#include <functional>
#include <ctime>

#include "Arduboy.h"
#include "imgui.h"
#include "../utils/hexViewer.h"
#include "ImGuiFD.h"
#include "ImGuiFD_internal.h"

#include "SymbolBackend.h"

namespace ABB {
	class ArduboyBackend;

	class McuInfoBackend {
	private:
		friend ArduboyBackend;

		ArduboyBackend* abb;

		utils::HexViewer dataspaceDataHex;
		utils::HexViewer dataspaceEEPROMHex;
		bool dataSpaceSplitHexView = false;
		utils::HexViewer flashHex;

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
		SaveLoadFDIPair fdiRam;
		SaveLoadFDIPair fdiEeprom;
		SaveLoadFDIPair fdiRom;

		std::vector<std::pair<std::string,Arduboy>> states;

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
		void addState(Arduboy& ab, const char* name = nullptr);
		size_t sizeBytes() const;
	};
}

#endif