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
        void drawRegisters();
        
        const utils::SymbolTable* symbolTable;
    public:
        std::string winName;
        utils::AsmViewer srcMix;
        bool stepFrame = false;

        DebuggerBackend(ArduboyBackend* abb, const char* winName, const utils::SymbolTable* symbolTable);

        void draw();
        
    private:

    };
}

#endif