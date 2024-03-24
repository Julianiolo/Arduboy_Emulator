#include <iostream>
#include <fstream>
#include <chrono>
#include <vector>
#include <string>
#include <ctime>

#define IMGUI_DEFINE_MATH_OPERATORS 1

#include "raylib.h"
#include "imgui.h"
#include "rlImGui.h"
#include "oneHeaderLibs/VectorOperators.h"
#include "StreamUtils.h"

#include "ArduEmu.h"
#include "backends/LogBackend.h"

#include "imgui/icons.h"

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
#endif
}

static void DrawFPSRL(int x, int y){
    Color color = LIME;                         // Good FPS
    int fps = GetFPS();

    if ((fps < 30) && (fps >= 15)) color = ORANGE;  // Warning FPS
    else if (fps < 15) color = RED;             // Low FPS

    const char* str = TextFormat("%2i FPS", GetFPS());
    DrawText(str, x-MeasureText(str, 20), y, 20, color);
}

static void drawClickDebug(int button) {
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


        //SetWindowResizeDrawCallback(draw);
        SetExitKey(0);

        InitAudioDevice();

        auto end = std::chrono::high_resolution_clock::now();

        double ms = std::chrono::duration_cast<std::chrono::microseconds>(end - start).count()/1000.0;
        SYS_LOGF(LogUtils::LogLevel_DebugOutput, "window init took: %f ms", ms);
    }
    SetTargetFPS(60);

    lastMousePos = GetMousePosition();
    mouseDelta = { 0,0 };

    rlImGuiSetup(true);
    
    ImGuiIO& io = ImGui::GetIO();
    io.ConfigFlags |= ImGuiConfigFlags_DockingEnable;
    io.ConfigWindowsResizeFromEdges = true;
    io.IniFilename = NULL;
    io.ConfigWindowsMoveFromTitleBarOnly = true;

    ArduEmu::init();

#if __has_include("main_setup.h")
#include "main_setup.h"
#endif
    
    SYS_LOG(LogUtils::LogLevel_DebugOutput, "Completed setup");
}
void draw() {
    BeginDrawing();

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
