#ifndef __ABB_SOUNDBACKEND_H__
#define __ABB_SOUNDBACKEND_H__

#include <vector>
#include <cstdint>

#include "raylib.h"
#include "SystemUtils.h"


namespace ABB {
    class SoundBackend {
    private:
        AudioStream stream;
        static constexpr size_t streamBufSize = 4096;
        std::vector<uint8_t> buffer;

    public:
        SoundBackend();
        ~SoundBackend();

        void makeSound(const std::vector<uint8_t>& wave);
    };
}

#endif