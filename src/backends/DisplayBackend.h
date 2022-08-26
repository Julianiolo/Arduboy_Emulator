#ifndef _ARDUBOY_DISPLAY_BACKEND
#define _ARDUBOY_DISPLAY_BACKEND

#include "raylib.h"
#include "imgui.h"
#include "Arduboy.h"

namespace ABB {
	class DisplayBackend {
	private:
		AB::Display* display;

		Texture2D displayTex;
		Image displayImg;

		struct Color3 {
			uint8_t r;
			uint8_t g;
			uint8_t b;
		};

		Texture& getTex();
		Rectangle getTexSrcRect();
		bool getPixelOfImage(uint8_t x, uint8_t y);

		int lastWinFocused = -1;

		uint8_t rotation = 0;
	public:

		DisplayBackend(AB::Display* display);
		~DisplayBackend();

		void update();
		
		void draw(const ImVec2& size);

		bool isWinFocused() const;

		void rotateCW();
		void rotateCCW();
	};
}

#endif