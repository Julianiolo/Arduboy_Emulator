#ifndef _ASM_VIEWER
#define _ASM_VIEWER

#include <vector>
#include <map>
#include <string>

#include "imgui.h"
#include "symbolTable.h"

namespace ABB{
    namespace utils{
        class AsmViewer{
        private:
            std::string fileStr = "";
            std::vector<size_t> fileStrLines;
            std::vector<uint16_t> fileStrAddrs;
            std::map<uint16_t, size_t> fileStrLabels;

            

            float scrollSet = -1;
            void processSrcFile();
            static uint16_t generateAddrFromLine(const char* start, const char* end);
            static bool isValidHexAddr(const char* start, const char* end);
            size_t findCharInLine(const char* start, const char* end, const char chr);
            void addAddrToList(const char* start, const char* end, size_t lineInd);
            
        public:

            const SymbolTable* symbolTable = nullptr;
            struct SyntaxColors{
                ImVec4 PCAddr;
                ImVec4 rawInstBytes;
                ImVec4 instName;
                ImVec4 instParams;
                ImVec4 asmComment;
                ImVec4 asmCommentSymbolBrackets;
                ImVec4 asmCommentSymbol;
                ImVec4 asmCommentSymbolOffset;

                ImVec4 syntaxLabelAddr;
                ImVec4 syntaxLabelText;

                ImVec4 dataBlock;
                ImVec4 dataBlockText;

                ImVec4 srcCodeText;
            };
            static SyntaxColors syntaxColors;
            static constexpr uint16_t Addrs_notAnAddr = -1;
            static constexpr uint16_t Addrs_symbolLabel = -2;

            bool showScollBarHints = true;
            size_t selectedLine = -1;

            void loadSrcFile(const char* path);
            size_t getLineIndFromAddr(uint16_t Addr);
            void drawFile(const std::string& winName, uint16_t PCAddr);
            void scrollToLine(size_t line, bool select = false);
            bool isFileEmpty();

            void setSymbolTable(const SymbolTable* table);
        private:
            void drawSymbolComment(const char* lineStart, const char* lineEnd, const size_t symbolStartOff, const size_t symbolEndOff, bool* hasAlreadyClicked);

            void decorateScrollBar(uint16_t PCAddr);
        };
    }
}


#endif