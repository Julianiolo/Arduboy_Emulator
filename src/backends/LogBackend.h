#ifndef _ABB_LOG_BACKEND
#define _ABB_LOG_BACKEND

#include <vector>
#include <string>
#include "ATmega32u4.h"
#include "imgui.h"

namespace ABB {
    class LogBackend{
    private:
        std::vector<std::pair<A32u4::ATmega32u4::LogLevel,std::string>> logs;
    public:
        std::string winName;
        ImVec4 logColors[A32u4::ATmega32u4::LogLevel_COUNT];

        LogBackend(const char* winName);

        void draw();
        void clear();
    private:
        static LogBackend* activeLB;
    public:
        void activate();
        static void log(const char* msg, A32u4::ATmega32u4::LogLevel logLevel);
    };
}

#endif