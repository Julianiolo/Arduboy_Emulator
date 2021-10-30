#ifndef _ABB_UTIL_HEXVIEWER
#define _ABB_UTIL_HEXVIEWER

#include <stdint.h>
#include <vector>
#include "imgui.h"
#include "imgui_internal.h"
#include "symbolTable.h"
#include "raylib.h"
#include "ATmega32u4.h"

namespace ABB {
	namespace utils {
		class HexViewer {
		public:
			struct Settings {
				bool showTex = true;

				bool showAscii = true;
				bool showSymbols = true;
				bool invertTextColOverSymbols = true;
				bool upperCaseHex = false;

				bool showDiagram = true;
				float diagramScale = 1;
			} settings;

		private:
			const A32u4::ATmega32u4* mcu = nullptr;
			const uint8_t* const data;
			const size_t dataLen;

			bool isSelecting = false;
			size_t selectStart = 0;
			size_t selectEnd = 0;

			size_t highlightCntr = 0;

			bool newFrame = true;
			bool newHighlights = true;

			bool isHovered = false;
			size_t hoveredAddr = -1;

			static constexpr size_t AddrDigits = 4;

			SymbolTable::SymbolListPtr symbolList = nullptr;

			float vertSpacing = 0;
			size_t popupAddr = -1;
			const SymbolTable::Symbol* popupSymbol = nullptr;

			ImRect getNextByteRect(const ImVec2& charSize) const;
			size_t getBytesPerRow(float widthAvail, const ImVec2& charSize);
			bool newSymbol(size_t addr, size_t* symbolPtr, size_t nextSymbolAddrEnd);

			void drawSettings();
			void drawHoverInfo(size_t addr, const SymbolTable::Symbol* symbol);
		public:
			HexViewer(const uint8_t* data, size_t dataLen, const A32u4::ATmega32u4* mcu = nullptr);

			struct SyntaxColors{
				ImVec4 Addr;
				ImVec4 bytes;
				ImVec4 ascii;
			};
			static SyntaxColors syntaxColors;

			bool isSelected(size_t addr) const;

			void draw(size_t dataAmt = -1, size_t dataOff = 0);
			void sameFrame();

			void setSymbolList(SymbolTable::SymbolListPtr list);
		};
	}
}

#endif