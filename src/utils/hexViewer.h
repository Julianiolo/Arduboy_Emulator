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
			typedef void (*SetValueCallB)(addrmcu_t addr, reg_t val, void* userData);

			struct Settings {
				bool showTex = true;

				bool showAscii = true;
				bool showSymbols = true;
				bool invertTextColOverSymbols = true;
				bool upperCaseHex = false;

				bool showDiagram = true;
				float diagramScale = 1;
			} settings;

			class EditBytes {
			public:
				enum {
					EditBase_2 = 0,
					EditBase_10,
					EditBase_16,
					EditBase_COUNT
				};
				enum {
					EditType_8bit = 0,
					EditType_16bit,
					EditType_32bit,
					EditType_64bit,
					EditType_float,
					EditType_double,
					EditType_string,
					EditType_bytestream,
					EditType_COUNT
				};
				enum {
					EditEndian_Little = 0,
					EditEndian_Big,
					EditEndian_COUNT
				};

			private:

				const uint8_t* data;
				size_t dataLen;

				size_t editAddr = -1;
				uint64_t editValTemp = 0;

				uint8_t editType = EditType_8bit;
				uint8_t editEndian = EditEndian_Little;
				bool editReversed = false; // write strings/stream in reverse
				uint8_t editBase = EditBase_10;
				bool editSigned = false;
				bool editStringTerm = true; // if string input should be null-terminated
				std::string editStr;

				SetValueCallB setValueCallB = nullptr;
				void* setValueUserData = nullptr;
				std::string editErrorStr;

			public:

				void openEditPopup(const uint8_t* data, size_t dataLen, addrmcu_t addr);
				void setEditCallB(SetValueCallB callB, void* userData);

				void draw();
				
				bool canEdit() const;

			private:
				void editPopupError(const char* msg);

				
				void drawTypeChoose(size_t maxByteLen);

				void writeVal();
			public:
				static uint64_t readValue(const uint8_t* data, size_t dataLen, uint8_t editType, uint8_t editEndian=EditEndian_Little);
				static bool writeValue(addrmcu_t addr, uint64_t val, const std::string& editStr, SetValueCallB setValueCallB, void* setValueUserData, size_t dataLen, bool editStringTerm, bool editReversed, uint8_t editType, uint8_t editEndian=EditEndian_Little);
			};

		private:
			const A32u4::ATmega32u4* mcu = nullptr;
			const uint8_t* const data;
			const size_t dataLen;

			bool isSelecting = false;
			size_t selectStart = 0;
			size_t selectEnd = 0;

			bool newFrame = true;

			bool isHovered = false;
			size_t hoveredAddr = -1;

			static constexpr size_t AddrDigits = 4;

			SymbolTable::SymbolListPtr symbolList = nullptr;

			float vertSpacing = 0;
			size_t popupAddr = -1; // symbol popup address
			const SymbolTable::Symbol* popupSymbol = nullptr;

			
			EditBytes eb;
			
			

			ImRect getNextByteRect(const ImVec2& charSize) const;
			size_t getBytesPerRow(float widthAvail, const ImVec2& charSize);
			bool newSymbol(SymbolTable::symb_size_t addr, size_t* symbolPtr, SymbolTable::symb_size_t nextSymbolAddrEnd);

			void drawSettings();
			void drawHoverInfo(size_t addr, const SymbolTable::Symbol* symbol);
			
			void drawEditPopup();
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
			void setEditCallback(SetValueCallB func, void* userData);
		};
	}
}

#endif