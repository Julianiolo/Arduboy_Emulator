#include "LogBackend.h"

#include "raylib.h"

#define IMGUI_DEFINE_MATH_OPERATORS 1
#include "imgui_internal.h"

#include "../Extensions/imguiExt.h"

#include "DataUtils.h"
#include "DataUtilsSize.h"

#define LU_MODULE "LogBackend"

ImVec4 ABB::LogBackend::logColors[] = {
    { 0.7f,  0.7f, 0.7f,    -1},
    { 0.7f,  0.7f, 0.7f, -0.7f},
    {    1,     1,    1,    -1},
    {    1, 0.85f,    0,     1},
    {    1,     0,    0,     1},
    { 0.9f,     0,    0,     1}
};

size_t ABB::LogBackend::idCntr = 1;

ABB::LogBackend::Settings ABB::LogBackend::settings;
#if USE_ICONS
std::map<std::string, std::pair<ImVec4,std::string>> ABB::LogBackend::moduleIconMap;
#endif
std::vector<ABB::LogBackend::Entry> ABB::LogBackend::systemLogs;

void ABB::LogBackend::init() {
    SetTraceLogCallback([](int logLevel, const char* text, va_list args) {
        int len = std::vsnprintf(NULL, 0, text, args);
        if(len <= 0) {
            LU_LOGF_(LogUtils::LogLevel_Error, "Cannot format raylib log: \"%s\"", text);
            return;
        }

        char* buf = new char[len];
        std::vsnprintf(buf, len, text, args);
        std::string s(buf, buf + len - 1);
        delete[] buf;

        uint8_t level;
        switch (logLevel) {
            case LOG_NONE:    level = LogUtils::LogLevel_None;        break;
            case LOG_DEBUG:   level = LogUtils::LogLevel_DebugOutput; break;
            case LOG_INFO:    level = LogUtils::LogLevel_Output;      break;
            case LOG_WARNING: level = LogUtils::LogLevel_Warning;     break;
            case LOG_ERROR:   level = LogUtils::LogLevel_Error;       break;
            case LOG_FATAL:   level = LogUtils::LogLevel_Fatal;       break;
            default:          level = LogUtils::LogLevel_Fatal;       break;
        }

        systemAddLog(level, s, NULL, -1, "raylib");
    });

#if USE_ICONS
    constexpr ImVec4 stdIconCol = {1,1,1,1};

    moduleIconMap["ATmega32u4"]      = { stdIconCol,ICON_FA_COMPUTER };
    moduleIconMap["CPU"]             = { stdIconCol,ICON_FA_MICROCHIP};
    moduleIconMap["DataSpace"]       = { stdIconCol,ICON_FA_MICROCHIP};
    moduleIconMap["Flash"]           = { stdIconCol,ICON_FA_HARD_DRIVE};

    moduleIconMap["Debugger"]        = { stdIconCol,ICON_FA_BUG_SLASH};
    moduleIconMap["Analytics"]       = { stdIconCol,ICON_FA_CHART_LINE};
    moduleIconMap["Disassembler"]    = { stdIconCol,ICON_FA_DIAGRAM_PREDECESSOR};
    moduleIconMap["SymbolTable"]     = { stdIconCol,ICON_FA_LIST};

    moduleIconMap["BinTools"]        = { stdIconCol,ICON_FA_TROWEL_BRICKS};

    moduleIconMap["Arduboy"]         = { stdIconCol,ICON_FA_GAMEPAD};
    moduleIconMap["Display"]         = { stdIconCol,ICON_FA_DISPLAY};

    moduleIconMap["ArduboyBackend"]  = { stdIconCol,ICON_FA_CHESS_ROOK};
    moduleIconMap["LogBackend"]      = { stdIconCol,ICON_FA_BARS_STAGGERED};
    moduleIconMap["DebuggerBackend"] = { stdIconCol,ICON_FA_BUGS};
    moduleIconMap["McuInfoBackend"]  = { stdIconCol,ICON_FA_INFO};

    moduleIconMap["ELF"]             = { stdIconCol,ICON_FA_FILE_PEN };
    moduleIconMap["DisasmFile"]      = { stdIconCol,ICON_FA_FILE_CODE };

    moduleIconMap["raylib"]          = { { 0.2f,0.2f,1,1 },ICON_FA_BOLT };

#endif
}


