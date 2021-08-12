#ifndef _ABB_MCUINFO_BACKEND
#define _ABB_MCUINFO_BACKEND

#include "Arduboy.h"
#include "imgui.h"
#include "../utils/hexViewer.h"
#include <string>

#include "../utils/symbolTable.h"

namespace ABB {
	class McuInfoBackend {
		Arduboy* ab;
	public:
		std::string winName;
		bool winOpen = true;

		McuInfoBackend(Arduboy* ab, const char* winName, const utils::SymbolTable* symbolTable);

		void draw();
	private:
		utils::HexViewer dataspaceDataHex;
		utils::HexViewer dataspaceEEPROMHex;
		bool dataSpaceSplitHexView = false;
		utils::HexViewer flashHex;
	};
}

#endif