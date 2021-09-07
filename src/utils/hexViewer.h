#ifndef _ABB_UTIL_HEXVIEWER
#define _ABB_UTIL_HEXVIEWER

#include <stdint.h>
#include <vector>
#include "imgui.h"
#include "imgui_internal.h"
#include "symbolTable.h"
#include "raylib.h"

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
			const uint8_t* const data;
			const size_t dataLen;

			bool isSelecting = false;
			size_t selectStart = 0;
			size_t selectEnd = 0;

			struct Highlight {
				size_t Addr;
				ImVec4 col;

				Highlight();
				Highlight(size_t Addr, const ImVec4& col);
				bool operator<(const Highlight& rhs) const;
			};

			std::vector<Highlight> highlights;
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
			void drawSymbolHoverInfo(const SymbolTable::Symbol* symbol, size_t addr);
		public:
			HexViewer(const uint8_t* data, size_t dataLen);

			struct SyntaxColors{
				ImVec4 Addr;
				ImVec4 bytes;
				ImVec4 ascii;
			};
			static SyntaxColors syntaxColors;

			bool isSelected(size_t addr) const;

			void addHighlight(size_t addr, const ImVec4& col);

			void draw(size_t dataAmt = -1, size_t dataOff = 0);
			void sameFrame();

			void setSymbolList(SymbolTable::SymbolListPtr list);
		};
	}
}

#endif