#include "SoundBackend.h"

ABB::SoundBackend::SoundBackend(){
    SetAudioStreamBufferSizeDefault(44100/60+1);
    stream = LoadAudioStream(44100, 8, 1); // 44100Hz 8Bit
}
ABB::SoundBackend::~SoundBackend(){
    UnloadAudioStream(stream);
}

void ABB::SoundBackend::makeSound(const std::vector<uint8_t>& wave){
    buffer.push_back(wave);

    while(IsAudioStreamProcessed(stream) && buffer.size() > 0) {
        auto& data = buffer.front();
        UpdateAudioStream(stream, &data[0], data.size());
        buffer.pop_back();
    }
}
