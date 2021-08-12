#ifndef _ABB_DEBUGGER_BACKEND
#define _ABB_DEBUGGER_BACKEND

#include "Arduboy.h"
#include <string>
#include <vector>
#include <stdint.h>

#include "../utils/asmViewer.h"
#include "../utils/symbolTable.h"

namespace ABB{
    class DebuggerBackend{
    private:
        Arduboy* ab;
        void drawControls();
        void drawDebugStack();
        
        const utils::SymbolTable* symbolTable;
    public:
        std::string winName;
        utils::AsmViewer srcMix;

        DebuggerBackend(Arduboy* ab, const char* winName, const utils::SymbolTable* symbolTable);

        void draw();
        
    private:

    };
}

#endif