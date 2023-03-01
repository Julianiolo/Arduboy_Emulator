#ifndef _ABB_LOG_BACKEND
#define _ABB_LOG_BACKEND

#include <vector>
#include <string>
#include <map>
#include "ATmega32u4.h"
#include "imgui.h"
#include "StringUtils.h"
#include "Arduboy.h"
#include "../utils/icons.h"

#define ABB_LOG(_level_,_module_,_msg_) ABB::LogBackend::_SystemLog(_level_, _module_, __FILE__, __LINE__, _msg_)
#define ABB_LOGF(_level_,_module_,_msg_,...) ABB::LogBackend::_SystemLogf(_level_, _module_, __FILE__, __LINE__, _msg_, __VA_ARGS__)

namespace ABB {
    class LogBackend{
    public:
        enum LogLevel_ {
            LogLevel_None        = A32u4::ATmega32u4::LogLevel_None,
            LogLevel_DebugOutput = A32u4::ATmega32u4::LogLevel_DebugOutput,
            LogLevel_Output      = A32u4::ATmega32u4::LogLevel_Output,
            LogLevel_Warning     = A32u4::ATmega32u4::LogLevel_Warning,
            LogLevel_Error       = A32u4::ATmega32u4::LogLevel_Error,
            LogLevel_Fatal       = A32u4::ATmega32u4::LogLevel_Fatal,
            LogLevel_COUNT
        };
        static ImVec4 logColors[A32u4::ATmega32u4::LogLevel_COUNT];
#if USE_ICONS
        static constexpr const char* logLevelIcons[] = {ICON_FA_CIRCLE_NOTCH, ICON_FA_BUG, ICON_FA_LIST, ICON_FA_TRIANGLE_EXCLAMATION, ICON_FA_CIRCLE_EXCLAMATION, ICON_FA_BOMB};
        static std::map<std::string, std::string> moduleIconMap;
#endif
    private:
        friend class ArduboyBackend;

        static struct Settings {
            bool autoScroll = true;
            bool showSystemLog = true;
        } settings;

        struct Entry {
            A32u4::ATmega32u4::LogLevel level;
            std::string msg;

            std::string module;
            std::string fileName;
            int lineNum;

            size_t id;

            size_t sizeBytes() const;
        };

        static size_t idCntr;
        std::vector<Entry> logs;
        static std::vector<Entry> systemLogs;
        size_t lastUpdatedSystemLogLen = 0;
        std::vector<std::pair<bool,size_t>> cache;

        Entry& getEntryFromCache(size_t i);
        void redoCache();
        void updateCacheWithSystemLog();

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
        static void systemAddLog(A32u4::ATmega32u4::LogLevel logLevel, const std::string& msg, const char* fileName, int lineNum, const char* module);
    public:

        bool isWinFocused() const;

        static void init();
        static void _SystemLog(A32u4::ATmega32u4::LogLevel logLevel, const char* module, const char* fileName, int lineNum, const std::string& msg) {
            systemAddLog(logLevel, msg, fileName, lineNum, module);
        }
        template<typename ... Args>
        static void _SystemLogf(A32u4::ATmega32u4::LogLevel logLevel, const char* module, const char* fileName, int lineNum, const char* msg, Args ... args) {
            systemAddLog(logLevel, StringUtils::format(msg, args ...), fileName, lineNum, module);
        }

        static void drawSettings();

        size_t sizeBytes() const;
    };
}

#endif