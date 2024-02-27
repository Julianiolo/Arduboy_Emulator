#ifndef __ABB_SOUNDBACKEND_H__
#define __ABB_SOUNDBACKEND_H__

#include <vector>
#include <cstdint>

#include "raylib.h"
#include "SystemUtils.h"
#include "comps/ringBuffer.h"

namespace ABB {
    class SoundBackend {
    private:
        AudioStream stream;
        RingBuffer<int8_t> buffer;
        std::vector<int8_t> lastBuffer;
        std::vector<int8_t> lastBufferFiltered;
        RingBuffer<uint32_t> numConsumed;

        float volume = 0;//0.025f;

        bool filter = true;
        float fpos = 0;
        float fvel = 0;

        float fdiv = 5;
        float fdamp = 0.8f;
        float fpower = 1;
    public:
        std::string winName;
        bool* open;
        static constexpr size_t samplesPerSec = 44100;

        SoundBackend(const char* winName, bool* open);
        ~SoundBackend();

        bool isPlaying() const;
        void setEnabled(bool enabled);

        void makeSound(const std::vector<int8_t>& wave);
        void draw();
    };
}

#endif