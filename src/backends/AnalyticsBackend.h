#ifndef __ANALYTICSBACKEND_H__
#define __ANALYTICSBACKEND_H__

#include "Arduboy.h"
#include "../utils/symbolTable.h"
#include "../utils/ringBuffer.h"

namespace ABB{
    class AnalyticsBackend{
    private:
        Arduboy* ab = nullptr;
        const utils::SymbolTable* symbolTable;
        std::string name;
        RingBuffer<uint16_t> StackSizeBuf;
        RingBuffer<uint64_t> sleepCycsBuf;
    public:
        AnalyticsBackend(Arduboy* ab, const char* winName, const utils::SymbolTable* symbolTable);

        void update();
        void draw();
        void reset();
        static float getStackSizeBuf(void* data, int ind);
        static float getSleepCycsBuf(void* data, int ind);
    };
}

#endif