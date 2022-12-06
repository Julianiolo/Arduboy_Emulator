#include "LogBackend.h"

#define IMGUI_DEFINE_MATH_OPERATORS 1
#include "imgui_internal.h"

#include "../Extensions/imguiExt.h"

ABB::LogBackend::LogBackend(Arduboy* ab, const char* winName, bool* open) : ab(ab), winName(winName), open(open) {
    activate();
    ab->setLogCallBSimple(LogBackend::log);
    ab->setLogCallB([](A32u4::ATmega32u4::LogLevel logLevel, const char* msg, const char* fileName , size_t lineNum, const char* Module){});

    logColors[A32u4::ATmega32u4::LogLevel_None] = ImGui::GetStyleColorVec4(ImGuiCol_Text);
    logColors[A32u4::ATmega32u4::LogLevel_DebugOutput] = ImGui::GetStyleColorVec4(ImGuiCol_Text) * ImVec4{0.7f,0.7f,0.7f,1};
    logColors[A32u4::ATmega32u4::LogLevel_Output] = ImGui::GetStyleColorVec4(ImGuiCol_Text);
    logColors[A32u4::ATmega32u4::LogLevel_Warning] = {1, 0.85f, 0, 1};
    logColors[A32u4::ATmega32u4::LogLevel_Error] = {255, 0, 0, 1};
}

void ABB::LogBackend::draw() {
    if(ImGui::Begin(winName.c_str())){
        winFocused = ImGui::IsWindowFocused();

        constexpr const char* logLevelNames[] = {"None", "Debug", "Output", "Warning", "Error"};
        bool changed = false;
        if (ImGui::BeginCombo("Filter Level", logLevelNames[filterLevel])) {
            for (size_t i = 0; i < A32u4::ATmega32u4::LogLevel_COUNT; i++) {
                if (ImGui::Selectable(logLevelNames[i])) {
                    if (filterLevel != i)
                        changed = true;
                    filterLevel = i;
                }
            }
            ImGui::EndCombo();
        }

        if (changed) {
            cache.clear();
            for (size_t i = 0; i < logs.size(); i++) {
                if (logs[i].first >= filterLevel) {
                    cache.push_back(i);
                }
            }
        }

        ImGui::SameLine();
        if(ImGui::Button("Clear Logs")){
            clear();
        }
        if(ImGui::BeginChild((winName+" logWin").c_str(), {0,0},true, ImGuiWindowFlags_HorizontalScrollbar)){
            ImGuiListClipper clipper;
            clipper.Begin((int)cache.size());
            while (clipper.Step()) {
                for (int line_no = clipper.DisplayStart; line_no < clipper.DisplayEnd; line_no++) {
                    auto& line = logs[cache[line_no]];
                    ImGuiExt::TextColored(logColors[line.first], line.second.c_str());
                }
            }
            clipper.End();
        }
        ImGui::EndChild();
    }
    else {
        winFocused = false;
    }
    ImGui::End();
}

void ABB::LogBackend::clear() {
    logs.clear();
}

const char* ABB::LogBackend::getWinName() const {
    return winName.c_str();
}

void ABB::LogBackend::addLog(A32u4::ATmega32u4::LogLevel logLevel, const char* msg) {
    logs.push_back({logLevel,msg});
    if (logLevel >= filterLevel)
        cache.push_back(logs.size() - 1);
}

ABB::LogBackend* ABB::LogBackend::activeLB = nullptr;
void ABB::LogBackend::activate() {
    activeLB = this;
    ab->activateLog();
}
void ABB::LogBackend::log(A32u4::ATmega32u4::LogLevel logLevel, const char* msg) {
    if(activeLB != nullptr) {
        activeLB->addLog(logLevel, msg);
    }
}

bool ABB::LogBackend::isWinFocused() const {
    return winFocused;
}