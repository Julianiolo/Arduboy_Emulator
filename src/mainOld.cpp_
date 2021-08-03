#include "raylib.h"

#include "Arduboy.h"

int main(void) {
    {
        const int screenWidth = 800;
        const int screenHeight = 450;

        InitWindow(screenWidth, screenHeight, "raylib [core] example - basic window");

        SetTargetFPS(60);

        Arduboy ab;
        //ab.load("C:\\Users\\Julian\\source\\repos\\ArduboyTests\\ArduboyTest1\\ArduboyTest1\\ArduboyTest1\\ArduboyTest1.ino.hex");
        //ab.load("C:/Users/Julian/Desktop/Dateien/Arduino/Arduboy_supersimple/arduino_build_472331/Arduboy_supersimple.ino.hex");
        //ab.load("C:/Users/Julian/Desktop/Dateien/Arduino/Arduboy_supersimple2/arduino_build_737976/HelloWorld.ino.hex");
        //ab.load("C:/Users/Julian/Desktop/Dateien/scriipts/Processing 3 sketche/arduboyHexToImg/data/CastleBoy.hex"); // Chrashes
        ab.load("C:/Users/Julian/Desktop/Dateien/scriipts/Processing 3 sketche/arduboyHexToImg/data/UnicornDash.hex");

        //ab.execFlags |= ATmega32u4::ExecFlags_Debug;
        ab.mcu.powerOn();

        //ab.mcu.debugger.setBreakpoint(0x2970);
        //ab.mcu.debugger.setBreakpoint(0x299e);
        //ab.mcu.debugger.setBreakpoint(0x296a);
        //ab.mcu.debugger.setBreakpoint(0);

        //ab.mcu.debugger.halt();
        ab.mcu.debugger.setBreakpoint(0xeb4);

        Image displayImg = GenImageColor(AB::Display::WIDTH, AB::Display::HEIGHT, RED);
        Texture displayTex = LoadTextureFromImage(displayImg);

        while (!WindowShouldClose()) {
            BeginDrawing();

            ClearBackground(RAYWHITE);

            ab.buttonState = 0;
            ab.buttonState |= IsKeyDown(KEY_LEFT) << Arduboy::Button_Left_Bit;
            ab.buttonState |= IsKeyDown(KEY_RIGHT) << Arduboy::Button_Right_Bit;
            ab.buttonState |= IsKeyDown(KEY_UP) << Arduboy::Button_Up_Bit;
            ab.buttonState |= IsKeyDown(KEY_DOWN) << Arduboy::Button_Down_Bit;
            ab.buttonState |= IsKeyDown(KEY_A) << Arduboy::Button_A_Bit;
            ab.buttonState |= IsKeyDown(KEY_B) << Arduboy::Button_B_Bit;

            ab.newFrame();

            for (int y = 0; y < AB::Display::HEIGHT; y++) {
                for (int x = 0; x < AB::Display::WIDTH; x++) {
                    ((Color*)displayImg.data)[y * AB::Display::WIDTH + x] = ab.display.getPixel(x, y) ? WHITE : BLACK;
                }
            }

            UpdateTexture(displayTex, displayImg.data);

            DrawTextureEx(displayTex, { 0,0 }, 0, 5, WHITE);

            DrawFPS(GetScreenWidth() - 100, 0);

            EndDrawing();
        }

        UnloadTexture(displayTex);
        UnloadImage(displayImg);

        CloseWindow();
    }

    return 0;
}