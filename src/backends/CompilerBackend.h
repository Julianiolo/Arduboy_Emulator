#ifndef __ABB_COMPILERBACKEND_H__
#define __ABB_COMPILERBACKEND_H__

#include <memory>

#include "ImGuiFD_internal.h"

#include "SystemUtils.h"


namespace ABB {
    class ArduboyBackend;
    class CompilerBackend {
    private:
        friend class ArduboyBackend;

        ArduboyBackend* abb;
        std::string inoPath;
        ImGuiFD::FDInstance fdiOpenDir;

        std::shared_ptr<SystemUtils::CallProcThread> callProc;
        std::string compileOutput;

        bool autoLoad = true;

    public:
        std::string winName;
        bool* open;

        CompilerBackend (ArduboyBackend* abb, const char* winName, bool* open);

        void draw();

        size_t sizeBytes() const;
    };
}

#endif