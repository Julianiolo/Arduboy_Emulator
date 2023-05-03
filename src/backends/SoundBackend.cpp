#include "SoundBackend.h"

#include "imgui.h"

ABB::SoundBackend::SoundBackend(const char* winName, bool* open) : buffer(samplesPerSec*10), numConsumed(120), winName(winName), open(open){
    SetAudioStreamBufferSizeDefault(samplesPerSec/60+1);
    stream = LoadAudioStream(samplesPerSec, 8, 1); // 44100Hz 8Bit
    PlayAudioStream(stream);
    //setEnabled(false);
}
ABB::SoundBackend::~SoundBackend(){
    UnloadAudioStream(stream);
}

void ABB::SoundBackend::makeSound(const std::vector<uint8_t>& wave){
    for(size_t i = 0; i<wave.size(); i++) {
        buffer.add(wave[i]);
    }

    uint32_t cnt = 0;
    while(IsAudioStreamProcessed(stream) && buffer.size() > 0) {
        lastBuffer.resize(std::min(samplesPerSec/60, buffer.size()));
        for(size_t i = 0; i< lastBuffer.size(); i++) {
            lastBuffer[i] = buffer.get(i);
        }
        UpdateAudioStream(stream, &lastBuffer[0], lastBuffer.size());
        buffer.pop_front(lastBuffer.size());
        cnt += lastBuffer.size();
    }
    numConsumed.add(cnt);
}

bool ABB::SoundBackend::isPlaying() const {
    return IsAudioStreamPlaying(stream);
}
void ABB::SoundBackend::setEnabled(bool enabled) {
    if(enabled) {
        ResumeAudioStream(stream);
    }else{
        PauseAudioStream(stream);
    }
}

void ABB::SoundBackend::draw() {
    if (ImGui::Begin(winName.c_str())) {
        {
            const bool playing = isPlaying();
            bool v = playing;
            ImGui::Checkbox("Play Sound", &v);
            if(v != playing)
                setEnabled(v);
        }

        ImGui::PlotLines("Audio data",
            [](void* data, int ind) {
                auto* buf = (decltype(lastBuffer)*)data;
                return (float)buf->at(ind);
            }, 
            &lastBuffer, (int)lastBuffer.size(),
            0, NULL, 0, 255, {0,70}
        );

        ImGui::PlotHistogram("Bufs consumed",
            [](void* data, int ind) {
                auto* buf = (decltype(numConsumed)*)data;
                return (float)buf->get(ind);
            }, 
            &numConsumed, (int)numConsumed.size(),
            0, NULL, 0, samplesPerSec/60*3, {0,70}
        );
    }
    ImGui::End();
}