ABB::LogBackend::LogBackend(MCU* mcu, const char* winName, bool* open) : mcu(mcu), winName(winName), open(open) {
    activateLog();
    mcu->setLogCallB([](uint8_t logLevel, const char* msg, const char* fileName, int lineNum, const char* module, void* userData) {
        ((LogBackend*)userData)->addLog(logLevel, msg, fileName, lineNum, module);
    }, this);
    mcu->activateLog();
}

void ABB::LogBackend::systemAddLog(uint8_t logLevel, const std::string& msg, const char* fileName, int lineNum, const char* module) {
    systemLogs.push_back({ logLevel,msg,module ? module : "",fileName ? fileName : "",lineNum, idCntr++});
}

void ABB::LogBackend::addLog(uint8_t logLevel, const char* msg, const char* fileName, int lineNum, const char* module) {
    updateCacheWithSystemLog();
    logs.push_back({logLevel,msg,module?module:"",fileName?fileName:"",lineNum, idCntr++});
    if (logLevel >= filterLevel)
        cache.push_back({ true, logs.size() - 1 });
}

void ABB::LogBackend::logRecive(uint8_t logLevel, const char* msg, const char* fileName, int lineNum, const char* module, void* userData) {
    ((LogBackend*)userData)->addLog(logLevel, msg, fileName, lineNum, module);
}

std::pair<LogUtils::LogCallB, void*> ABB::LogBackend::getLogContext() const {
    return {logRecive, (void*)this};
}

void ABB::LogBackend::activateLog() const {
    LogUtils::activateLogTarget(logRecive, (void*)this);
}

ABB::LogBackend::Entry& ABB::LogBackend::getEntryFromCache(size_t i) {
    auto& cacheEntry = cache[i];
    return (cacheEntry.first ? logs : systemLogs)[cacheEntry.second];
}

void ABB::LogBackend::updateCacheWithSystemLog() {
    if (lastUpdatedSystemLogLen != systemLogs.size()) {
        lastUpdatedSystemLogLen = systemLogs.size();
        size_t lastId = 0;
        if (cache.size() > 0)
            lastId = getEntryFromCache(0).id;

        size_t sysInd = 0;
        while (sysInd < systemLogs.size() && systemLogs[sysInd].id < lastId)
            sysInd++;

        for (size_t i = sysInd; i < systemLogs.size(); i++) {
            if (systemLogs[i].level >= filterLevel) {
                cache.push_back({false, i});
            }
        }
    }
}

void ABB::LogBackend::redoCache() {
    cache.clear();
    if (!settings.showSystemLog) {
        for (size_t i = 0; i < logs.size(); i++) {
            if (logs[i].level > filterLevel)
                cache.push_back({ true, i });
        }
    }
    else {
        size_t logInd = 0;
        size_t sysInd = 0;
        while (logInd < logs.size() || sysInd < systemLogs.size()) {
            size_t logID = -1;
            while (logInd < logs.size()) {
                logID = logs[logInd].id;

                if (logs[logInd].level >= filterLevel)
                    break;

                logID = -1;
                logInd++;
            }
            size_t systemLogID = -1;
            while (sysInd < systemLogs.size()) {
                systemLogID = systemLogs[sysInd].id;

                if (systemLogs[sysInd].level >= filterLevel)
                    break;

                systemLogID = -1;
                sysInd++;
            }

            if (logID == (size_t)-1 && systemLogID == (size_t)-1)
                break;

            if (logID < systemLogID) {
                cache.push_back({true, logInd});
                logInd++;
            }
            else {
                cache.push_back({false, sysInd});
                sysInd++;
            }
        }
    }
}

