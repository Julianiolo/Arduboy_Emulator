#include "byteVisualiser.h"
#include "../Extensions/imguiExt.h"

Texture2D ABB::utils::ByteVisualiser::tex;
void ABB::utils::ByteVisualiser::init() {
	Image texImg;
	texImg.width = 256*3;
	texImg.height = 8+2;
	texImg.data = new Color[texImg.width * texImg.height];
	texImg.format = PIXELFORMAT_UNCOMPRESSED_R8G8B8A8;
	texImg.mipmaps = 1;

	Color* colData = (Color*)texImg.data;
	for (size_t i = 0; i < 256; i++) {
		colData[i*3]               = i&(1<<0) ? WHITE : BLACK;
		colData[i*3 + 9*tex.width] = i&(1<<7) ? WHITE : BLACK;
		
		for (size_t b = 0; b < 8; b++) {
			Color c = (i & (1 << b)) ? WHITE : BLACK;
			size_t off = i * 3 + (b + 1) * texImg.width;
			colData[off] = c;
			colData[off+1] = c;
			colData[off+2] = c;
		}
	}

	tex = LoadTextureFromImage(texImg);
	delete[] texImg.data;
}
void ABB::utils::ByteVisualiser::destroy() {
	UnloadTexture(tex);
}

void ABB::utils::ByteVisualiser::DrawByte(uint8_t byte, float width, float height) {
	ImGuiExt::ImageRect(tex, width, height, { (float)(byte*3+1),1,1,8 });
}