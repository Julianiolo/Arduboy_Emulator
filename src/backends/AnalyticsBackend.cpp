#include "AnalyticsBackend.h"

#include <algorithm>
#include <string>
#include <numeric>

#include "imgui.h"

#include "StringUtils.h"
#include "DataUtils.h"

ABB::AnalyticsBackend::AnalyticsBackend(Arduboy* ab, const char* winName, bool* open)
: ab(ab), StackSizeBuf(100), sleepCycsBuf(100), instHeatOrder(A32u4::InstHandler::instList.size()), winName(winName), open(open)
{
    StackSizeBuf.initTo(0);
    sleepCycsBuf.initTo(0);

    for(size_t i = 0; i<instHeatOrder.size(); i++){
        instHeatOrder[i] = i;
    }
}

void ABB::AnalyticsBackend::update(){
    if(!(ab->mcu.debugger.isHalted() || !ab->mcu.flash.isProgramLoaded())){
        uint16_t SP = ab->mcu.analytics.maxSP;
        ab->mcu.analytics.maxSP = 0xFFFF;
        StackSizeBuf.add(A32u4::DataSpace::Consts::data_size-1-SP);

        sleepCycsBuf.add(ab->mcu.analytics.sleepSum);
        ab->mcu.analytics.sleepSum = 0;
    }
}

void ABB::AnalyticsBackend::draw(){
    if(ImGui::Begin(winName.c_str(), open)){
        winFocused = ImGui::IsWindowFocused();

        {
            addrmcu_t used = StackSizeBuf.size() > 0 ? StackSizeBuf.last() : 0;
            addrmcu_t max = (addrmcu_t)(A32u4::DataSpace::Consts::data_size - 1 - ab->mcu.symbolTable.getMaxRamAddrEnd());
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
            0, NULL, 0, (float)ab->cycsPerFrame(), {0,70}
        );

        if(ImGui::Button("reset PC heat")){
            ab->mcu.analytics.resetPCHeat();
        }

        if(ImGui::TreeNode("Inst heat")){
            std::stable_sort(instHeatOrder.begin(), instHeatOrder.end(), [&] (size_t a, size_t b) {
                return ab->mcu.analytics.getInstHeat()[a] > ab->mcu.analytics.getInstHeat()[b];
            });

            constexpr ImGuiTableFlags flags = ImGuiTableFlags_Borders;
            if(ImGui::BeginTable("instTable", 2, flags)){
                ImGui::TableSetupScrollFreeze(0, 1); // make Header always visible
                ImGui::TableSetupColumn("Name");
                ImGui::TableSetupColumn("# of executions");
                ImGui::TableHeadersRow();

                for(size_t i = 0; i<A32u4::InstHandler::instList.size(); i++) {
                    size_t instInd = instHeatOrder[i];
                    const auto& inst = A32u4::InstHandler::instList[instInd];
                    ImGui::TableNextRow();
                    ImGui::TableNextColumn();
                    ImGui::TextUnformatted(inst.name);

                    ImGui::TableNextColumn();
                    {
                        std::string s = StringUtils::addThousandsSeperator(std::to_string(ab->mcu.analytics.getInstHeat()[instInd]).c_str());
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

    sum += sizeof(ab);

    sum += DataUtils::approxSizeOf(StackSizeBuf);
    sum += DataUtils::approxSizeOf(sleepCycsBuf);

    sum += sizeof(winFocused);

    sum += DataUtils::approxSizeOf(instHeatOrder);

    sum += DataUtils::approxSizeOf(winName);
    sum += sizeof(open);

    return sum;
}