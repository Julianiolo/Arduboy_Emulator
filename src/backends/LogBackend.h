#ifndef _ABB_LOG_BACKEND
#define _ABB_LOG_BACKEND

#include <vector>
#include <string>
#include "ATmega32u4.h"
#include "imgui.h"
#include "StringUtils.h"
#include "Arduboy.h"

namespace ABB {
    class LogBackend{
    public:
        enum LogLevel_ {
            LogLevel_None        = A32u4::ATmega32u4::LogLevel_None,
            LogLevel_DebugOutput = A32u4::ATmega32u4::LogLevel_DebugOutput,
            LogLevel_Output      = A32u4::ATmega32u4::LogLevel_Output,
            LogLevel_Warning     = A32u4::ATmega32u4::LogLevel_Warning,
            LogLevel_Error       = A32u4::ATmega32u4::LogLevel_Error,
            LogLevel_COUNT
        };
        static ImVec4 logColors[A32u4::ATmega32u4::LogLevel_COUNT];
        static constexpr const char* logLevelNames[] = {"None", "Debug", "Output", "Warning", "Error"};
    private:
        friend class ArduboyBackend;

        static struct Settings {
            bool showModule = true;
            bool showFileInfo = true;
        } settings;

        std::vector<size_t> cache;
        struct Entry {
            A32u4::ATmega32u4::LogLevel level;
            std::string msg;

            std::string module;
            std::string fileName;
            int lineNum;
        };
        std::vector<Entry> logs;

        Arduboy* ab;
    public:

        std::string winName;
        bool* open;
        uint8_t filterLevel = LogLevel_None;

        LogBackend(Arduboy* ab, const char* winName, bool* open);

        void draw();
        void clear();

        const char* getWinName() const;
    private:
        bool winFocused = false;

        void addLog(A32u4::ATmega32u4::LogLevel logLevel, const char* msg, const char* fileName, int lineNum, const char* module);
    public:

        bool isWinFocused() const;

        static void drawSettings();
    };
}

#endif