#ifndef __ABB_SYMBOLBACKEND_H__
#define __ABB_SYMBOLBACKEND_H__

#include "imgui.h"
#include "mcu.h"
#include "SymbolTable.h"

namespace ABB {
    class ArduboyBackend;

    class SymbolBackend {
        friend ArduboyBackend;
    private:
        ArduboyBackend* abb;
    public:
        std::string winName;
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

        EmuUtils::SymbolTable::Symbol addSymbol;
        void clearAddSymbol();

        static float distSqCols(const ImVec4& a, const ImVec4& b);

        static std::vector<std::string> demangeSymbols(std::vector<const char*> names, void* userData);

        bool compareSymbols(uint32_t a, uint32_t b);
    public:
        SymbolBackend(ArduboyBackend* abb, const char* winName, bool* open);

        void draw();

        static ImVec4 getSymbolColor(size_t symbolID);

        static void drawSymbol(const EmuUtils::SymbolTable::Symbol* symbol, EmuUtils::SymbolTable::symb_size_t addr = -1, const uint8_t* data = nullptr);

        const EmuUtils::SymbolTable::Symbol* drawAddrWithSymbol(EmuUtils::SymbolTable::symb_size_t Addr, const EmuUtils::SymbolTable::SymbolList& list)const;
		static void drawSymbolListSizeDiagramm(const EmuUtils::SymbolTable& table, const EmuUtils::SymbolTable::SymbolList& list, EmuUtils::SymbolTable::symb_size_t totalSize, float* scale, const uint8_t* data = nullptr, ImVec2 size = {0,0});
        
        size_t sizeBytes() const;
    };
}

#endif