void ABB::LogBackend::draw() {
    updateCacheWithSystemLog();

    if(ImGui::Begin(winName.c_str(), open)){
        winFocused = ImGui::IsWindowFocused();
        bool changed = false;
        ImGui::PushItemWidth(100);
        {
#if USE_ICONS
            DU_STATIC_ASSERT(DU_ARRAYSIZE(LogUtils::logLevelStrs) == DU_ARRAYSIZE(logLevelIcons));

            char buf[32];
            std::snprintf(buf, sizeof(buf), "%s %s", logLevelIcons[filterLevel], LogUtils::logLevelStrs[filterLevel]);
            if (ImGui::BeginCombo("Filter Level", buf)) {
                for (size_t i = 0; i < LogUtils::LogLevel_COUNT; i++) {
                    std::snprintf(buf, sizeof(buf), "%s %s", logLevelIcons[i], LogUtils::logLevelStrs[i]);
                    if (ImGui::Selectable(buf)) {
                        if (filterLevel != i)
                            changed = true;
                        filterLevel = (uint8_t)i;
                    }
                }
                ImGui::EndCombo();
            }
#else
            if (ImGui::BeginCombo("Filter Level", A32u4::ATmega32u4::logLevelStrs[filterLevel])) {
                for (size_t i = 0; i < A32u4::ATmega32u4::LogLevel_COUNT; i++) {
                    if (ImGui::Selectable(A32u4::ATmega32u4::logLevelStrs[i])) {
                        if (filterLevel != i)
                            changed = true;
                        filterLevel = (uint8_t)i;
                    }
                }
                ImGui::EndCombo();
            }
#endif
        }
        ImGui::PopItemWidth();

        ImGui::SameLine();
        if (ImGui::Checkbox("System Log", &settings.showSystemLog))
            changed = true;

        if (changed) {
            redoCache();
        }

        ImGui::SameLine();
        ImGui::Checkbox("Autoscroll", &settings.autoScroll);

        ImGui::SameLine();
        if(ImGui::Button("Clear")){
            clear();
        }

        ImGui::PushStyleVar(ImGuiStyleVar_CellPadding, { 1, 1 });
        if(ImGui::BeginTable((winName+" logWin").c_str(), 4, ImGuiTableFlags_SizingFixedFit | ImGuiTableFlags_Hideable | ImGuiTableFlags_BordersOuter | ImGuiTableFlags_ScrollY)){ //ImGuiTableFlags_Resizable
            ImGui::TableSetupScrollFreeze(0, 1); // Make top row always visible
            const float iconWidth = ImGui::GetTextLineHeight() + 2;
            ImGui::TableSetupColumn("Module", (USE_ICONS)?0:ImGuiTableColumnFlags_DefaultHide, (USE_ICONS) ? iconWidth : 90);
            ImGui::TableSetupColumn("Level", 0, (USE_ICONS) ? iconWidth : 60);
            ImGui::TableSetupColumn("Message", ImGuiTableColumnFlags_NoHide | ImGuiTableColumnFlags_WidthStretch); //middleWidth);
            ImGui::TableSetupColumn("File info", ImGuiTableColumnFlags_DefaultHide, 170);
            ImGui::TableHeadersRow();

            ImGuiListClipper clipper;
            clipper.Begin((int)cache.size());
            while (clipper.Step()) {
                for (int line_no = clipper.DisplayStart; line_no < clipper.DisplayEnd; line_no++) {
                    auto& entry = getEntryFromCache(line_no);
                    DU_ASSERT(entry.level < LogUtils::LogLevel_COUNT);

                    ImVec4 col = logColors[entry.level];
                    if(col.w < 0) {
                        col = ImGui::GetStyleColorVec4(ImGuiCol_Text) * ImVec4{-col.w,-col.w,-col.w,1};
                    }

                    ImGui::TableNextRow();
                    ImGui::TableNextColumn();

                    if (entry.module.size() > 0) {
#if USE_ICONS
                        auto res = moduleIconMap.find(entry.module);

                        const char* icon = ICON_FA_QUESTION;
                        ImVec4 iconCol = { 1,1,1,1 };
                        if (res != moduleIconMap.end()) {
                            icon = res->second.second.c_str();
                            iconCol = res->second.first;
                        }

                        ImGuiExt::TextColored(iconCol, icon);
                        if (ImGui::IsItemHovered()) {
                            ImGui::BeginTooltip();
                            ImGui::TextColored(iconCol, "[%s] ", entry.module.c_str());
                            ImGui::EndTooltip();
                        }

#else
                        ImGui::TextColored(col, "[%s] ", entry.module.c_str());
#endif
                    }

                    ImGui::TableNextColumn();

#if USE_ICONS
                    ImGuiExt::TextColored(col, logLevelIcons[entry.level]);
                    if (ImGui::IsItemHovered()) {
                        ImGui::BeginTooltip();
                        ImGui::TextColored(col, "[%s]", LogUtils::logLevelStrs[entry.level]);
                        ImGui::EndTooltip();
                    }
#else
                    ImGui::TextColored(col, "[%s]", MCU::logLevelStrs[entry.level]);
#endif

                    ImGui::TableNextColumn();
                    
                    ImGuiExt::TextColored(col, entry.msg.c_str());
                    if(ImGui::IsItemHovered()) {
                        ImGui::SetNextWindowSize({300,0});
                        ImGui::BeginTooltip();
                        ImGui::TextWrapped("%s", entry.msg.c_str());
                        ImGui::EndTooltip();
                    }

                    ImGui::TableNextColumn();
                    if((entry.fileName.size() > 0 || entry.lineNum != -1))
                        ImGui::TextColored(col, "[%s:%d]", 
                            entry.fileName.size() > 0 ? StringUtils::getFileName(entry.fileName.c_str()) : "N/A", 
                            entry.lineNum
                        );
                }
            }
            clipper.End();
            if (settings.autoScroll && ImGui::GetScrollY() >= ImGui::GetScrollMaxY())
                ImGui::SetScrollHereY(1.0f);
            ImGui::EndTable();
        }

        ImGui::PopStyleVar();

        
    }
    else {
        winFocused = false;
    }
    ImGui::End();
}

