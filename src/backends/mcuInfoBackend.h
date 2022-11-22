#ifndef _ABB_MCUINFO_BACKEND
#define _ABB_MCUINFO_BACKEND

#include "Arduboy.h"
#include "imgui.h"
#include "../utils/hexViewer.h"
#include <string>

#include "SymbolBackend.h"

namespace ABB {
	class McuInfoBackend {
	private:
		Arduboy* ab;

		utils::HexViewer dataspaceDataHex;
		utils::HexViewer dataspaceEEPROMHex;
		bool dataSpaceSplitHexView = false;
		utils::HexViewer flashHex;

		bool winFocused = false;

		std::vector<std::pair<size_t,std::string>> ramStrings;
		std::vector<std::pair<size_t,std::string>> eepromStrings;
		std::vector<std::pair<size_t,std::string>> romStrings;

		void drawSaveLoadButtons(const char* module);
		void drawSaveDialog(const char* module);
		void drawLoadDialog(const char* module);

		static void setRamValue(size_t addr, uint8_t val, void* userData);
		static void setEepromValue(size_t addr, uint8_t val, void* userData);
		static void setRomValue(size_t addr, uint8_t val, void* userData);
	public:
		const std::string winName;
		bool* open;

		McuInfoBackend(Arduboy* ab, const char* winName, bool* open);

		void draw();

		const char* getWinName() const;

		bool isWinFocused() const;
	};
}

#endif