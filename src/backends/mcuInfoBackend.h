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
	class McuInfoBackend {
	private:
		friend class ArduboyBackend;

		Arduboy* ab;

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
		};
		SaveLoadFDIPair fdiRam;
		SaveLoadFDIPair fdiEeprom;
		SaveLoadFDIPair fdiRom;

		std::vector<std::pair<std::string,Arduboy>> states;

		void drawSaveLoadButtons(SaveLoadFDIPair* fdi);
		void drawDialog(ImGuiFD::FDInstance* fdi, std::function<void(const char* path)> callB);

		static void setRamValue(size_t addr, uint8_t val, void* userData);
		static void setEepromValue(size_t addr, uint8_t val, void* userData);
		static void setRomValue(size_t addr, uint8_t val, void* userData);

		void drawStates();

	public:
		std::string winName;
		bool* open;

		McuInfoBackend(Arduboy* ab, const char* winName, bool* open);

		void draw();

		const char* getWinName() const;

		bool isWinFocused() const;
		void addState(Arduboy& ab, const char* name = nullptr);
	};
}

#endif