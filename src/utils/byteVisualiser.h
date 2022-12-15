#ifndef __ABB_UTILS_BYTEVISUALISER_H__
#define __ABB_UTILS_BYTEVISUALISER_H__

#include "raylib.h"
#include <stdint.h>

namespace ABB {
	namespace utils {
		class ByteVisualiser {
		private:
			static Image texImg;
			static Texture2D tex;
		public:
			static void init();
			static void destroy();

			static void DrawByte(uint8_t byte, float width, float height);
		private:
			static void update();
		};
	}
}
	

#endif