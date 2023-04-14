#ifndef _ABB_LOG_BACKEND
#define _ABB_LOG_BACKEND

#include <vector>
#include <string>
#include <map>
#include "imgui.h"
#include "StringUtils.h"
#include "../utils/icons.h"

#include "../mcu.h"

#define SYS_LOG(_level_,_msg_) ABB::LogBackend::_SystemLog(_level_, SYS_LOG_MODULE, __FILE__, __LINE__, _msg_)
#define SYS_LOGF(_level_,_msg_,...) ABB::LogBackend::_SystemLogf(_level_, SYS_LOG_MODULE, __FILE__, __LINE__, _msg_, __VA_ARGS__)

namespace ABB {
    class LogBackend{
    public:
        enum LogLevel_ {
            LogLevel_None        = LogUtils::LogLevel_None,
            LogLevel_DebugOutput = LogUtils::LogLevel_DebugOutput,
            LogLevel_Output      = LogUtils::LogLevel_Output,
            LogLevel_Warning     = LogUtils::LogLevel_Warning,
            LogLevel_Error       = LogUtils::LogLevel_Error,
            LogLevel_Fatal       = LogUtils::LogLevel_Fatal,
            LogLevel_COUNT
        };
        static ImVec4 logColors[LogUtils::LogLevel_COUNT];
#if USE_ICONS
        static constexpr const char* logLevelIcons[] = {ICON_FA_CIRCLE_NOTCH, ICON_FA_BUG, ICON_FA_LIST, ICON_FA_TRIANGLE_EXCLAMATION, ICON_FA_CIRCLE_EXCLAMATION, ICON_FA_BOMB};
        static std::map<std::string, std::pair<ImVec4,std::string>> moduleIconMap;
#endif
    private:
        friend class ArduboyBackend;

        static struct Settings {
            bool autoScroll = true;
            bool showSystemLog = true;
        } settings;

        struct Entry {
            uint8_t level;
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

        MCU* mcu;
    public:

        std::string winName;
        bool* open;
        uint8_t filterLevel = LogLevel_None;

        LogBackend(MCU* mcu, const char* winName, bool* open);

        void draw();
        void clear();

        const char* getWinName() const;
    private:
        bool winFocused = false;

        void addLog(uint8_t logLevel, const char* msg, const char* fileName, int lineNum, const char* module);
        static void logRecive(uint8_t logLevel, const char* msg, const char* fileName, int lineNum, const char* module, void* userData);
        static void systemAddLog(uint8_t logLevel, const std::string& msg, const char* fileName, int lineNum, const char* module);
    public:

        bool isWinFocused() const;

        static void init();
        static void _SystemLog(uint8_t logLevel, const char* module, const char* fileName, int lineNum, const std::string& msg) {
            systemAddLog(logLevel, msg, fileName, lineNum, module);
        }
        template<typename ... Args>
        static void _SystemLogf(uint8_t logLevel, const char* module, const char* fileName, int lineNum, const char* msg, Args ... args) {
            systemAddLog(logLevel, StringUtils::format(msg, args ...), fileName, lineNum, module);
        }

        std::pair<LogUtils::LogCallB, void*> getLogContext() const;
        void activateLog() const;

        static void drawSettings();

        size_t sizeBytes() const;
    };
}

#endif