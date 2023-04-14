#ifndef _ABB_DEBUGGER_BACKEND
#define _ABB_DEBUGGER_BACKEND

#include <string>
#include <vector>
#include <stdint.h>

#include "../mcu.h"

#include "ImGuiFD_internal.h"

#include "../utils/asmViewer.h"

#include "../utils/DisasmFile.h"

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

        uint32_t loadedSrcFileInc = 0;
        utils::AsmViewer& addSrcMix(bool selfDisassembled);
        

        ImGuiFD::FDInstance loadSrcMix;
        bool drawLoadGenerateButtons(); // return true if a button was pressed
        std::string disasmProg();
    public:
        std::string winName;
        bool* open;
        struct SrcMix {
            utils::AsmViewer viewer;
            bool selfDisassembled;

            size_t sizeBytes() const;
        };
        std::vector<SrcMix> srcMixs;
        size_t selectedSrcMix = -1;
        bool stepFrame = false;
        bool haltOnReset = false;

        DebuggerBackend(ArduboyBackend* abb, const char* winName, bool* open);

        void draw();
        
        const char* getWinName() const;
        bool isWinFocused() const;

        void addSrc(const char* str, const char* title = NULL);
        bool addSrcFile(const char* path);
        void generateSrc();

        size_t sizeBytes() const;
    };
}

namespace DataUtils {
    inline size_t approxSizeOf(const ABB::DebuggerBackend::SrcMix& v) {
        return v.sizeBytes();
    }
}

#endif