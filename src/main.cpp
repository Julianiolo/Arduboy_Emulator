#include <iostream>

#include "raylib.h"
#include "imgui.h"
#include "rlImGui/rlImGui.h"
#include "oneHeaderLibs/VectorOperators.h"

#include "ArdEmu.h"

#ifdef _MSC_VER
#define ROOTDIR "./"
#else
#define ROOTDIR "../../../../"
#endif

void setup();
void draw();
void destroy();

int frameCnt = 0;

Vector2 lastMousePos;
Vector2 mouseDelta;



int main(void) {
    setup();

    while (!WindowShouldClose()) {
        draw();
    }

    destroy();

    return 0;
}

void setup() {
    SetConfigFlags( FLAG_VSYNC_HINT | FLAG_WINDOW_RESIZABLE | FLAG_MSAA_4X_HINT );
    InitWindow(1200, 800, "ABemu");

    SetWindowResizeDrawCallback(draw);
    SetTargetFPS(60);

    lastMousePos = GetMousePosition();
    mouseDelta = { 0,0 };

    SetupRLImGui(true);
    ImGuiIO& io = ImGui::GetIO();
    io.ConfigFlags |= ImGuiConfigFlags_DockingEnable;
    io.ConfigWindowsResizeFromEdges = true;
    io.WantSaveIniSettings = false;
    io.ConfigWindowsMoveFromTitleBarOnly = true;
    
    printf("%s\n", GetWorkingDirectory());

    ArduEmu::init();

#if 0
    ABB::ArduboyBackend& abb = ArduEmu::addEmulator("Thing");
    abb.ab.mcu.logFlags = A32u4::ATmega32u4::LogFlags_ShowModule;
    //abb.ab.mcu.debugger.halt();
    //abb.ab.load("../../../../ressources/games/CastleBoy.hex");
#if 0
    abb.ab.load(ROOTDIR"resources/games/CastleBoy/CastleBoy.ino.hex");
    abb.debuggerBackend.srcMix.loadSrcFile(ROOTDIR"resources/games/CastleBoy/srcMix.asm");
    abb.symbolTable.loadFromDumpFile(ROOTDIR"resources/games/CastleBoy/symbs.asm");
#elif 0
    abb.ab.load(ROOTDIR"resources/games/MicroCity/MicroCity.ino.hex");
    abb.debuggerBackend.srcMix.loadSrcFile(ROOTDIR"resources/games/MicroCity/srcMix.asm");
    abb.symbolTable.loadFromDumpFile(ROOTDIR"resources/games/MicroCity/symbs.asm");

#elif 0
    abb.ab.load(ROOTDIR "resources/games/ardynia.hex");
#elif 1
    abb.loadFromELFFile(ROOTDIR "resources/games/Hollow/hollow.ino.elf");
    //abb.ab.load(ROOTDIR "resources/games/Hollow/hollow.ino.hex");
    StringUtils::writeBytesToFile(abb.ab.mcu.flash.getData(), abb.ab.mcu.flash.size(), "hex2.bin");
#elif 1
//#define GAME_NAME "almostPong"
//#define GAME_NAME "PixelPortal"
#define GAME_NAME "longcat"
    abb.ab.load(ROOTDIR "resources/games/" GAME_NAME "/" GAME_NAME ".ino.hex");
    abb.debuggerBackend.srcMix.loadSrcFile(ROOTDIR "resources/games/" GAME_NAME "/srcMix.asm");
    abb.symbolTable.loadFromDumpFile(ROOTDIR "resources/games/" GAME_NAME "/symbs.asm");
#elif 0
    //abb.ab.load("C:/Users/Julian/Desktop/Dateien/scriipts/cpp/Arduboy/ArduboyWorks-master/_hexs/hopper_v0.22.hex");
    abb.ab.load("C:/Users/korma/Desktop/Julian/dateien/scriipts/cpp/Arduboy/ArduboyWorks-master/_hexs/ardubullets_v0.11.hex");
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