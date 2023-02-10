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

ABB::LogBackend::Settings ABB::LogBackend::settings;

ABB::LogBackend::LogBackend(Arduboy* ab, const char* winName, bool* open) : ab(ab), winName(winName), open(open) {
    activate();
    ab->setLogCallB(LogBackend::log);
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
        ImGui::SameLine();
        ImGui::TextUnformatted("Show:");
        ImGui::SameLine();
        ImGui::Checkbox("Module",&settings.showModule);
        ImGui::SameLine();
        ImGui::Checkbox("File",&settings.showFileInfo);

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

        const int rowAmt = 1 + !!settings.showModule + !!settings.showFileInfo;
        if(ImGui::BeginTable((winName+" logWin").c_str(), rowAmt, ImGuiTableFlags_SizingStretchProp)){
            ImGui::PushStyleVar(ImGuiStyleVar_ItemSpacing, {0,0});

            float width = ImGui::GetContentRegionAvail().x;
            if(settings.showModule)
                ImGui::TableSetupColumn("Module", 0, 100);
            ImGui::TableSetupColumn("Message", 0, width-(100+170+2*ImGui::GetStyle().FramePadding.x));
            if(settings.showFileInfo)
                ImGui::TableSetupColumn("File info", 0, 170);

            ImGuiListClipper clipper;
            clipper.Begin((int)cache.size());
            while (clipper.Step()) {
                for (int line_no = clipper.DisplayStart; line_no < clipper.DisplayEnd; line_no++) {
                    ImGui::TableNextRow();
                    ImGui::TableNextColumn();

                    auto& entry = logs[cache[line_no]];

                    ImVec4 col = logColors[entry.level];
                    if(col.w < 0) {
                        col = ImGui::GetStyleColorVec4(ImGuiCol_Text) * ImVec4{-col.w,-col.w,-col.w,1};
                    }

                    if(settings.showModule) {
                        if(entry.module.size() > 0)
                            ImGui::TextColored(col, "[%s] ", entry.module.c_str());
                        ImGui::TableNextColumn();
                    }
                        
                    
                    ImGuiExt::TextColored(col, entry.msg.c_str());
                    if(ImGui::IsItemHovered()) {
                        ImGui::BeginTooltip();
                        ImGuiExt::TextColored(col, entry.msg.c_str());
                        ImGui::EndTooltip();
                    }

                    if(settings.showFileInfo) {
                        ImGui::TableNextColumn();
                        if((entry.fileName.size() > 0 || entry.lineNum != -1))
                            ImGui::TextColored(col, " [%s:%d]", 
                                entry.fileName.size() > 0 ? entry.fileName.c_str() : "N/A", 
                                entry.lineNum
                            );
                    }
                }
            }
            clipper.End();
            ImGui::PopStyleVar();
        }
        ImGui::EndTable();
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

ABB::LogBackend* ABB::LogBackend::activeLB = nullptr;
void ABB::LogBackend::activate() {
    activeLB = this;
    ab->activateLog();
}
void ABB::LogBackend::log(A32u4::ATmega32u4::LogLevel logLevel, const char* msg, const char* fileName, int lineNum, const char* module) {
    MCU_ASSERT(activeLB != nullptr);
    activeLB->addLog(logLevel, msg, fileName, lineNum, module);
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