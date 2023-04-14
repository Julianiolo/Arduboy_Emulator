#ifndef _ASM_VIEWER
#define _ASM_VIEWER

#include <vector>
#include <map>
#include <string>

#include "../mcu.h"

#include "imgui.h"
#define IMGUI_DEFINE_MATH_OPERATORS 1
#include "imgui_internal.h"

#include "DisasmFile.h"
#include "SymbolTable.h"

namespace ABB{
    namespace utils{
        class AsmViewer{
        public:
            std::string title;
            DisasmFile file;

        private:
            float scrollSet = -1;

        public:

            struct Settings {
                static constexpr float breakpointExtraPadding = 3;

                float branchWidth = 2;
                float branchSpacing = 1;
                static constexpr float branchArrowSpace = 10; // TODO: adj this to fit bigger fonts

                bool showBranches = true;
                size_t maxBranchDepth = 16;

                bool showBreakpoints = true;
            };
            static Settings settings;
            
            struct SyntaxColors{
                ImVec4 PCAddr = { 1,0.5f,0,1 };
                ImVec4 rawInstBytes = {1,1,0,1};
                ImVec4 instName = {0.2f,0.2f,0.7f,1};
                ImVec4 instParams = {0.2f,0.4f,0.7f,1};
                ImVec4 asmComment = {0.4f,0.6f,0.4f,1};
                ImVec4 asmCommentSymbolBrackets = {0.3f,0.4f,0.7f,1};
                ImVec4 asmCommentSymbol = {0.5f,0.5f,0.7f,1};
                ImVec4 asmCommentSymbolOffset = {0.4f,0.4f,0.6f,1};

                ImVec4 syntaxLabelAddr = {1,0.7f,1,1};
                ImVec4 syntaxLabelText = {1,0,1,1};

                ImVec4 dataBlock = {0,1,1,1};
                ImVec4 dataBlockText = {0.5f,1,0.5f,1};

                ImVec4 srcCodeText = {0.6f,0.6f,0.7f,1};

                ImVec4 branchClipped = {70/255.0f, 245/255.0f, 130/255.0f, 1};
            };
            static SyntaxColors syntaxColors;
            static const SyntaxColors defSyntaxColors;

            bool showScollBarHints = true;
            bool showScollBarHeat = true;
            bool showLineHeat = true;
            size_t selectedLine = -1;

            void loadSrc(const char* str, const char* strEnd = NULL);
            void loadDisasmFile(const DisasmFile& file);
            void drawFile(uint16_t PCAddr, MCU* mcu, const EmuUtils::SymbolTable* symbolTable);
            void scrollToLine(size_t line, bool select = false);
            void scrollToAddr(size_t addr, bool select = false);

            size_t numOfDisasmLines();

            size_t sizeBytes() const;

            static void drawSettings();
        private:
            void drawLine(const char* lineStart, const char* lineEnd, size_t line_no, size_t PCAddr, ImRect& lineRect, bool* hasAlreadyClicked, MCU* mcu, const EmuUtils::SymbolTable* symbolTable);
            void drawInst(const char* lineStart, const char* lineEnd, bool* hasAlreadyClicked, MCU* mcu, const EmuUtils::SymbolTable* symbolTable);
            void drawInstParams(const char* start, const char* end, const char* instStart, const char* instEnd, const char* addrStart, const char* addrEnd, bool* hasAlreadyClicked, MCU* mcu, const EmuUtils::SymbolTable* symbolTable);
            void drawSymbolComment(const char* lineStart, const char* lineEnd, const char* symbolStartOff, const char* symbolEndOff, bool* hasAlreadyClicked, const EmuUtils::SymbolTable* symbolTable);
            void drawData(const char* lineStart, const char* lineEnd);
            void drawSymbolLabel(const char* lineStart, const char* lineEnd, const EmuUtils::SymbolTable* symbolTable);

            void drawBranchVis(size_t lineStart, size_t lineEnd, const ImVec2& winStartPos, const ImVec2& winSize, float lineXOff, float lineHeight, float firstLineY);

            void decorateScrollBar(uint16_t PCAddr, MCU* mcu);

            void pushFileStyle();
            void popFileStyle();
        };
    }
}

namespace DataUtils {
    inline size_t approxSizeOf(const ABB::utils::AsmViewer& v) {
        return v.sizeBytes();
    }
}


#endif