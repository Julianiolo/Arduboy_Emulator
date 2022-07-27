#include "LogBackend.h"
#include "../Extensions/imguiExt.h"

ABB::LogBackend::LogBackend(const char* winName, bool* open) : winName(winName), open(open) {
    activate();

    logColors[A32u4::ATmega32u4::LogLevel_None] = ImGui::GetStyleColorVec4(ImGuiCol_Text);
    logColors[A32u4::ATmega32u4::LogLevel_Output] = ImGui::GetStyleColorVec4(ImGuiCol_Text);
    logColors[A32u4::ATmega32u4::LogLevel_DebugOutput] = ImGui::GetStyleColorVec4(ImGuiCol_Text);
    logColors[A32u4::ATmega32u4::LogLevel_Warning] = {1, 0.85f, 0, 1};
    logColors[A32u4::ATmega32u4::LogLevel_Error] = {255, 0, 0, 1};
}

void ABB::LogBackend::draw() {
    if(ImGui::Begin(winName.c_str())){
        winFocused = ImGui::IsWindowFocused();

        if(ImGui::Button("Clear")){
            clear();
        }
        if(ImGui::BeginChild((winName+" logWin").c_str(), {0,0},true)){
            ImGuiListClipper clipper;
            clipper.Begin((int)logs.size());
            while (clipper.Step()) {
                for (int line_no = clipper.DisplayStart; line_no < clipper.DisplayEnd; line_no++) {
                    auto& line = logs[line_no];
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

ABB::LogBackend* ABB::LogBackend::activeLB = nullptr;
void ABB::LogBackend::activate() {
    activeLB = this;
}
void ABB::LogBackend::log(A32u4::ATmega32u4::LogLevel logLevel, const char* msg) {
    if(activeLB != nullptr) {
        activeLB->logs.push_back({logLevel,msg});
    }
}

bool ABB::LogBackend::isWinFocused() const {
    return winFocused;
}