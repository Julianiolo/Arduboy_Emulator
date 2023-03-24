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
: abb(abb), StackSizeBuf(100), sleepCycsBuf(100), instHeatOrder(MCU::numInsts), winName(winName), open(open)
{
    StackSizeBuf.initTo(0);
    sleepCycsBuf.initTo(0);

    for(size_t i = 0; i<instHeatOrder.size(); i++){
        instHeatOrder[i] = i;
    }
}

void ABB::AnalyticsBackend::update(){
    if(!(abb->mcu.debugger_isHalted() || !abb->mcu.flash_isProgramLoaded())){
        uint16_t SP = abb->mcu.analytics_getMaxSP();
        abb->mcu.analytics_setMaxSP(0xFFFF);
        StackSizeBuf.add(abb->mcu.dataspace_dataSize()-1-SP);

        sleepCycsBuf.add(abb->mcu.analytics_getSleepSum());
        abb->mcu.analytics_setSleepSum(0);
    }
}

void ABB::AnalyticsBackend::draw(){
    if(ImGui::Begin(winName.c_str(), open)){
        winFocused = ImGui::IsWindowFocused();

        {
            MCU::addrmcu_t used = StackSizeBuf.size() > 0 ? StackSizeBuf.last() : 0;
            MCU::addrmcu_t max = (MCU::addrmcu_t)(abb->mcu.dataspace_dataSize() - 1 - abb->symbolTable.getMaxRamAddrEnd());
            ImGui::Text("%.2f%% of suspected Stack used (%d/%d)", ((float)used/(float)max)*100, used,max);
            uint64_t usedSum = std::accumulate(StackSizeBuf.begin(), StackSizeBuf.end(), (uint64_t)0);
            float avg = StackSizeBuf.size() > 0 ? (float)usedSum / StackSizeBuf.size() : 0; // prevent div by 0
            ImGui::Text("Average: %.2f%% of suspected Stack used (%.2f/%d)", (avg/(float)max)*100, avg,max);

            ImGui::PlotHistogram("Stack Size",
                &getStackSizeBuf, &StackSizeBuf, (int)StackSizeBuf.size(), 
                0, NULL, 0, (float)max, {0,70}
            );
        }

        ImGui::PlotHistogram("Sleep Cycles",
            &getSleepCycsBuf, &sleepCycsBuf, (int)sleepCycsBuf.size(), 
            0, NULL, 0, (float)abb->mcu.cycsPerFrame(), {0,70}
        );

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

                for(size_t i = 0; i< MCU::numInsts; i++) {
                    size_t instInd = instHeatOrder[i];
                    ImGui::TableNextRow();
                    ImGui::TableNextColumn();
                    ImGui::TextUnformatted(MCU::getInstName(instInd));

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
    StackSizeBuf.clear();
    sleepCycsBuf.clear();
}


float ABB::AnalyticsBackend::getStackSizeBuf(void* data, int ind){
    RingBuffer<uint16_t>* stackSizeBufPtr = (RingBuffer<uint16_t>*)data;
    if((size_t)ind >= stackSizeBufPtr->size()){
        return 0;
    }
    return stackSizeBufPtr->get(ind);
}
float ABB::AnalyticsBackend::getSleepCycsBuf(void* data, int ind){
    RingBuffer<uint64_t>* sleepCycsBufPtr = (RingBuffer<uint64_t>*)data;
    if((size_t)ind >= sleepCycsBufPtr->size()){
        return 0;
    }
    return (float)sleepCycsBufPtr->get(ind);
}

bool ABB::AnalyticsBackend::isWinFocused() const {
    return winFocused;
}

size_t ABB::AnalyticsBackend::sizeBytes() const {
    size_t sum = 0;

    sum += sizeof(abb);

    sum += DataUtils::approxSizeOf(StackSizeBuf);
    sum += DataUtils::approxSizeOf(sleepCycsBuf);

    sum += sizeof(winFocused);

    sum += DataUtils::approxSizeOf(instHeatOrder);

    sum += DataUtils::approxSizeOf(winName);
    sum += sizeof(open);

    return sum;
}