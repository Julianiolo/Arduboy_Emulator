#ifndef __ANALYTICSBACKEND_H__
#define __ANALYTICSBACKEND_H__

#include "../Console.h"
#include "SymbolBackend.h"

#include "comps/ringBuffer.h"

namespace ABB{
    class ArduboyBackend;

    class AnalyticsBackend{
    private:
        friend class ArduboyBackend;

        ArduboyBackend* abb = nullptr;
        
        RingBuffer<uint32_t> stackSizeBuf;
        RingBuffer<uint32_t> sleepCycsBuf;
        RingBuffer<float> frameTimeBuf;

        bool winFocused = false;

        std::vector<size_t> instHeatOrder;
    public:
        std::string winName;
        bool* open;

        AnalyticsBackend(ArduboyBackend* abb, const char* winName, bool* open);

        void update();
        void draw();

        const char* getWinName() const;

        void reset();
        static float getStackSizeBuf(void* data, int ind);
        static float getSleepCycsBuf(void* data, int ind);
        static float getFrameTimeBuf(void* data, int ind);

        bool isWinFocused() const;

        size_t sizeBytes() const;
    };
}

#endif