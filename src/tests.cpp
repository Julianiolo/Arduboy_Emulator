#include <iostream>
#include <fstream>
#include <cinttypes>
#include <chrono>
#include <vector>
#include <array>
#include <random>

#include "StreamUtils.h"
#include "StringUtils.h"
#include "DataUtils.h"

#include "Arduboy.h"
#include "ElfReader.h"


#define ROOTDIR "./"


constexpr std::array<const char*,8*2+7> testFiles = {
    ROOTDIR "resources/games/almostPong/almostPong.ino.hex",
    ROOTDIR "resources/games/Arduboy3D/Arduboy3D.ino.hex",
    ROOTDIR "resources/games/ardubullets/ardubullets.ino.hex", 
    ROOTDIR "resources/games/CastleBoy/CastleBoy.ino.hex",
    ROOTDIR "resources/games/Hollow/hollow.ino.hex", 
    ROOTDIR "resources/games/longcat/longcat.ino.hex",
    ROOTDIR "resources/games/PixelPortal/PixelPortal.ino.hex",
    ROOTDIR "resources/games/stairssweep/stairssweep.ino.hex",

    ROOTDIR "resources/games/almostPong/almostPong.ino.elf",
    ROOTDIR "resources/games/Arduboy3D/Arduboy3D.ino.elf",
    ROOTDIR "resources/games/ardubullets/ardubullets.ino.elf", 
    ROOTDIR "resources/games/CastleBoy/CastleBoy.ino.elf",
    ROOTDIR "resources/games/Hollow/hollow.ino.elf", 
    ROOTDIR "resources/games/longcat/longcat.ino.elf",
    ROOTDIR "resources/games/PixelPortal/PixelPortal.ino.elf",
    ROOTDIR "resources/games/stairssweep/stairssweep.ino.elf",

    ROOTDIR "resources/games/arduzel/arduzel.ino.hex", 
    ROOTDIR "resources/games/Ardutosh.hex",
    ROOTDIR "resources/games/Ardynia.hex",
    ROOTDIR "resources/games/CastleBoy.hex",
    ROOTDIR "resources/games/Catacombs of the damned.hex",
    ROOTDIR "resources/games/CircuitDude.hex",
    ROOTDIR "resources/games/MicroCity.hex",
    //ROOTDIR "resources/games/starduino.hex",
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
    std::array<std::string,8> benchFiles = {
        ROOTDIR "resources/games/Hollow/hollow.ino.hex", 
        ROOTDIR "resources/games/CastleBoy/CastleBoy.ino.hex",
        ROOTDIR "resources/games/almostPong/almostPong.ino.hex",
        ROOTDIR "resources/games/PixelPortal/PixelPortal.ino.hex",
        ROOTDIR "resources/games/longcat/longcat.ino.hex",
        ROOTDIR "resources/games/Arduboy3D/Arduboy3D.ino.hex",
        ROOTDIR "resources/games/stairssweep/stairssweep.ino.hex",
        ROOTDIR "resources/games/Ardutosh.hex"
    };
    
    double secs = 60;

    std::string res = "";

    uint64_t id = std::time(0);

    res += StringUtils::format("Arduboy benchmark:\nid=%llu\nsecs=%f\nbenchFiles=[\n", id, secs);

    for (size_t i = 0; i < benchFiles.size(); i++) {
        res += StringUtils::format("\t%u: %s,\n",i,benchFiles[i].c_str());
    }

    res += "]\n";

    printf("%s", res.c_str());

    std::string r;

    uint64_t avgFlags[2] = {0,0};

    for (uint8_t flags = 0; flags < 2; flags++) {
        {
            r = StringUtils::format("Starting warmup [%u] with flags [d:%u]\n", benchFiles.size()-1, 
                (flags)!=0
            );
            printf("%s", r.c_str());
            res += r;

            uint64_t micros =  benchmark_step(secs, benchFiles.back().c_str(), flags);

            r = StringUtils::format("took: %14.7fms => %12.7f%%\n",  (double)micros/1000, (micros/1000000.0)/secs*100);
            printf("%s", r.c_str());
            res += r;
        }

        uint64_t micosSum = 0;

        for (size_t i = 0; i < benchFiles.size(); i++) {
            r = StringUtils::format("\tStarting benchmark [%u] with flags [d:%u]\n", i, flags!=0);
            printf("%s", r.c_str());
            res += r;

            uint64_t micros =  benchmark_step(secs, benchFiles[i].c_str(), flags);
            micosSum += micros;

            double perc = (micros / 1000000.0) / secs * 100;

            r = StringUtils::format("\ttook: %14.7fms => %12.7f%%\n", (double)micros/1000, perc);
            printf("%s", r.c_str());
            res += r;
        }

        avgFlags[flags] += micosSum;

        break;
    }

    for (uint8_t flags = 0; flags < 2; flags++) {
        double avgMs = ((double)avgFlags[flags]/1000) / benchFiles.size();
        double avgPerc = avgMs / 1000.0;

        r = StringUtils::format("AVGs[d:%d]: took: %14.7fms => %12.7f%%\n", 
            flags!=0,
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
    {
        std::vector<uint8_t> content = StringUtils::loadFileIntoByteArray(ROOTDIR "resources/games/Hollow/hollow.ino.elf");
        EmuUtils::ELF::ELFFile elf = EmuUtils::ELF::parseELFFile(&content[0], content.size());
        std::vector<uint8_t> prog = EmuUtils::ELF::getProgramData(elf);
        ab.mcu.flash.loadFromMemory(&prog[0], prog.size());
    }
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

    TEST_AB(.mcu);
    TEST_AB(.display);

    TEST_AB();
#undef TEST_AB
    return worked;
}

bool fuzzTest() {
    size_t numWorked = 0;
    for(size_t i = 0; i<testFiles.size(); i++) {
        printf("### Starting %s\n", testFiles[i]);
        Arduboy ab;
        ab.mcu.loadFile(testFiles[i]);
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
                printf("### Failed on frame %" DU_PRIuSIZE "\n",f);
                break;
            }
        }
        if(worked)
            numWorked++;
    }
    printf("%" DU_PRIuSIZE "/%" DU_PRIuSIZE " worked\n", numWorked, testFiles.size());
    return numWorked == testFiles.size();
}


int test(int argc, char** argv) {
    DU_UNUSED(argc);
    DU_UNUSED(argv);
    bool worked = true;
    benchmark();
    //worked = serialisationTest() && worked;
    //worked = fuzzTest() && worked;
    return !worked;
}