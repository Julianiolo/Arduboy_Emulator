#include "SoundBackend.h"

ABB::SoundBackend::SoundBackend(){
    SetAudioStreamBufferSizeDefault(streamBufSize);
    stream = LoadAudioStream(44100, 8, 1); // 44100Hz 8Bit
}
ABB::SoundBackend::~SoundBackend(){
    UnloadAudioStream(stream);
}

void ABB::SoundBackend::makeSound(const std::vector<uint8_t>& wave){
    //buffer.insert(buffer.begin(), wave.begin(), wave.end());
}
