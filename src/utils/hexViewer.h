#ifndef _ABB_UTIL_HEXVIEWER
#define _ABB_UTIL_HEXVIEWER

#include <stdint.h>
#include <vector>
#include "imgui.h"
#include "imgui_internal.h"
#include "extras/SymbolTable.h"
#include "raylib.h"
#include "ATmega32u4.h"

#include "DataUtils.h"

namespace ABB {
	namespace utils {
		class HexViewer {
		public:
			static struct Settings {
				float vertSpacing = 0;
				bool showTex = true;

				bool showAscii = true;
				bool showSymbols = true;
				bool invertTextColOverSymbols = true;
				bool upperCaseHex = false;


				bool showDiagram = true;
				float diagramScale = 1;
			} settings;

			static struct SyntaxColors{
				ImVec4 Addr = {1,1,0,1};
				ImVec4 bytes = {0.7f,0.7f,0.9f,1};
				ImVec4 ascii = {0.5f,0.6f,0.5f,1};
			} syntaxColors;
			static constexpr SyntaxColors defSyntaxColors{};

			class EditBytes {
			private:

				const uint8_t* data;
				size_t dataLen;

				size_t editAddr = -1;
				uint64_t editValTemp = 0;

				uint8_t editType = DataUtils::EditMemory::EditType_8bit;
				uint8_t editEndian = DataUtils::EditMemory::EditEndian_Little;
				bool editReversed = false; // write strings/stream in reverse
				uint8_t editBase = DataUtils::EditMemory::EditBase_10;
				bool editSigned = false;
				bool editStringTerm = true; // if string input should be null-terminated
				std::string editStr;

				DataUtils::EditMemory::SetValueCallB setValueCallB = nullptr;
				void* setValueUserData = nullptr;
				std::string editErrorStr;

			public:

				void openEditPopup(const uint8_t* data, size_t dataLen, addrmcu_t addr);
				void setEditCallB(DataUtils::EditMemory::SetValueCallB callB, void* userData);

				void draw();
				
				bool canEdit() const;

				size_t sizeBytes() const;
			private:
				void editPopupError(const char* msg);
				
				void drawTypeChoose(size_t maxByteLen);

				void writeVal();
			};

			enum {
				DataType_None = 0,
				DataType_Ram = 1,
				DataType_Eeprom = 2,
				DataType_Rom = 3
			};

		private:
			const A32u4::ATmega32u4* mcu = nullptr;
			const uint8_t* data;
			size_t dataLen;
			uint8_t dataType;

			bool isSelecting = false;
			size_t selectStart = 0;
			size_t selectEnd = 0;

			bool newFrame = true;

			bool isHovered = false;
			size_t hoveredAddr = -1;

			static constexpr size_t AddrDigits = 4;

			const A32u4::SymbolTable::SymbolList* symbolList = nullptr;

			size_t popupAddr = -1; // symbol popup address
			const A32u4::SymbolTable::Symbol* popupSymbol = nullptr;

			EditBytes eb;

			ImRect getNextByteRect(const ImVec2& charSize) const;
			size_t getBytesPerRow(float widthAvail, const ImVec2& charSize);
			bool newSymbol(A32u4::SymbolTable::symb_size_t addr, size_t* symbolPtr, A32u4::SymbolTable::symb_size_t nextSymbolAddrEnd);

			void drawHoverInfo(size_t addr, const A32u4::SymbolTable::Symbol* symbol);
			
			void drawEditPopup();
		public:
			HexViewer(const uint8_t* data, size_t dataLen, const A32u4::ATmega32u4* mcu = nullptr, uint8_t dataType = DataType_None);


			bool isSelected(size_t addr) const;

			void draw(size_t dataAmt = -1, size_t dataOff = 0);
			void sameFrame();

			void setSymbolList(const A32u4::SymbolTable::SymbolList& list);
			void setEditCallback(DataUtils::EditMemory::SetValueCallB func, void* userData);

			static void drawSettings();
			size_t sizeBytes() const;
		};
	}
}

#endif