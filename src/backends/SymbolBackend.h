#ifndef __ABB_SYMBOLBACKEND_H__
#define __ABB_SYMBOLBACKEND_H__

#include "imgui.h"

#include "extras/symbolTable.h"

#include "ATmega32u4.h"

namespace ABB {
    class SymbolBackend {
    private:
        A32u4::ATmega32u4* mcu;
    public:
        const std::string winName;
		bool* open;
    private:
        enum {
            SB_NAME = 0,
            SB_VALUE,
            SB_SIZE,
            SB_FLAGS,
            SB_SECTION,
            SB_NOTES,
            SB_ID
        };
        std::vector<uint32_t> symbolsSortedOrder;
        bool shouldResort = true;
        ImGuiTableSortSpecs* sortSpecs = nullptr;

        A32u4::SymbolTable::Symbol addSymbol;
        void clearAddSymbol();

        static float distSqCols(const ImVec4& a, const ImVec4& b);

        static void postProcessSymbols(A32u4::SymbolTable::Symbol* symbs, size_t len, void* userData);

        bool compareSymbols(uint32_t a, uint32_t b);
    public:
        SymbolBackend(A32u4::ATmega32u4* mcu, const char* winName, bool* open);

        void draw();

        static ImVec4* getSymbolColor(const A32u4::SymbolTable::Symbol* symbol);

        static void drawSymbol(const A32u4::SymbolTable::Symbol* symbol, A32u4::SymbolTable::symb_size_t addr = -1, const uint8_t* data = nullptr);

        const A32u4::SymbolTable::Symbol* drawAddrWithSymbol(A32u4::SymbolTable::symb_size_t Addr, const A32u4::SymbolTable::SymbolList& list)const;
		static void drawSymbolListSizeDiagramm(const A32u4::SymbolTable& table, const A32u4::SymbolTable::SymbolList& list, A32u4::SymbolTable::symb_size_t totalSize, float* scale, const uint8_t* data = nullptr, ImVec2 size = {0,0});
    };
}

#endif