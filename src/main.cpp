#include <iostream>
#include <chrono>
#include <vector>
#include <string>
#include <ctime>

#include "raylib.h"
#include "imgui.h"
#include "rlImGui/rlImGui.h"
#include "oneHeaderLibs/VectorOperators.h"

#include "ArdEmu.h"

#include "utils/icons.h"

#if defined(PLATFORM_WEB)
    #include "emscripten.h"
#endif

#if defined(_MSC_VER) || 1
#define ROOTDIR "./"
#else
#define ROOTDIR "../../../../"
#endif

void setup();
void draw();
void destroy();

void benchmark();

int frameCnt = 0;

Vector2 lastMousePos;
Vector2 mouseDelta;



int main(void) {
#if 1
    setup();

#if defined(PLATFORM_WEB)
    emscripten_set_main_loop(draw, 0, 1);
#else
    while (!WindowShouldClose()) {
        draw();
    }
#endif

    destroy();

    return 0;
#elif 1
    benchmark();
#else
    Arduboy ab;

    const char* gamePath;
#if 1
    gamePath = ROOTDIR "resources/games/Hollow/hollow.ino.hex";
#else
    gamePath = "/home/juli/Downloads/166a9d346a3793b00cb90ea0f2145fec220638f6.hex";
#endif

    if (!ab.loadFromHexFile(gamePath)) {
        printf("couldnt load file!\n");
        return 1;
    }
    ab.mcu.powerOn();
    ab.updateButtons();

    float secs = 20;

    uint8_t flags = A32u4::ATmega32u4::ExecFlags_None;
    //flags |= A32u4::ATmega32u4::ExecFlags_Analyse;
    //flags |= A32u4::ATmega32u4::ExecFlags_Debug;
    auto start = std::chrono::high_resolution_clock::now();
    ab.mcu.execute((uint64_t)(A32u4::CPU::ClockFreq*secs), flags);
    auto end = std::chrono::high_resolution_clock::now();
    uint64_t ms = std::chrono::duration_cast<std::chrono::milliseconds>(end - start).count();
    printf("took: %" PRIu64 "ms => %f%%\n", ms, (ms/1000.f)/secs*100);

    //Arduboy ab2;
    //ab.mcu.execute(1, 0);

    return 0;
#endif
}

