#include "AnalyticsBackend.h"

#include "imgui.h"

ABB::AnalyticsBackend::AnalyticsBackend(Arduboy* ab, const char* winName, const utils::SymbolTable* symbolTable)
: ab(ab), symbolTable(symbolTable), name(std::string(winName) + " - Analytics"), StackSizeBuf(100)
{
    StackSizeBuf.initTo(0);
}

void ABB::AnalyticsBackend::update(){
    if(!ab->mcu.debugger.isHalted()){
        uint16_t SP = ab->mcu.analytics.maxSP;
        ab->mcu.analytics.maxSP = 0xFFFF;
        StackSizeBuf.add(A32u4::DataSpace::Consts::data_size-1-SP);
    }
}

void ABB::AnalyticsBackend::draw(){
    if(ImGui::Begin(name.c_str())){
        ImGui::Text("%f%% of Stack used (%d/%d)", (StackSizeBuf.get(0)/(float)symbolTable->getMaxRamAddrEnd())*100, StackSizeBuf.get(0),A32u4::DataSpace::Consts::data_size-1 - symbolTable->getMaxRamAddrEnd());
        ImGui::PlotHistogram("Stack Size",
            &getStackSizeBuf, &StackSizeBuf, StackSizeBuf.size(), 
            0, NULL, 0, A32u4::DataSpace::Consts::data_size-1 - symbolTable->getMaxRamAddrEnd(), {0,70}
        );
    }
    ImGui::End();
}

float ABB::AnalyticsBackend::getStackSizeBuf(void* data, int ind){
    RingBuffer<uint16_t>* stackSizeBufPtr = (RingBuffer<uint16_t>*)data;
    if(ind >= stackSizeBufPtr->size()){
        return 0;
    }
    return stackSizeBufPtr->get(ind);
}