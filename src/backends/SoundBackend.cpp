#include "SoundBackend.h"

#include "imgui.h"

ABB::SoundBackend::SoundBackend(const char* winName, bool* open) : numConsumed(120), winName(winName), open(open){
    SetAudioStreamBufferSizeDefault(44100/60+1);
    stream = LoadAudioStream(44100, 8, 1); // 44100Hz 8Bit
    PlayAudioStream(stream);
}
ABB::SoundBackend::~SoundBackend(){
    UnloadAudioStream(stream);
}

void ABB::SoundBackend::makeSound(const std::vector<uint8_t>& wave){
    buffers.push_back(wave);

    uint32_t cnt = 0;
    while(IsAudioStreamProcessed(stream) && buffers.size() > 0) {
        auto& data = buffers.front();
        UpdateAudioStream(stream, &data[0], data.size());
        lastBuffer = std::move(data);
        buffers.erase(buffers.begin());
        cnt++;
    }
    numConsumed.add(cnt);
}

void ABB::SoundBackend::draw() {
    if (ImGui::Begin(winName.c_str())) {
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
            0, NULL, 0, 3, {0,70}
        );
    }
    ImGui::End();
}