void setup() {
    SetConfigFlags( FLAG_VSYNC_HINT | FLAG_WINDOW_RESIZABLE | FLAG_MSAA_4X_HINT );
    InitWindow(1200, 800, "ABemu");
    printf("Inited window\n");

    SetWindowResizeDrawCallback(draw);
    //SetTargetFPS(60);

    lastMousePos = GetMousePosition();
    mouseDelta = { 0,0 };

#if !USE_ICONS
    SetupRLImGui(true);
#else
    InitRLGLImGui();
    ImGui::StyleColorsDark();
    AddRLImGuiIconFonts(12,true);
    FinishRLGLImguSetup();
#endif
    
    ImGuiIO& io = ImGui::GetIO();
    io.ConfigFlags |= ImGuiConfigFlags_DockingEnable;
    io.ConfigWindowsResizeFromEdges = true;
    io.WantSaveIniSettings = false;
    io.ConfigWindowsMoveFromTitleBarOnly = true;

    
    
    //printf("%s\n", GetWorkingDirectory());

    ArduEmu::init();

#if 1
    ABB::ArduboyBackend& abb = ArduEmu::addEmulator("Thing");
    abb.ab.mcu.logFlags = A32u4::ATmega32u4::LogFlags_ShowModule;
    //abb.ab.mcu.debugger.halt();
    //abb.ab.load("../../../../ressources/games/CastleBoy.hex");
#if 0
    abb.ab.loadFromHexFile(ROOTDIR"resources/games/CastleBoy/CastleBoy.ino.hex");
    //abb.debuggerBackend.srcMix.loadSrcFile(ROOTDIR"resources/games/CastleBoy/srcMix.asm");
    //abb.symbolTable.loadFromDumpFile(ROOTDIR"resources/games/CastleBoy/symbs.asm");

#elif 0
    abb.loadFromELFFile("C:/Users/korma/Desktop/Julian/dateien/abgames/CastleBoy-master/CastleBoy.ino.elf");
#elif 1
    abb.loadFromELFFile(ROOTDIR"resources/games/CastleBoy/CastleBoy.ino.elf");
#elif 0
    abb.ab.load(ROOTDIR"resources/games/MicroCity/MicroCity.ino.hex");
    abb.debuggerBackend.srcMix.loadSrcFile(ROOTDIR"resources/games/MicroCity/srcMix.asm");
    abb.symbolTable.loadFromDumpFile(ROOTDIR"resources/games/MicroCity/symbs.asm");

#elif 0
    abb.ab.load(ROOTDIR "resources/games/ardynia.hex");
#elif 0
    //abb.loadFromELFFile(ROOTDIR "resources/games/CastleBoy/CastleBoy.ino.elf");
    //abb.debuggerBackend.srcMix.loadSrcFile(ROOTDIR"resources/games/Hollow/srcMix.asm");
    //abb.ab.load(ROOTDIR "resources/games/Hollow/hollow.ino.hex");
    //StringUtils::writeBytesToFile(abb.ab.mcu.flash.getData(), abb.ab.mcu.flash.size(), "hex2.bin");
#elif 0
#define GAME_NAME "almostPong"
//#define GAME_NAME "PixelPortal"
//#define GAME_NAME "longcat"
    abb.loadFile(ROOTDIR "resources/games/" GAME_NAME "/" GAME_NAME ".ino.hex");
    abb.debuggerBackend.addSrcFile(ROOTDIR "resources/games/" GAME_NAME "/srcMix.asm");
    abb.symbolTable.loadFromDumpFile(ROOTDIR "resources/games/" GAME_NAME "/symbs.asm");
#elif 1
    //abb.ab.load("C:/Users/Julian/Desktop/Dateien/scriipts/cpp/Arduboy/ArduboyWorks-master/_hexs/hopper_v0.22.hex");
    abb.ab.loadFromHexFile("C:/Users/korma/Desktop/Julian/dateien/scriipts/cpp/Arduboy/ArduboyWorks-master/_hexs/ardubullets_v0.11.hex");
#elif 1
    abb.ab.load(ROOTDIR"resources/games/tests/emu_tests_stuff.ino.hex");
    abb.debuggerBackend.srcMix.loadSrcFile(ROOTDIR"resources/games/tests/srcMix.asm");
    abb.symbolTable.loadFromDumpFile(ROOTDIR"resources/games/tests/symbs.asm");
#elif 1

    abb.ab.load(ROOTDIR"resources/games/test2/emu_tests_stuff2.ino.hex");
    abb.debuggerBackend.srcMix.loadSrcFile(ROOTDIR"resources/games/test2/srcMix.asm");
    abb.symbolTable.loadFromDumpFile(ROOTDIR"resources/games/test2/symbs.asm");
#else
    abb.ab.load(ROOTDIR"resources/games/CastleBoySimple/CastleBoySimple.ino.hex");
    abb.debuggerBackend.srcMix.loadSrcFile(ROOTDIR"resources/games/CastleBoySimple/srcMix.asm");
    abb.symbolTable.loadFromDumpFile(ROOTDIR"resources/games/CastleBoySimple/symbs.asm");
#endif

    /*
    
    cycs: 13600001
    PC: 0x1639 => Addr: 2c72
    
    */

    abb.ab.mcu.powerOn();
#endif
    std::cout << "Completed Setup" << std::endl;
}
void draw() {
    BeginDrawing();

    mouseDelta = GetMousePosition() - lastMousePos;

    ClearBackground(DARKGRAY);

    BeginRLImGui();

    ArduEmu::draw();

    ImGui::ShowDemoWindow(NULL);
    EndRLImGui();

    lastMousePos = GetMousePosition();

    DrawFPS(0,0);

    EndDrawing();

    frameCnt++;
}
void destroy() {
    ShutdownRLImGui();
    ArduEmu::destroy();
    CloseWindow();
}




