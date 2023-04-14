#ifndef _ABB_UTIL_HEXVIEWER
#define _ABB_UTIL_HEXVIEWER

#include <stdint.h>
#include <vector>
#include "imgui.h"
#include "imgui_internal.h"
#include "raylib.h"

#include "../mcu.h"
#include "SymbolTable.h"

#include "DataUtils.h"

namespace ABB {
	class ArduboyBackend;

	namespace utils {
		class HexViewer {
		public:
			static struct Settings {
				float vertSpacing = 0;

				bool showAscii = true;
				bool showTex = true;

				bool showSymbols = true;
				bool invertTextColOverSymbols = true;
				bool showRWViz = false;

				bool upperCaseHex = false;


				bool showDiagram = true;
				float diagramScale = 1;
			} settings;

			static struct SyntaxColors{
				ImVec4 Addr = {1,1,0,1};
				ImVec4 bytes = {0.7f,0.7f,0.9f,1};
				ImVec4 ascii = {0.5f,0.6f,0.5f,1};
			} syntaxColors;
			static const SyntaxColors defSyntaxColors;

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

				void openEditPopup(const uint8_t* data, size_t dataLen, MCU::addrmcu_t addr);
				void setEditCallB(DataUtils::EditMemory::SetValueCallB callB, void* userData);

				void draw();
				
				bool canEdit() const;

				size_t sizeBytes() const;
			private:
				void editPopupError(const char* msg);
				
				void drawTypeChoose(size_t maxByteLen);

				void writeVal();
				void loadVal();
			};

			enum {
				DataType_None = 0,
				DataType_Ram = 1,
				DataType_Eeprom = 2,
				DataType_Rom = 3
			};

		private:
			uint8_t dataType;

			bool isSelecting = false;
			size_t selectStart = 0;
			size_t selectEnd = 0;

			bool isHovered = false;
			size_t hoveredAddr = -1;

			static constexpr size_t AddrDigits = 4;

			size_t popupAddr = -1; // symbol popup address
			const EmuUtils::SymbolTable::Symbol* popupSymbol = nullptr;

			EditBytes eb;

			std::vector<float> readViz;
			std::vector<float> writeViz;

			ImRect getNextByteRect(const ImVec2& charSize) const;
			size_t getBytesPerRow(float widthAvail, const ImVec2& charSize);

			void drawHoverInfo(size_t addr, const EmuUtils::SymbolTable::Symbol* symbol, const uint8_t* data);
			
			void drawEditPopup();
		public:
			HexViewer(size_t size, uint8_t dataType = DataType_None);


			bool isSelected(size_t addr) const;

			void draw(const uint8_t* data, size_t dataLen, const EmuUtils::SymbolTable* symbolTable = nullptr, const EmuUtils::SymbolTable::SymbolList* symbolList = nullptr, const uint64_t* newReads = nullptr, const uint64_t* newWrites = nullptr);

			void setEditCallback(DataUtils::EditMemory::SetValueCallB func, void* userData);

			static void drawSettings();
			size_t sizeBytes() const;
		};
	}
}

namespace DataUtils {
	inline size_t approxSizeOf(const ABB::utils::HexViewer& v) {
		return v.sizeBytes();
	}
}

#endif