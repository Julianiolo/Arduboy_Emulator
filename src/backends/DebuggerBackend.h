#ifndef _ABB_DEBUGGER_BACKEND
#define _ABB_DEBUGGER_BACKEND

#include <string>
#include <vector>
#include <stdint.h>

#include "../utils/asmViewer.h"
#include "../utils/symbolTable.h"

namespace ABB{
    class ArduboyBackend;

    class DebuggerBackend{
    private:
        ArduboyBackend* abb;
        void drawControls();
        void drawDebugStack();
        void drawBreakpoints();
        void drawRegisters();
        void drawGPRegisters();

        bool* open;
        
        const utils::SymbolTable* symbolTable;
        bool winFocused = false;

        bool showGPRegs = false;
        struct GPRWatch { // GPRegister Watch
            uint8_t ind;
            uint8_t len;
            ImVec4 col;
        };
        std::vector<GPRWatch> gprWatches;
        uint8_t gprWatchAddAt = 0;

        uint32_t loadedSrcFileInc = 0;
        utils::AsmViewer& addSrcMix();
        void generateSrc();
        A32u4::Disassembler::DisasmFile::AdditionalDisasmInfo genDisamsInfo();

        std::string loadSrcMixFileDialogTitle;
        bool drawLoadGenerateButtons(); // return true if a button was pressed
    public:
        std::string winName;
        std::vector<utils::AsmViewer> srcMixs;
        size_t selectedSrcMix = -1;
        bool stepFrame = false;
        bool haltOnReset = false;

        DebuggerBackend(ArduboyBackend* abb, const char* winName, bool* open, const utils::SymbolTable* symbolTable);

        void draw();
        
        const char* getWinName() const;
        bool isWinFocused() const;

        

        void addSrc(const char* str, const char* title = NULL);
        bool addSrcFile(const char* path);
    };
}

#endif