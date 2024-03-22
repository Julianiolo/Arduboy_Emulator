#include "AnalyticsBackend.h"

#include <algorithm>
#include <string>
#include <numeric>

#include "imgui.h"

#include "StringUtils.h"
#include "DataUtils.h"
#include "DataUtilsSize.h"


#include "ArduboyBackend.h"

ABB::AnalyticsBackend::AnalyticsBackend(ArduboyBackend* abb, const char* winName, bool* open)
: abb(abb), stackSizeBuf(100, 0), sleepCycsBuf(100, 0), frameTimeBuf(100), instHeatOrder(Console::numInsts), winName(winName), open(open)
{
    for(size_t i = 0; i<instHeatOrder.size(); i++){
        instHeatOrder[i] = i;
    }
}

void ABB::AnalyticsBackend::update(){
    if(!(abb->mcu.debugger_isHalted() || !abb->mcu.flash_isProgramLoaded())){
        size_t SP = abb->mcu.analytics_getMaxSP();
        abb->mcu.analytics_resetMaxSP();
        stackSizeBuf.add((uint32_t)(abb->mcu.dataspace_dataSize()-1-SP));

        sleepCycsBuf.add((uint32_t)abb->mcu.analytics_getSleepSum());
        abb->mcu.analytics_setSleepSum(0);
    }
}

void ABB::AnalyticsBackend::draw(){
    if(ImGui::Begin(winName.c_str(), open)){
        winFocused = ImGui::IsWindowFocused();

        {
            Console::addrmcu_t used = stackSizeBuf.size() > 0 ? stackSizeBuf.last() : 0;
            Console::addrmcu_t max = (Console::addrmcu_t)(abb->mcu.dataspace_dataSize() - 1 - abb->symbolTable.getMaxRamAddrEnd());
            ImGui::Text("%.2f%% of suspected Stack used (%d/%d)", ((float)used/(float)max)*100, used,max);
            uint64_t usedSum = std::accumulate(stackSizeBuf.begin(), stackSizeBuf.end(), (uint64_t)0);
            float avg = stackSizeBuf.size() > 0 ? (float)usedSum / stackSizeBuf.size() : 0; // prevent div by 0
            ImGui::Text("Average: %.2f%% of suspected Stack used (%.2f/%d)", (avg/(float)max)*100, avg,max);

            ImGui::PlotHistogram("Stack Size",
                &getStackSizeBuf, &stackSizeBuf, (int)stackSizeBuf.size(), 
                0, NULL, 0, (float)max, {0,70}
            );
        }

        ImGui::PlotHistogram("Sleep Cycles",
            &getSleepCycsBuf, &sleepCycsBuf, (int)sleepCycsBuf.size(), 
            0, NULL, 0, (float)abb->mcu.cycsPerFrame(), {0,70}
        );

        {
            float max = 1000/60;
            for(size_t i = 0; i<frameTimeBuf.size(); i++) {
                float v = frameTimeBuf.get(i);
                if(max < v) {
                    max = v;
                }
            }
            ImGui::PlotHistogram("Frame Time",
                &getFrameTimeBuf, &frameTimeBuf, (int)frameTimeBuf.size(), 
                0, NULL, 0, max, {0,70}
            );
        }


        if(ImGui::Button("reset PC heat")){
            abb->mcu.analytics_resetPCHeat();
        }

        if(ImGui::TreeNode("Inst heat")){
            std::stable_sort(instHeatOrder.begin(), instHeatOrder.end(), [&] (size_t a, size_t b) {
                return abb->mcu.analytics_getInstHeat(a) > abb->mcu.analytics_getInstHeat(b);
            });

            constexpr ImGuiTableFlags flags = ImGuiTableFlags_Borders;
            if(ImGui::BeginTable("instTable", 2, flags)){
                ImGui::TableSetupScrollFreeze(0, 1); // make Header always visible
                ImGui::TableSetupColumn("Name");
                ImGui::TableSetupColumn("# of executions");
                ImGui::TableHeadersRow();

                for(size_t i = 0; i< Console::numInsts; i++) {
                    size_t instInd = instHeatOrder[i];
                    ImGui::TableNextRow();
                    ImGui::TableNextColumn();
                    ImGui::TextUnformatted(Console::getInstName(instInd));

                    ImGui::TableNextColumn();
                    {
                        std::string s = StringUtils::addThousandsSeperator(std::to_string(abb->mcu.analytics_getInstHeat(instInd)).c_str());
                        ImVec2 size = ImGui::GetContentRegionAvail();
                        ImVec2 textSize = ImGui::CalcTextSize(s.c_str());
                        ImGui::SetCursorPosX(ImGui::GetCursorPosX()+(size.x-textSize.x));
                        ImGui::TextUnformatted(s.c_str());
                    }
                }
                ImGui::EndTable();
            }
            ImGui::TreePop();
        }
    }
    else {
        winFocused = false;
    }
    ImGui::End();
}

const char* ABB::AnalyticsBackend::getWinName() const {
    return winName.c_str();
}

void ABB::AnalyticsBackend::reset() {
    stackSizeBuf.clear();
    sleepCycsBuf.clear();
    frameTimeBuf.clear();
}


float ABB::AnalyticsBackend::getStackSizeBuf(void* data, int ind){
    RingBuffer<uint32_t>* stackSizeBufPtr = (decltype(ABB::AnalyticsBackend::stackSizeBuf)*)data;
    if((size_t)ind >= stackSizeBufPtr->size()){
        return 0;
    }
    return (float)stackSizeBufPtr->get(ind);
}
float ABB::AnalyticsBackend::getSleepCycsBuf(void* data, int ind){
    RingBuffer<uint32_t>* sleepCycsBufPtr = (decltype(ABB::AnalyticsBackend::sleepCycsBuf)*)data;
    if((size_t)ind >= sleepCycsBufPtr->size()){
        return 0;
    }
    return (float)sleepCycsBufPtr->get(ind);
}
float ABB::AnalyticsBackend::getFrameTimeBuf(void* data, int ind){
    const auto* frameTimeBuf = (decltype(ABB::AnalyticsBackend::frameTimeBuf)*)data;
    if((size_t)ind >= frameTimeBuf->size()){
        return 0;
    }
    return frameTimeBuf->get(ind);
}

bool ABB::AnalyticsBackend::isWinFocused() const {
    return winFocused;
}

size_t ABB::AnalyticsBackend::sizeBytes() const {
    size_t sum = 0;

    sum += sizeof(abb);

    sum += DataUtils::approxSizeOf(stackSizeBuf);
    sum += DataUtils::approxSizeOf(sleepCycsBuf);

    sum += sizeof(winFocused);

    sum += DataUtils::approxSizeOf(instHeatOrder);

    sum += DataUtils::approxSizeOf(winName);
    sum += sizeof(open);

    return sum;
}
