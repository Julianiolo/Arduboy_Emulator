#ifndef _ABB_DEBUGGER_BACKEND
#define _ABB_DEBUGGER_BACKEND

#include "Arduboy.h"
#include <string>
#include <vector>
#include <stdint.h>

namespace ABB{
    class DebuggerBackend{
    private:
        Arduboy* ab;
        void drawControls();
        void drawSrcFile();
    public:
        std::string winName;
        std::string srcMixFile = "";
        std::vector<size_t> srcMixFileLines;
        std::vector<uint16_t> srcMixFilePCs;

        DebuggerBackend(Arduboy* ab, const char* winName);

        void draw();
        void loadSrcFile(const char* path);
        size_t getLineIndFromPC(uint16_t PC);
    private:
        float srcMixFileScrollSet = -1;
        void processSrcFile();
        static uint16_t getPCFromLine(const char* start, const char* end);
        static bool isValidHex(const char* start, const char* end);
    };
}

#endif