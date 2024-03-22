#include "CompilerBackend.h"

#include "ArduboyBackend.h"

#include "ImGuiFD.h"

#include "StringUtils.h"
#include "DataUtils.h"

ABB::CompilerBackend::CompilerBackend(ArduboyBackend* abb, const char* winName, bool* open) : abb(abb), fdiOpenDir((std::string(winName)+"_COMP").c_str()), winName(winName), open(open) {

}

void ABB::CompilerBackend::draw() {
    if(ImGui::Begin(winName.c_str(), open)) {
#if defined(__EMSCRIPTEN__)
        ImGui::TextUnformatted("Compilation is not supported on this platform :(");
#else
        const bool hasInoPath = inoPath.size() > 0;
        if(hasInoPath) {
            ImGui::Text("Project located at: %s", inoPath.c_str());
        }else{
            ImGui::TextUnformatted("No Project opened!");
        }

        if(ImGui::Button("Open")){
            fdiOpenDir.OpenDialog(ImGuiFDMode_OpenDir, ".");
        }

        ImGui::Separator();

        bool load = false;

        if(!callProc) {
            if(!hasInoPath) ImGui::BeginDisabled();
            if(ImGui::Button("Compile")){
                compileOutput = "";
                callProc = std::make_shared<SystemUtils::CallProcThread>(std::string("arduino-cli compile --fqbn arduino:avr:leonardo --build-path ./temp/ 2>&1") + inoPath);
                callProc->start();
            }
            if(ImGui::IsItemHovered()) {
                ImGui::SetTooltip("This needs arduino-cli to be installed!");
            }
            if(!hasInoPath) ImGui::EndDisabled();
        }else{
            ImGui::BeginDisabled();
            ImGui::Button("Compiling...");
            ImGui::EndDisabled();

            if(callProc->hasData()) {
                compileOutput += callProc->get();
            }

            if(!callProc->isRunning()) {
                callProc = nullptr;
                load = true;
            }
        }

        if(ImGui::Button("Load result")){
            load = true;
        }
        ImGui::SameLine();
        ImGui::Checkbox("Auto Load", &autoLoad);
        if(ImGui::IsItemHovered()) {
            ImGui::SetTooltip("Automatically load programm after compilation");
        }

        if(load) {
            if(abb->loadFromELFFile((std::string("./temp/")+StringUtils::getDirName(inoPath.c_str())+".ino.elf").c_str())) {
                abb->resetMachine();
                abb->mcu->powerOn();
            }
        }

        ImGui::Separator();

        ImGui::TextWrapped("%s", compileOutput.c_str());
#endif
    }
    ImGui::End();


    fdiOpenDir.DrawDialog([](void* userData){
        ((CompilerBackend*)userData)->inoPath = ImGuiFD::GetSelectionPathString(0);
    },this);
}

size_t ABB::CompilerBackend::sizeBytes() const {
    size_t sum = 0; 

    sum += sizeof(abb);
    sum += DataUtils::approxSizeOf(inoPath);
    sum += sizeof(fdiOpenDir.id) + sizeof(fdiOpenDir.str_id) + fdiOpenDir.str_id.capacity();
    
    sum += sizeof(callProc); // TODO inaccurate

    sum += DataUtils::approxSizeOf(compileOutput);

    sum += sizeof(autoLoad);

    sum += DataUtils::approxSizeOf(winName);
    sum += sizeof(open);

    return sum;
}