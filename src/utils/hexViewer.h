#ifndef _ABB_UTIL_HEXVIEWER
#define _ABB_UTIL_HEXVIEWER

#include <stdint.h>
#include <vector>
#include "imgui.h"
#include "imgui_internal.h"
#include "symbolTable.h"

namespace ABB {
	namespace utils {
		class HexViewer {
		private:
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

			SymbolTable::SymbolListPtr symbolList = nullptr;

			ImRect getNextByteRect(const ImVec2& charSize) const;
		public:
			

			struct SyntaxColors{
				ImVec4 Addr;
				ImVec4 bytes;
				ImVec4 ascii;
			};
			static SyntaxColors syntaxColors;

			bool showAscii = true;
			bool showSymbols = true;
			bool upperCaseHex = false;

			bool isSelected(size_t addr) const;

			void addHighlight(size_t addr, const ImVec4& col);

			void draw(const uint8_t* data, size_t dataLen, size_t dataOff = 0);
			void sameFrame();

			void setSymbolList(SymbolTable::SymbolListPtr list);
		};
	}
}

#endif