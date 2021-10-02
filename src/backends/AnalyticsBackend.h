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
    public:
        AnalyticsBackend(Arduboy* ab, const char* winName, const utils::SymbolTable* symbolTable);

        void update();
        void draw();
        static float getStackSizeBuf(void* data, int ind);
    };
}

#endif