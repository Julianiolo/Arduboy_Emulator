#include "AnalyticsBackend.h"

#include "imgui.h"

ABB::AnalyticsBackend::AnalyticsBackend(Arduboy* ab, const char* winName, const utils::SymbolTable* symbolTable)
: ab(ab), symbolTable(symbolTable), name(std::string(winName) + " - Analytics"), StackSizeBuf(100), sleepCycsBuf(100)
{
    StackSizeBuf.initTo(0);
    sleepCycsBuf.initTo(0);
}

void ABB::AnalyticsBackend::update(){
    if(!ab->mcu.debugger.isHalted()){
        uint16_t SP = ab->mcu.analytics.maxSP;
        ab->mcu.analytics.maxSP = 0xFFFF;
        StackSizeBuf.add(A32u4::DataSpace::Consts::data_size-1-SP);

        sleepCycsBuf.add(ab->mcu.analytics.sleepSum);
        ab->mcu.analytics.sleepSum = 0;
    }
}

void ABB::AnalyticsBackend::draw(){
    if(ImGui::Begin(name.c_str())){
        uint16_t used = StackSizeBuf.size() > 0 ? StackSizeBuf.last() : 0;
        uint16_t max = A32u4::DataSpace::Consts::data_size - 1 - symbolTable->getMaxRamAddrEnd();
        ImGui::Text("%.2f%% of Stack used (%d/%d)", ((float)used/(float)max)*100, used,max);
        uint64_t usedSum = 0;
        for (size_t i = 0; i < StackSizeBuf.size(); i++) {
            usedSum += StackSizeBuf.get(i);
        }
        float avg = (float)usedSum / StackSizeBuf.size();
        ImGui::Text("Average: %.2f%% of Stack used (%.2f/%d)", (avg/(float)max)*100, avg,max);
        ImGui::PlotHistogram("Stack Size",
            &getStackSizeBuf, &StackSizeBuf, StackSizeBuf.size(), 
            0, NULL, 0, A32u4::DataSpace::Consts::data_size-1 - symbolTable->getMaxRamAddrEnd(), {0,70}
        );

        ImGui::PlotHistogram("Sleep Cycles",
            &getSleepCycsBuf, &sleepCycsBuf, sleepCycsBuf.size(), 
            0, NULL, 0, ab->cycsPerFrame(), {0,70}
        );
    }
    ImGui::End();
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
    return sleepCycsBufPtr->get(ind);
}

void ABB::AnalyticsBackend::reset() {
    StackSizeBuf.clear();
    sleepCycsBuf.clear();
}