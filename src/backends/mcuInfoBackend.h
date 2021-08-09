#ifndef _ABB_MCUINFO_BACKEND
#define _ABB_MCUINFO_BACKEND

#include "Arduboy.h"
#include "imgui.h"
#include "../utils/hexViewer.h"
#include <string>

namespace ABB {
	class McuInfoBackend {
		Arduboy* ab;
	public:
		std::string winName;
		bool winOpen = true;

		McuInfoBackend(Arduboy* ab, const char* winName);

		void draw();
	private:
		utils::HexViewer dataspaceHex;
		bool dataSpaceSplitHexView = true;
		utils::HexViewer flashHex;

		void drawHexEditor(const uint8_t* data, size_t dataLen, bool showAscii, size_t dataOff = 0);
	};
}

#endif