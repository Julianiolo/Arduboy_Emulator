#include "AnalyticsBackend.h"

#include "imgui.h"

ABB::AnalyticsBackend::AnalyticsBackend(Arduboy* ab, const char* winName, bool* open)
: ab(ab), StackSizeBuf(100), sleepCycsBuf(100), winName(winName), open(open)
{
    StackSizeBuf.initTo(0);
    sleepCycsBuf.initTo(0);
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

        addrmcu_t used = StackSizeBuf.size() > 0 ? StackSizeBuf.last() : 0;
        addrmcu_t max = (addrmcu_t)(A32u4::DataSpace::Consts::data_size - 1 - ab->mcu.symbolTable.getMaxRamAddrEnd());
        ImGui::Text("%.2f%% of Stack used (%d/%d)", ((float)used/(float)max)*100, used,max);
        uint64_t usedSum = 0;
        for (size_t i = 0; i < StackSizeBuf.size(); i++) {
            usedSum += StackSizeBuf.get(i);
        }
        float avg = StackSizeBuf.size() > 0 ? (float)usedSum / StackSizeBuf.size() : 0; // prevent div by 0
        ImGui::Text("Average: %.2f%% of Stack used (%.2f/%d)", (avg/(float)max)*100, avg,max);
        ImGui::PlotHistogram("Stack Size",
            &getStackSizeBuf, &StackSizeBuf, (int)StackSizeBuf.size(), 
            0, NULL, 0, (float)max, {0,70}
        );

        ImGui::PlotHistogram("Sleep Cycles",
            &getSleepCycsBuf, &sleepCycsBuf, (int)sleepCycsBuf.size(), 
            0, NULL, 0, (float)ab->cycsPerFrame(), {0,70}
        );

        if(ImGui::Button("reset PC heat")){
            ab->mcu.analytics.resetPCHeat();
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