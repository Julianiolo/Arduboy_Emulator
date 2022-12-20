#ifndef __ANALYTICSBACKEND_H__
#define __ANALYTICSBACKEND_H__

#include "Arduboy.h"
#include "SymbolBackend.h"

#include "RingBuffer.h"

namespace ABB{
    class AnalyticsBackend{
    private:
        friend class ArduboyBackend;

        Arduboy* ab = nullptr;
        
        RingBuffer<uint16_t> StackSizeBuf;
        RingBuffer<uint64_t> sleepCycsBuf;

        bool winFocused = false;
    public:
        std::string winName;
        bool* open;

        AnalyticsBackend(Arduboy* ab, const char* winName, bool* open);

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