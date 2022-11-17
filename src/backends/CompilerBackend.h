#ifndef __ABB_COMPILERBACKEND_H__
#define __ABB_COMPILERBACKEND_H__

#include <memory>

#include "Arduboy.h"
#include "SystemUtils.h"

namespace ABB {
    class CompilerBackend {
    private:
        Arduboy* ab;
        std::string inoPath;

        std::unique_ptr<SystemUtils::CallProcThread> callProc;
        std::string compileOutput;

    public:
        const std::string winName;
        bool* open;

        CompilerBackend (Arduboy* ab, const char* winName, bool* open);

        void draw();
    };
}

#endif