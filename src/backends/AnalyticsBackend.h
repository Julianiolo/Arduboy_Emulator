#ifndef __ANALYTICSBACKEND_H__
#define __ANALYTICSBACKEND_H__

#include "Arduboy.h"
#include "../utils/symbolTable.h"
#include "../utils/ringBuffer.h"

namespace ABB{
    class AnalyticsBackend{
    private:
        Arduboy* ab = nullptr;
        bool* open;
        const utils::SymbolTable* symbolTable;
        
        RingBuffer<uint16_t> StackSizeBuf;
        RingBuffer<uint64_t> sleepCycsBuf;

        bool winFocused = false;
    public:
        const std::string winName;

        AnalyticsBackend(Arduboy* ab, const char* winName, bool* open, const utils::SymbolTable* symbolTable);

        void update();
        void draw();

        const char* getWinName() const;

        void reset();
        static float getStackSizeBuf(void* data, int ind);
        static float getSleepCycsBuf(void* data, int ind);

        bool isWinFocused() const;
    };
}

#endif