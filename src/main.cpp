#include <iostream>
#include <fstream>
#include <chrono>
#include <vector>
#include <string>
#include <ctime>

#include "raylib.h"
#include "imgui.h"
#include "rlImGui.h"
#include "oneHeaderLibs/VectorOperators.h"
#include "StreamUtils.h"

#include "ArduEmu.h"
#include "backends/LogBackend.h"

#include "utils/icons.h"

#if defined(PLATFORM_WEB)
    #include "emscripten.h"
#endif

#if defined(_MSC_VER) || 1
#define ROOTDIR "./"
#else
#define ROOTDIR "../../../../"
#endif

#define SYS_LOG_MODULE "raylib"

void setup();
void draw();
void destroy();

void benchmark();

int frameCnt = 0;

Vector2 lastMousePos;
Vector2 mouseDelta = { 0,0 };

int test(int argc, char** argv); // from tests.cpp

int main(int argc, char** argv) {
#if 1
    setup();

#if defined(PLATFORM_WEB)
    emscripten_set_main_loop(draw, 0, 1);
    SetTargetFPS(60);
#else
    while (!WindowShouldClose()) {
        draw();
    }
#endif

    destroy();

    return 0;
#elif 1
    test(argc, argv);
#else
    Arduboy ab;

    const char* gamePath;
#if 1
    gamePath = ROOTDIR "resources/games/Hollow/hollow.ino.hex";
#else
    gamePath = "/home/juli/Downloads/166a9d346a3793b00cb90ea0f2145fec220638f6.hex";
#endif

    if (!ab.mcu.loadFromHexFile(gamePath)) {
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

void DrawFPSRL(int x, int y){
    Color color = LIME;                         // Good FPS
    int fps = GetFPS();

    if ((fps < 30) && (fps >= 15)) color = ORANGE;  // Warning FPS
    else if (fps < 15) color = RED;             // Low FPS

    const char* str = TextFormat("%2i FPS", GetFPS());
    DrawText(str, x-MeasureText(str, 20), y, 20, color);
}

void drawClickDebug(int button) {
    bool clicks[] = {IsMouseButtonPressed(button), IsMouseButtonReleased(button), IsMouseButtonDown(button), IsMouseButtonUp(button)};
    for(size_t i = 0; i<4; i++) {
        DrawRectangle(GetScreenWidth()-(4-(int)i)*20, 25, 20, 20, clicks[i]?WHITE:BLACK);
    }
}


void setup() {
    ABB::LogBackend::init();

    {
        auto start = std::chrono::high_resolution_clock::now();

        SetConfigFlags( FLAG_VSYNC_HINT | FLAG_WINDOW_RESIZABLE | FLAG_MSAA_4X_HINT );
        InitWindow(1200, 800, "ABemu");


        SetWindowResizeDrawCallback(draw);
        SetExitKey(0);

        InitAudioDevice();

        auto end = std::chrono::high_resolution_clock::now();

        double ms = std::chrono::duration_cast<std::chrono::microseconds>(end - start).count()/1000.0;
        SYS_LOGF(LogUtils::LogLevel_DebugOutput, "window init took: %f ms", ms);
    }
    //SetTargetFPS(60);

    lastMousePos = GetMousePosition();
    mouseDelta = { 0,0 };

    rlImGuiSetup(true);
    
    ImGuiIO& io = ImGui::GetIO();
    io.ConfigFlags |= ImGuiConfigFlags_DockingEnable;
    io.ConfigWindowsResizeFromEdges = true;
    io.IniFilename = NULL;
    io.ConfigWindowsMoveFromTitleBarOnly = true;

    
    
    //printf("%s\n", GetWorkingDirectory());

    ArduEmu::init();

#if 1
    ABB::ArduboyBackend& abb = ArduEmu::addEmulator("Thing");
    //abb.ab.mcu.debugger.halt();
    //abb.ab.load("../../../../ressources/games/CastleBoy.hex");
#if 0

#elif 0
    abb.ab.mcu.loadFromHexFile(ROOTDIR"resources/games/CastleBoy/CastleBoy.ino.hex");
    abb.debuggerBackend.addSrcFile(ROOTDIR"resources/games/CastleBoy/srcMix.asm");
    //abb.symbolTable.loadFromDumpFile(ROOTDIR"resources/games/CastleBoy/symbs.asm");
#elif 0
    abb.ab.mcu.loadFromELFFile(ROOTDIR"resources/games/Arduboy3D/Arduboy3D.ino.elf");
#elif 1
    //abb.loadFromELFFile("C:/Users/examp/Desktop/Dateien/ArduboyGames/Arduboy3D-master/Arduboy3D.ino.elf");
    abb.loadFile(ROOTDIR "resources/games/abSynth.hex");
#elif 0
    abb.ab.loadFromHexFile("C:/Users/examp/Desktop/Dateien/ArduboyGames/Arduboy3D-master/Arduboy3D.ino.hex");
    abb.ab.mcu.symbolTable.loadFromDumpFile("C:/Users/examp/Desktop/Dateien/ArduboyGames/Arduboy3D-master/symbs.asm");
    abb.debuggerBackend.addSrcFile("C:/Users/examp/Desktop/Dateien/ArduboyGames/Arduboy3D-master/srcMix.asm");
#elif 0
    //abb.loadFromELFFile(ROOTDIR"resources/games/CastleBoy/CastleBoy.ino.elf");
    //abb.loadFromELFFile(ROOTDIR"resources/games/almostPong/almostPong.ino.elf");
    abb.loadFromELFFile(ROOTDIR"resources/games/HelloWorld/HelloWorld.ino.elf");
#elif 1
    abb.loadFile(ROOTDIR"resources/games/HelloWorld/HelloWorld.ino.hex");
    //abb.loadFromELFFile(ROOTDIR"resources/games/HelloWorld/HelloWorld.ino.elf");
    //abb.debuggerBackend.generateSrc();
    //abb.debuggerBackend.addSrcFile(ROOTDIR"resources/games/HelloWorld/srcMix.asm");
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
#elif 1
//#define GAME_NAME "almostPong"
//#define GAME_NAME "PixelPortal"
#define GAME_NAME "longcat"
    abb.loadFile(ROOTDIR "resources/games/" GAME_NAME "/" GAME_NAME ".ino.hex");
    abb.ab.mcu.symbolTable.loadFromDumpFile(ROOTDIR "resources/games/" GAME_NAME "/symbs.asm");
    abb.debuggerBackend.addSrcFile(ROOTDIR "resources/games/" GAME_NAME "/srcMix.asm");
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

    abb.mcu.powerOn();
#endif
    std::cout << "Completed Setup" << std::endl;
}
void draw() {
    BeginDrawing();
    //printf("SF:%4d      @%fs\n", frameCnt, GetTime());

    mouseDelta = GetMousePosition() - lastMousePos;

    ClearBackground(DARKGRAY);

    rlImGuiBegin();

    ArduEmu::draw();

    rlImGuiEnd();

    lastMousePos = GetMousePosition();

    DrawFPSRL(GetScreenWidth(),0);

    //drawClickDebug(MOUSE_BUTTON_LEFT);

    //printf("EF:%4d      @%fs\n", frameCnt, GetTime());

    EndDrawing();

    frameCnt++;
}
void destroy() {
    rlImGuiShutdown();
    ArduEmu::destroy();
    CloseAudioDevice();
    CloseWindow();
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