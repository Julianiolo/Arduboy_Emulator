#include "byteVisualiser.h"
#include "../Extensions/imguiExt.h"

Texture2D ABB::utils::ByteVisualiser::tex;
Image ABB::utils::ByteVisualiser::texImg;
void ABB::utils::ByteVisualiser::init() {
	texImg = GenImageColor(256*3,8+2, BLACK);
	tex = LoadTextureFromImage(texImg);
	update();
}
void ABB::utils::ByteVisualiser::destroy() {
	UnloadTexture(tex);
	UnloadImage(texImg);
}

void ABB::utils::ByteVisualiser::DrawByte(uint8_t byte, float width, float height) {
	ImGuiExt::ImageRect(tex, width, height, { (float)(byte*3+1),1,1,8 });
}

void ABB::utils::ByteVisualiser::update() {
	Color* colData = (Color*)texImg.data;
	for (size_t i = 0; i < 256; i++) {
		colData[i*3]               = i&(1<<0) ? WHITE : BLACK;
		colData[i*3 + 9*tex.width] = i&(1<<7) ? WHITE : BLACK;
		
		for (size_t b = 0; b < 8; b++) {
			Color c = (i & ((uint64_t)1 << b)) ? WHITE : BLACK;
			size_t off = i * 3 + (b + 1) * texImg.width;
			colData[off] = c;
			colData[off+1] = c;
			colData[off+2] = c;
		}
	}
	UpdateTexture(tex, texImg.data);
}