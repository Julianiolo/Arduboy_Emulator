#include <iostream>

#include "raylib.h"
#include "imgui.h"
#include "rlImGui/rlImGui.h"
#include "oneHeaderLibs/VectorOperators.h"

#include "ArdEmu.h"

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
    SetConfigFlags(FLAG_VSYNC_HINT | FLAG_WINDOW_RESIZABLE | FLAG_MSAA_4X_HINT);
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
    
    ArduEmu::init();

    ABB::ArduboyBackend& abb = ArduEmu::addEmulator("Thing");
    abb.ab.execFlags = A32u4::ATmega32u4::ExecFlags_Debug;
    abb.ab.mcu.logFlags = A32u4::ATmega32u4::LogFlags_ShowAll;
    //abb.ab.mcu.debugger.halt();
    abb.ab.load("../../../../ressources/games/CastleBoy.hex");
    abb.debuggerBackend.srcMix.loadSrcFile("../../../../../../Arduboy/CastleBoy-master/arduino_build_128300/srcMix.asm");
    abb.ab.mcu.powerOn();
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