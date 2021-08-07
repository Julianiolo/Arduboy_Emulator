#ifndef _ASM_VIEWER
#define _ASM_VIEWER

#include <vector>
#include <string>

#include "imgui.h"

namespace ABB{
    namespace utils{
        class AsmViewer{
        private:
            std::string fileStr = "";
            std::vector<size_t> fileStrLines;
            std::vector<uint16_t> fileStrPCs;

            float scrollSet = -1;
            void processSrcFile();
            static uint16_t getPCFromLine(const char* start, const char* end);
            static bool isValidHexAddr(const char* start, const char* end);
            size_t findCharInLine(const char* start, const char* end, const char chr);
        public:
            struct SyntaxColors{
                ImVec4 PCAddr;
                ImVec4 rawInstBytes;
                ImVec4 instName;
                ImVec4 instParams;
            };
            static SyntaxColors syntaxColors;

            void loadSrcFile(const char* path);
            size_t getLineIndFromPC(uint16_t PC);
            void drawFile(const std::string& winName, uint16_t PC);
            void scrollToLine(size_t line);
            bool isFileEmpty();
        };
    }
}


#endif