#ifndef _ABB_DEBUGGER_BACKEND
#define _ABB_DEBUGGER_BACKEND

#include "Arduboy.h"
#include <string>
#include <vector>
#include <stdint.h>

#include "../utils/asmViewer.h"

namespace ABB{
    class DebuggerBackend{
    private:
        Arduboy* ab;
        void drawControls();
        
    public:
        std::string winName;
        utils::AsmViewer srcMix;

        DebuggerBackend(Arduboy* ab, const char* winName);

        void draw();
        
    private:

    };
}

#endif