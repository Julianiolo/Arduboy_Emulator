#ifndef _ASM_VIEWER
#define _ASM_VIEWER

#include <vector>
#include <map>
#include <string>

#include "A32u4Types.h"

#include "imgui.h"
#define IMGUI_DEFINE_MATH_OPERATORS 1
#include "imgui_internal.h"
#include "extras/SymbolTable.h"
#include "ATmega32u4.h"
#include "extras/Disassembler.h"

namespace ABB{
    namespace utils{
        class AsmViewer{
        public:
            std::string title;
            A32u4::Disassembler::DisasmFile file;

        private:
            A32u4::ATmega32u4* mcu = nullptr;
            float scrollSet = -1;

        public:

            static constexpr float breakpointExtraPadding = 3;

            static float branchWidth;
            static float branchSpacing;
            static constexpr float branchArrowSpace = 10;
            
        public:
            bool breakpointsEnabled = true;

            const A32u4::SymbolTable* symbolTable = nullptr;
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

                ImVec4 branch;
                ImVec4 branchClipped;
            };
            static SyntaxColors syntaxColors;
            

            bool showScollBarHints = true;
            bool showScollBarHeat = true;
            bool showLineHeat = true;
            size_t selectedLine = -1;

            bool showBranches = true;
            size_t maxBranchDepth = 16;
            size_t maxBranchLen = 256;

            void loadSrc(const char* str, const char* strEnd = NULL);
            bool loadSrcFile(const char* path);
            void generateDisasmFile(const A32u4::Flash* data, const A32u4::Disassembler::DisasmFile::AdditionalDisasmInfo& info = A32u4::Disassembler::DisasmFile::AdditionalDisasmInfo());
            void drawHeader();
            void drawFile(uint16_t PCAddr);
            void scrollToLine(size_t line, bool select = false);

            void setSymbolTable(const A32u4::SymbolTable* table);
            void setMcu(A32u4::ATmega32u4* mcuPtr);

            size_t numOfDisasmLines();

            static void drawSettings();
        private:
            void drawLine(const char* lineStart, const char* lineEnd, size_t line_no, size_t PCAddr, ImRect& lineRect, bool* hasAlreadyClicked);
            void drawInst(const char* lineStart, const char* lineEnd, bool* hasAlreadyClicked);
            void drawInstParams(const char* start, const char* end);
            void drawSymbolComment(const char* lineStart, const char* lineEnd, const size_t symbolStartOff, const size_t symbolEndOff, bool* hasAlreadyClicked);
            void drawData(const char* lineStart, const char* lineEnd);
            void drawSymbolLabel(const char* lineStart, const char* lineEnd);

            void drawBranchVis(size_t lineStart, size_t lineEnd, const ImVec2& winStartPos, const ImVec2& winSize, float lineXOff, float lineHeight, float firstLineY);

            void decorateScrollBar(uint16_t PCAddr);

            void pushFileStyle();
            void popFileStyle();
        };
    }
}


#endif