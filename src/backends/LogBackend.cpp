#include "LogBackend.h"

ABB::LogBackend::LogBackend(const char* winName) : winName(winName) {
    activate();

    logColors[A32u4::ATmega32u4::LogLevel_None] = ImGui::GetStyleColorVec4(ImGuiCol_Text);
    logColors[A32u4::ATmega32u4::LogLevel_Output] = ImGui::GetStyleColorVec4(ImGuiCol_Text);
    logColors[A32u4::ATmega32u4::LogLevel_DebugOutput] = ImGui::GetStyleColorVec4(ImGuiCol_Text);
    logColors[A32u4::ATmega32u4::LogLevel_Warning] = {1, 0.85, 0, 1};
    logColors[A32u4::ATmega32u4::LogLevel_Error] = {255, 0, 0, 1};
}

void ABB::LogBackend::draw() {
    if(ImGui::Begin(winName.c_str())){
        if(ImGui::Button("Clear")){
            clear();
        }
        if(ImGui::BeginChild((winName+" logWin").c_str(), {0,0},true)){
            ImGuiListClipper clipper;
            clipper.Begin(logs.size());
            while (clipper.Step()) {
                for (int line_no = clipper.DisplayStart; line_no < clipper.DisplayEnd; line_no++) {
                    auto& line = logs[line_no];
                    ImGui::TextColored(logColors[line.first], line.second.c_str());
                }
            }
            clipper.End();
        }
        ImGui::EndChild();
    }
    ImGui::End();
}

void ABB::LogBackend::clear() {
    logs.clear();
}

ABB::LogBackend* ABB::LogBackend::activeLB = nullptr;
void ABB::LogBackend::activate() {
    activeLB = this;
}
void ABB::LogBackend::log(const char* msg, A32u4::ATmega32u4::LogLevel logLevel) {
    if(activeLB != nullptr) {
        activeLB->logs.push_back({logLevel,msg});
    }
}