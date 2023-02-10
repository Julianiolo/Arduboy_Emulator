#include <iostream>
#include <fstream>
#include <cinttypes>
#include <chrono>
#include <vector>
#include <array>
#include <random>

#include "StreamUtils.h"
#include "StringUtils.h"

#include "Arduboy.h"


#if defined(_MSC_VER) || 1
#define ROOTDIR "./"
#else
#define ROOTDIR "../../../../"
#endif

std::array<std::string,8> testFiles = {
    ROOTDIR "resources/games/Hollow/hollow.ino.hex", 
    ROOTDIR "resources/games/CastleBoy/CastleBoy.ino.hex",
    ROOTDIR "resources/games/almostPong/almostPong.ino.hex",
    ROOTDIR "resources/games/PixelPortal/PixelPortal.ino.hex",
    ROOTDIR "resources/games/longcat/longcat.ino.hex",
    ROOTDIR "resources/games/Arduboy3D/Arduboy3D.ino.hex",
    ROOTDIR "resources/games/stairssweep/stairssweep.ino.hex",
    ROOTDIR "resources/games/Ardutosh.hex"
};





uint64_t benchmark_step(double secs ,const char* gamePath, uint8_t flags) {
    Arduboy ab;


    if (!ab.mcu.loadFile(gamePath)) {
        printf("couldnt load file\n");
        abort();
    }
    ab.mcu.powerOn();
    ab.updateButtons();

    auto start = std::chrono::high_resolution_clock::now();
    ab.mcu.execute((uint64_t)(A32u4::CPU::ClockFreq*secs), flags);
    auto end = std::chrono::high_resolution_clock::now();
    uint64_t ms = std::chrono::duration_cast<std::chrono::microseconds>(end - start).count();
    return ms;
}

void benchmark() {
    /*
    
        Inst update: 1667613550  6.25%
        switch:      1667615954  4.27%
          no heap                4.10%
            no /GS               4.06%
    
    */


    
    double secs = 60;

    std::string res = "";

    uint64_t id = std::time(0);

    res += StringUtils::format("Arduboy benchmark:\nid=%llu\nsecs=%f\ntestFiles=[\n", id, secs);

    for (size_t i = 0; i < testFiles.size(); i++) {
        res += StringUtils::format("\t%u: %s,\n",i,testFiles[i].c_str());
    }

    res += "]\n";

    printf("%s", res.c_str());

    std::string r;

    uint64_t avgFlags[4] = {0,0,0,0};

    for (uint8_t flags = 0; flags < 4; flags++) {
        {
            r = StringUtils::format("Starting warmup [%u] with flags [d:%u,a:%u]\n", testFiles.size()-1, 
                (flags&A32u4::ATmega32u4::ExecFlags_Debug)!=0, 
                (flags&A32u4::ATmega32u4::ExecFlags_Analyse)!=0
            );
            printf("%s", r.c_str());
            res += r;

            uint64_t micros =  benchmark_step(secs, testFiles.back().c_str(), flags);

            r = StringUtils::format("took: %14.7fms => %12.7f%%\n",  (double)micros/1000, (micros/1000000.0)/secs*100);
            printf("%s", r.c_str());
            res += r;
        }

        uint64_t micosSum = 0;

        for (size_t i = 0; i < testFiles.size(); i++) {
            r = StringUtils::format("\tStarting benchmark [%u] with flags [d:%u,a:%u]\n", i, 
                (flags&A32u4::ATmega32u4::ExecFlags_Debug)!=0, 
                (flags&A32u4::ATmega32u4::ExecFlags_Analyse)!=0
            );
            printf("%s", r.c_str());
            res += r;

            uint64_t micros =  benchmark_step(secs, testFiles[i].c_str(), flags);
            micosSum += micros;

            double perc = (micros / 1000000.0) / secs * 100;

            r = StringUtils::format("\ttook: %14.7fms => %12.7f%%\n", (double)micros/1000, perc);
            printf("%s", r.c_str());
            res += r;
        }

        avgFlags[flags] += micosSum;

        //break;
    }

    for (uint8_t flags = 0; flags < 4; flags++) {
        double avgMs = ((double)avgFlags[flags]/1000) / testFiles.size();
        double avgPerc = avgMs / 1000.0;

        r = StringUtils::format("AVGs[d:%d,a:%d]: took: %14.7fms => %12.7f%%\n", 
            (flags&A32u4::ATmega32u4::ExecFlags_Debug)!=0, 
            (flags&A32u4::ATmega32u4::ExecFlags_Analyse)!=0,
            avgMs, avgPerc
        );
        printf("%s", r.c_str());
        res += r;    
    }

    r = "Done :)\n";
    printf("%s", r.c_str());
    res += r;

    StringUtils::writeStringToFile(res, (std::to_string(id) + "_benchmark.txt").c_str());
}

bool serialisationTest() {
    Arduboy ab;
    ab.mcu.loadFromELFFile(ROOTDIR "resources/games/Hollow/hollow.ino.elf");
    ab.reset();
    ab.newFrame();
    {
        std::ofstream file("teeeest.txt", std::ios::binary);

        ab.getState(file);
    }
    printf("Done writing\n");
    
    std::ifstream file("teeeest.txt", std::ios::binary);
    
    Arduboy ab2;
    ab2.setState(file);

    bool worked = true;
#define TEST_AB(x) worked = worked && (ab x==ab2 x);printf("%s: %s\n", #x "", (ab x==ab2 x)?"ok":"WRONG")

    TEST_AB(.mcu.cpu);
    TEST_AB(.mcu.dataspace);
    TEST_AB(.mcu.flash);

    TEST_AB(.mcu.analytics);
    TEST_AB(.mcu.debugger);
    TEST_AB(.mcu.symbolTable);

    TEST_AB(.mcu);
    TEST_AB(.display);

    TEST_AB();
#undef TEST_AB
    return worked;
}

bool fuzzTest() {
    size_t numWorked = 0;
    for(size_t i = 0; i<testFiles.size(); i++) {
        printf("### Starting %s\n", testFiles[i].c_str());
        Arduboy ab;
        ab.mcu.loadFromHexFile(testFiles[i].c_str());
        ab.mcu.powerOn();
        ab.buttonState = 0;

        std::mt19937 rnd;
        rnd.seed(42);
        std::uniform_int_distribution<uint32_t> dist(0,10);

        size_t worked = true;
        for(size_t f = 0; f<500; f++) {
            if(dist(rnd) == 0)
                ab.buttonState ^= Arduboy::Button_Up;
            if(dist(rnd) == 0)
                ab.buttonState ^= Arduboy::Button_Down;
            if(dist(rnd) == 0)
                ab.buttonState ^= Arduboy::Button_Left;
            if(dist(rnd) == 0)
                ab.buttonState ^= Arduboy::Button_Right;

            if(dist(rnd) == 0)
                ab.buttonState ^= Arduboy::Button_A;
            if(dist(rnd) == 0)
                ab.buttonState ^= Arduboy::Button_B;

            ab.newFrame();
            if(ab.mcu.debugger.isHalted()) {
                worked = false;
                printf("### Failed on frame %" MCU_PRIuSIZE "\n",f);
                break;
            }
        }
        if(worked)
            numWorked++;
    }
    printf("%" MCU_PRIuSIZE "/%" MCU_PRIuSIZE " worked\n", numWorked, testFiles.size());
    return numWorked == testFiles.size();
}


int test(int argc, char** argv) {
    bool worked = true;
    //worked = serialisationTest() && worked;
    worked = fuzzTest() && worked;
    return !worked;
}