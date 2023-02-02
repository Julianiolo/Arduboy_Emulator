#include "LogBackend.h"

#define IMGUI_DEFINE_MATH_OPERATORS 1
#include "imgui_internal.h"

#include "../Extensions/imguiExt.h"

ImVec4 ABB::LogBackend::logColors[] = {
    {  0.7,   0.7, 0.7,   -1},
    {  0.7,   0.7, 0.7, -0.7},
    {    1,     1,   1,   -1},
    {    1, 0.85f,   0,    1},
    {    1,     0,   0,    1}
};

ABB::LogBackend::LogBackend(Arduboy* ab, const char* winName, bool* open) : ab(ab), winName(winName), open(open) {
    activate();
    ab->setLogCallBSimple(LogBackend::log);
    ab->setLogCallB([](A32u4::ATmega32u4::LogLevel logLevel, const char* msg, const char* fileName , size_t lineNum, const char* Module){
        MCU_UNUSED(logLevel); MCU_UNUSED(msg); MCU_UNUSED(fileName); MCU_UNUSED(lineNum); MCU_UNUSED(Module);
    });
}

void ABB::LogBackend::draw() {
    if(ImGui::Begin(winName.c_str(), open)){
        winFocused = ImGui::IsWindowFocused();
        bool changed = false;
        ImGui::PushItemWidth(100);
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
        ImGui::PopItemWidth();

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

                    ImVec4 col = logColors[line.first];
                    if(col.w < 0) {
                        col = ImGui::GetStyleColorVec4(ImGuiCol_Text) * ImVec4{-col.w,-col.w,-col.w,1};
                    }

                    ImGuiExt::TextColored(col, line.second.c_str());
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
    cache.clear();
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

void ABB::LogBackend::drawSettings() {
    for(size_t i = 0; i<LogLevel_COUNT; i++) {
        if(i>0)
            ImGui::Separator();
        ImGui::PushID(i);

        ImGui::TextUnformatted(logLevelNames[i]);

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
                if(ImGui::DragFloat("Brightness", &v, 0.001, 0.1, 1))
                    col.w = -v;
            }
        }else{
            ImGui::ColorEdit3("##edit", (float*)&logColors[i], ImGuiColorEditFlags_NoInputs | ImGuiColorEditFlags_NoAlpha);
        }

        ImGui::Unindent();

        ImGui::PopID();
    }
}