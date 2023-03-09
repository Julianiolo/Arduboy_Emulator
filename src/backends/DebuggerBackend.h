#ifndef _ABB_DEBUGGER_BACKEND
#define _ABB_DEBUGGER_BACKEND

#include <string>
#include <vector>
#include <stdint.h>

#include "ImGuiFD_internal.h"

#include "../utils/asmViewer.h"
#include "SymbolBackend.h"

namespace ABB{
    class ArduboyBackend;

    class DebuggerBackend{
    private:
        friend class ArduboyBackend;

        ArduboyBackend* abb;
        void drawControls();
        void drawDebugStack();
        void drawBreakpoints();
        void drawRegisters();
        void drawGPRegisters();

        
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

        ImGuiFD::FDInstance loadSrcMix;
        bool drawLoadGenerateButtons(); // return true if a button was pressed
    public:
        std::string winName;
        bool* open;
        std::vector<utils::AsmViewer> srcMixs;
        size_t selectedSrcMix = -1;
        bool stepFrame = false;
        bool haltOnReset = false;

        DebuggerBackend(ArduboyBackend* abb, const char* winName, bool* open);

        void draw();
        
        const char* getWinName() const;
        bool isWinFocused() const;

        void addSrc(const char* str, const char* title = NULL);
        bool addSrcFile(const char* path);

        size_t sizeBytes() const;
    };
}

#endif