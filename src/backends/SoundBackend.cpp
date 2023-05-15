#include "SoundBackend.h"

#include <cmath>

#include "imgui.h"
#include "MathUtils.h"


ABB::SoundBackend::SoundBackend(const char* winName, bool* open) : 
buffer(samplesPerSec*10), numConsumed(120), winName(winName), open(open)
{
    SetAudioStreamBufferSizeDefault(samplesPerSec/60);
    stream = LoadAudioStream(samplesPerSec, 8, 1); // 44100Hz 8Bit
    PlayAudioStream(stream);
    //setEnabled(false);
    SetAudioStreamVolume(stream, volume);
}
ABB::SoundBackend::~SoundBackend(){
    UnloadAudioStream(stream);
}

void ABB::SoundBackend::makeSound(const std::vector<int8_t>& wave){
    for(size_t i = 0; i<wave.size(); i++) {
        buffer.add(wave[i]);
    }

    uint32_t cnt = 0;
    while(IsAudioStreamProcessed(stream) && buffer.size() > 0) {
        lastBuffer.resize(std::min(samplesPerSec/60, buffer.size()));
        for(size_t i = 0; i< lastBuffer.size(); i++) {
            lastBuffer[i] = buffer.get(i);
        }
        buffer.pop_front(lastBuffer.size());
        cnt += (uint32_t)lastBuffer.size();

        if(filter) {
            lastBufferFiltered.resize(lastBuffer.size());
            for(size_t i = 0; i<lastBufferFiltered.size(); i++) {
                int8_t v = lastBuffer[i];
                fvel += ((float)v/2-fpos)/fdiv;
                fvel *= fdamp;
                fpos += fvel;
                fpos = MathUtils::clamp(fpos, -128.0f, 127.0f);
                lastBufferFiltered[i] = (int8_t)std::round(fpos);
            }
        }

        auto& buf = filter ? lastBufferFiltered : lastBuffer;

        UpdateAudioStream(stream, &buf[0], (int)buf.size());
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

        ImGui::SameLine();

        {
            float v = volume;
            ImGui::SliderFloat("Volume", &v, 0, 1);
            if(v != volume){
                volume = v;
                SetAudioStreamVolume(stream, volume);
            }
        }

        ImGui::PlotLines("Audio data",
            [](void* data, int ind) {
                auto* buf = (decltype(lastBuffer)*)data;
                return (float)buf->at(ind);
            }, 
            &lastBuffer, (int)lastBuffer.size(),
            0, NULL, -128, 127, {0,70}
        );

        ImGui::PlotHistogram("Bufs consumed",
            [](void* data, int ind) {
                auto* buf = (decltype(numConsumed)*)data;
                return (float)buf->get(ind);
            }, 
            &numConsumed, (int)numConsumed.size(),
            0, NULL, 0, samplesPerSec/60*3, {0,70}
        );

        ImGui::Checkbox("Filter", &filter);
        if(!filter) ImGui::BeginDisabled();

        ImGui::DragFloat("Div", &fdiv, 0.01, 0.1, 1000);
        ImGui::DragFloat("Damp", &fdamp, 0.01, 0, 1);
        ImGui::PlotLines("Audio data",
            [](void* data, int ind) {
                auto* buf = (decltype(lastBufferFiltered)*)data;
                return (float)buf->at(ind);
            }, 
            &lastBufferFiltered, (int)lastBufferFiltered.size(),
            0, NULL, -128, 127, {0,70}
        );
        if(!filter) ImGui::EndDisabled();
    }
    ImGui::End();
}