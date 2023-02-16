#include "LogBackend.h"

#define IMGUI_DEFINE_MATH_OPERATORS 1
#include "imgui_internal.h"

#include "../Extensions/imguiExt.h"

ImVec4 ABB::LogBackend::logColors[] = {
    { 0.7f,  0.7f, 0.7f,    -1},
    { 0.7f,  0.7f, 0.7f, -0.7f},
    {    1,     1,    1,    -1},
    {    1, 0.85f,    0,     1},
    {    1,     0,    0,     1}
};

ABB::LogBackend::Settings ABB::LogBackend::settings;

ABB::LogBackend::LogBackend(Arduboy* ab, const char* winName, bool* open) : ab(ab), winName(winName), open(open) {
    ab->mcu.setLogCallB([](A32u4::ATmega32u4::LogLevel logLevel, const char* msg, const char* fileName, int lineNum, const char* module, void* userData) {
        ((LogBackend*)userData)->addLog(logLevel, msg, fileName, lineNum, module);
    }, this);
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
                    filterLevel = (uint8_t)i;
                }
            }
            ImGui::EndCombo();
        }
        ImGui::PopItemWidth();

        if (changed) {
            cache.clear();
            for (size_t i = 0; i < logs.size(); i++) {
                if (logs[i].level >= filterLevel) {
                    cache.push_back(i);
                }
            }
        }

        ImGui::SameLine();
        if(ImGui::Button("Clear Logs")){
            clear();
        }

        ImGui::PushStyleVar(ImGuiStyleVar_CellPadding, { 1, 1 });
        if(ImGui::BeginTable((winName+" logWin").c_str(), 4, ImGuiTableFlags_SizingFixedFit | ImGuiTableFlags_Resizable | ImGuiTableFlags_Hideable | ImGuiTableFlags_Borders)){
            ImGui::TableSetupColumn("Level", 0, 60);
            ImGui::TableSetupColumn("Module", ImGuiTableColumnFlags_DefaultHide, 90);
            ImGui::TableSetupColumn("Message", ImGuiTableColumnFlags_WidthStretch); //middleWidth);
            ImGui::TableSetupColumn("File info", ImGuiTableColumnFlags_DefaultHide, 170);
            ImGui::TableHeadersRow();

            ImGuiListClipper clipper;
            clipper.Begin((int)cache.size());
            while (clipper.Step()) {
                for (int line_no = clipper.DisplayStart; line_no < clipper.DisplayEnd; line_no++) {
                    auto& entry = logs[cache[line_no]];
                    MCU_ASSERT(entry.level < A32u4::ATmega32u4::LogLevel_COUNT);

                    ImVec4 col = logColors[entry.level];
                    if(col.w < 0) {
                        col = ImGui::GetStyleColorVec4(ImGuiCol_Text) * ImVec4{-col.w,-col.w,-col.w,1};
                    }

                    ImGui::TableNextRow();
                    ImGui::TableNextColumn();

                    ImGui::TextColored(col, "[%s]", A32u4::ATmega32u4::logLevelStrs[entry.level]);

                    ImGui::TableNextColumn();

                    if(entry.module.size() > 0)
                        ImGui::TextColored(col, "[%s] ", entry.module.c_str());


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
        }
        ImGui::EndTable();

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

void ABB::LogBackend::addLog(A32u4::ATmega32u4::LogLevel logLevel, const char* msg, const char* fileName, int lineNum, const char* module) {
    logs.push_back({logLevel,msg,module?module:"",fileName?fileName:"",lineNum});
    if (logLevel >= filterLevel)
        cache.push_back(logs.size() - 1);
}

bool ABB::LogBackend::isWinFocused() const {
    return winFocused;
}

void ABB::LogBackend::drawSettings() {
    for(size_t i = 0; i<LogLevel_COUNT; i++) {
        if(i>0)
            ImGui::Separator();
        ImGui::PushID((int)i);

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