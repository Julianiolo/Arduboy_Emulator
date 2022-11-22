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
        static float distSqCols(const ImVec4& a, const ImVec4& b);

        static void postProcessSymbols(A32u4::SymbolTable::Symbol* symbs, size_t len, void* userData);
    public:
        SymbolBackend(A32u4::ATmega32u4* mcu, const char* winName, bool* open);

        void draw();


        static ImVec4* getSymbolColor(const A32u4::SymbolTable::Symbol* symbol);

        static void drawSymbol(const A32u4::SymbolTable::Symbol* symbol, A32u4::SymbolTable::symb_size_t addr = -1, const uint8_t* data = nullptr);

        static const A32u4::SymbolTable::Symbol* drawAddrWithSymbol(A32u4::SymbolTable::symb_size_t Addr, A32u4::SymbolTable::SymbolListPtr list);
		static void drawSymbolListSizeDiagramm(A32u4::SymbolTable::SymbolListPtr list, A32u4::SymbolTable::symb_size_t totalSize, float* scale, const uint8_t* data = nullptr, ImVec2 size = {0,0});
    };
}

#endif