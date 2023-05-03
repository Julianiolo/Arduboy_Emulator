#ifndef __ABB_SOUNDBACKEND_H__
#define __ABB_SOUNDBACKEND_H__

#include <vector>
#include <cstdint>

#include "raylib.h"
#include "SystemUtils.h"
#include "ringBuffer.h"

namespace ABB {
    class SoundBackend {
    private:
        AudioStream stream;
        std::vector<std::vector<uint8_t>> buffers;
        std::vector<uint8_t> lastBuffer;
        RingBuffer<uint32_t> numConsumed;

        std::string winName;
        bool* open;
    public:

        SoundBackend(const char* winName, bool* open);
        ~SoundBackend();

        void makeSound(const std::vector<uint8_t>& wave);
        void draw();
    };
}

#endif