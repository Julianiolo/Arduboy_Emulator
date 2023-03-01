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
            static constexpr float branchArrowSpace = 10; // TODO: adj this to fit bigger fonts
            
            static bool showBranches;
            static size_t maxBranchDepth;
        public:
            bool breakpointsEnabled = true;

            const A32u4::SymbolTable* symbolTable = nullptr;
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
            static constexpr SyntaxColors defSyntaxColors{};

            bool showScollBarHints = true;
            bool showScollBarHeat = true;
            bool showLineHeat = true;
            size_t selectedLine = -1;

            void loadSrc(const char* str, const char* strEnd = NULL);
            bool loadSrcFile(const char* path);
            void generateDisasmFile(const A32u4::Flash* data, const A32u4::Disassembler::DisasmFile::AdditionalDisasmInfo& info = A32u4::Disassembler::DisasmFile::AdditionalDisasmInfo());
            void drawFile(uint16_t PCAddr);
            void scrollToLine(size_t line, bool select = false);

            void setSymbolTable(const A32u4::SymbolTable* table);
            void setMcu(A32u4::ATmega32u4* mcuPtr);

            size_t numOfDisasmLines();

            size_t sizeBytes() const;

            static void drawSettings();
        private:
            void drawLine(const char* lineStart, const char* lineEnd, size_t line_no, size_t PCAddr, ImRect& lineRect, bool* hasAlreadyClicked);
            void drawInst(const char* lineStart, const char* lineEnd, bool* hasAlreadyClicked);
            void drawInstParams(const char* start, const char* end);
            void drawSymbolComment(const char* lineStart, const char* lineEnd, const char* symbolStartOff, const char* symbolEndOff, bool* hasAlreadyClicked);
            void drawData(const char* lineStart, const char* lineEnd);
            void drawSymbolLabel(const char* lineStart, const char* lineEnd);

            void drawBranchVis(size_t lineStart, size_t lineEnd, const ImVec2& winStartPos, const ImVec2& winSize, float lineXOff, float lineHeight, float firstLineY);

            void decorateScrollBar(uint16_t PCAddr);

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