void ABB::LogBackend::clear() {
    logs.clear();
    cache.clear();
}

const char* ABB::LogBackend::getWinName() const {
    return winName.c_str();
}



bool ABB::LogBackend::isWinFocused() const {
    return winFocused;
}

void ABB::LogBackend::drawSettings() {
    for(size_t i = 0; i<LogLevel_COUNT; i++) {
        if(i>0)
            ImGui::Separator();
        ImGui::PushID((int)i);

        ImGui::TextUnformatted(LogUtils::logLevelStrs[i]);

        ImGui::Indent();

        ImVec4& col = logColors[i];

        {
            bool v = col.w < 0;
            if(ImGui::Checkbox("Use Text color",&v))
                col.w = -col.w;
        }
        if(col.w < 0){

            ImVec4 showCol = ImGui::GetStyleColorVec4(ImGuiCol_Text) * ImVec4{-col.w,-col.w,-col.w,1};

            ImGui::ColorButton("##AAAAA", showCol);
            ImGui::SameLine();
            {
                float v = -col.w;
                if(ImGui::DragFloat("Brightness", &v, 0.001f, 0.1f, 1))
                    col.w = -v;
            }
        }else{
            ImGui::ColorEdit3("##edit", (float*)&logColors[i], ImGuiColorEditFlags_NoInputs | ImGuiColorEditFlags_NoAlpha);
        }

        ImGui::Unindent();

        ImGui::PopID();
    }
}

size_t ABB::LogBackend::Entry::sizeBytes() const {
    size_t sum = 0; 

    sum += sizeof(level);
    sum += DataUtils::approxSizeOf(msg);

    sum += DataUtils::approxSizeOf(module);
    sum += DataUtils::approxSizeOf(fileName);
    sum += sizeof(lineNum);

    sum += sizeof(id);

    return sum;
}

size_t ABB::LogBackend::sizeBytes() const {
    size_t sum = 0; 

    for (auto& e : logs)
        sum += e.sizeBytes();
    sum += sizeof(logs) + (logs.capacity()-logs.size())*sizeof(Entry);

    sum += sizeof(lastUpdatedSystemLogLen);
    sum += DataUtils::approxSizeOf(cache);

    sum += sizeof(mcu);

    sum += DataUtils::approxSizeOf(winName);
    sum += sizeof(open);

    sum += sizeof(filterLevel);

    sum += sizeof(winFocused);

    return sum;
}