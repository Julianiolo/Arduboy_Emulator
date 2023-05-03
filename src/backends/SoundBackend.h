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
        RingBuffer<uint8_t> buffer;
        std::vector<uint8_t> lastBuffer;
        RingBuffer<uint32_t> numConsumed;

        std::string winName;
        bool* open;
    public:
        static constexpr size_t samplesPerSec = 44100;

        SoundBackend(const char* winName, bool* open);
        ~SoundBackend();

        bool isPlaying() const;
        void setEnabled(bool enabled);

        void makeSound(const std::vector<uint8_t>& wave);
        void draw();
    };
}

#endif