uint64_t benchmark_step(double secs, const char* gamePath, uint8_t flags);

void benchmark() {
    /*
    
        Inst update: 1667613550  6.25%
        switch:      1667615954  4.27%
          no heap                4.10%
            no /GS               4.06%
    
    */


    std::vector<std::string> testFiles = {
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

    res += StringUtils::format("Arduboy benchmark:\nid=%llu\nsecs=%f\ntestFiles=[\n", id, secs);

    for (size_t i = 0; i < testFiles.size(); i++) {
        res += StringUtils::format("\t%u: %s,\n",i,testFiles[i].c_str());
    }

    res += "]\n";

    printf("%s", res.c_str());

    std::string r;

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
        double percSum = 0;

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
            percSum += perc;

            r = StringUtils::format("\ttook: %14.7fms => %12.7f%%\n", (double)micros/1000, perc);
            printf("%s", r.c_str());
            res += r;
        }

        double avgMs = ((double)micosSum/1000) / testFiles.size();
        double avgPerc = percSum / testFiles.size();

        r = StringUtils::format("AVGs: took: %14.7fms => %12.7f%%\n\n", avgMs, avgPerc);
        printf("%s", r.c_str());
        res += r;

        //break;
    }

    r = "Done :)\n";
    printf("%s", r.c_str());
    res += r;

    StringUtils::writeStringToFile(res, (std::to_string(id) + "_benchmark.txt").c_str());
}

uint64_t benchmark_step(double secs ,const char* gamePath, uint8_t flags) {
    Arduboy ab;


    if (!ab.loadFromHexFile(gamePath)) {
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







//ababb..load("C:\\Users\\Julian\\source\\repos\\ArduboyTests\\ArduboyTest1\\ArduboyTest1\\ArduboyTest1\\ArduboyTest1.ino.hex");
//abb.ab.load("C:/Users/Julian/Desktop/Dateien/Arduino/Arduboy_supersimple/arduino_build_472331/Arduboy_supersimple.ino.hex");
//abb.ab.load("C:/Users/Julian/Desktop/Dateien/Arduino/Arduboy_supersimple2/arduino_build_737976/HelloWorld.ino.hex");
//abb.ab.load("C:/Users/Julian/Desktop/Dateien/scriipts/Processing 3 sketche/arduboyHexToImg/data/CastleBoy.hex"); // Chrashes
//abb.ab.load("C:/Users/Julian/Desktop/Dateien/scriipts/Processing 3 sketche/arduboyHexToImg/data/UnicornDash.hex");











/*


void printFlt(uint64_t f,uint8_t ebits,uint8_t fbits) {
uint64_t exp = f >> fbits & (((uint64_t)1 << ebits)-1);
const uint64_t exponentBias = ((uint64_t)1 << ebits) / 2 - 1;
printf("s: %d, f: %llx, e: %llx (%lld)\n",(int)(f>>(fbits+ebits)), f&(((uint64_t)1<<fbits)-1), exp, (int)exp-exponentBias);
}



double a = 11;
uint64_t a_ = *(uint64_t*)&a;
uint64_t b = StringUtils::stof("11",0, 11, 52);
double b_ = *(double*)&b;
printf("%.10f vs. %.10f\n", a, b_);
printf("%.50f\n", a);
printf("%.50f\n", b_);
printf("%llu vs. %llu\n", a_, b);
//printf("%08x vs. %08x\n", a_, b);
printf("same: %s\n", a_ == b ? "true" : "false");
printFlt(a_,11,52);
printFlt(b,11,52);
printf("diff: %.30f => %.10f%%\n", b_-a, (b_/a-1)*100);
return 0;


*/