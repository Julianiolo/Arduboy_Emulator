#ifndef _ARDUBOY_DISPLAY_BACKEND
#define _ARDUBOY_DISPLAY_BACKEND

#include "raylib.h"
#define IMGUI_DEFINE_MATH_OPERATORS 1
#include "imgui.h"
#include "../Console.h"

namespace ABB {
	class DisplayBackend {
	private:
		friend class ArduboyBackend;

		std::string name;
		Console* mcu;

		Texture2D displayTex;
		Image displayImg;

		struct Color3 {
			uint8_t r;
			uint8_t g;
			uint8_t b;

			ImVec4 toImGuiCol() const;
			static Color3 fromImGuiCol(const ImVec4& col);
		};

		Texture& getTex();
		Rectangle getTexSrcRect();
		bool getPixelOfImage(uint8_t x, uint8_t y);

		int lastWinFocused = -1;

		uint8_t rotation = 0;

		Color3 darkColor = { 0,0,0 };
		Color3 lightColor = { 255,255,255 };
		bool setColorWinOpen = false;
	public:

		DisplayBackend(Console* mcu, const char* name);
		~DisplayBackend();

		void update();
		
		void draw(const ImVec2& size, bool showToolTip, ImDrawList* drawList = nullptr);
		void drawSetColorWin();
		void openSetColorWin();

		bool isWinFocused() const;

		void rotateCW();
		void rotateCCW();
		uint8_t getRotation() const;

		void setDarkColor(const Color3& color);
		void setLightColor(const Color3& color);

		size_t sizeBytes() const;
	};
}

#endif