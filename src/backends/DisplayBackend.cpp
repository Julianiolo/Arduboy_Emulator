#include "DisplayBackend.h"

#include <stdint.h>

#include "imgui_internal.h"

#include "../rlImGui/rlImGui.h"
#include "../utils/mathUtils.h"
#include "../Extensions/imguiExt.h"

ABB::DisplayBackend::DisplayBackend(AB::Display* display) : display(display) {
	//                                       \/ padding
	displayImg.width = AB::Display::WIDTH   + 2;
	displayImg.height = AB::Display::HEIGHT + 2;
	displayImg.format = PIXELFORMAT_UNCOMPRESSED_R8G8B8;
	displayImg.data = new uint8_t[displayImg.width * displayImg.height * 3];
	displayImg.mipmaps = 1;

	//set the four corners to black
	((Color3*)displayImg.data)[0]                                       = Color3{ 0,0,0 };
	((Color3*)displayImg.data)[displayImg.width-1]                      = Color3{ 0,0,0 };
	((Color3*)displayImg.data)[displayImg.width]                        = Color3{ 0,0,0 };
	((Color3*)displayImg.data)[displayImg.width + displayImg.width - 1] = Color3{ 0,0,0 };

	displayTex = LoadTextureFromImage(displayImg);
}
ABB::DisplayBackend::~DisplayBackend() {
	UnloadImage(displayImg);
	UnloadTexture(displayTex);
}

void ABB::DisplayBackend::update() {
	for (int y = 0; y < AB::Display::HEIGHT; y++) {
		for (int x = 0; x < AB::Display::WIDTH; x++) {
			((Color3*)displayImg.data)[(y+1) * displayImg.width + (x+1)] = display->getPixel(x, y) ? Color3{255, 255, 255} : Color3{0,0,0};
		}
	}

	for (int x = 0; x < AB::Display::WIDTH; x++) {
		((Color3*)displayImg.data)[x+1]                                            = display->getPixel(                 x,                     0) ? Color3{255, 255, 255} : Color3{0,0,0};
	}
	for (int x = 0; x < AB::Display::WIDTH; x++) {
		((Color3*)displayImg.data)[(displayImg.height-1) * displayImg.width + x+1] = display->getPixel(                 x, AB::Display::HEIGHT-1) ? Color3{255, 255, 255} : Color3{0,0,0};
	}

	for (int y = 0; y < AB::Display::HEIGHT; y++) {
		((Color3*)displayImg.data)[y*displayImg.width]                             = display->getPixel(                 0,                     y) ? Color3{255, 255, 255} : Color3{0,0,0};
	}
	for (int y = 0; y < AB::Display::HEIGHT; y++) {
		((Color3*)displayImg.data)[y*displayImg.width + displayImg.width-1]        = display->getPixel(AB::Display::WIDTH,                     y) ? Color3{255, 255, 255} : Color3{0,0,0};
	}

	UpdateTexture(displayTex, displayImg.data);
}

Texture& ABB::DisplayBackend::getTex() {
	return displayTex;
}

Rectangle ABB::DisplayBackend::getTexSrcRect() {
	return { 1,1,AB::Display::WIDTH, AB::Display::HEIGHT };
}

bool ABB::DisplayBackend::getPixelOfImage(uint8_t x, uint8_t y) {
	return ((Color3*)displayImg.data)[(y+1)*displayImg.width + x + 1].r ? 1 : 0;
}

void ABB::DisplayBackend::draw(const ImVec2& size) {
	const ImVec2 pos = ImGui::GetCursorScreenPos();
	RLImGuiImageRect(&displayTex,size.x,size.y, getTexSrcRect());
	if (ImGui::IsItemHovered()) {
		ImGui::BeginTooltip();
		ImGuiIO& io = ImGui::GetIO();
		ImVec2 region = { 32, 16 };
		ImVec2 texSize = { AB::Display::WIDTH, AB::Display::HEIGHT };
		float zoom = 2;
		ImVec2 relMousePos = { io.MousePos.x - pos.x, io.MousePos.y - pos.y };
		ImVec2 relPosRaw = {(relMousePos.x / size.x)*texSize.x , (relMousePos.y / size.y)*texSize.y};
		ImVec2 relPos = { relPosRaw.x - region.x / 2, relPosRaw.y - region.y / 2 };

		relPos.x = MathUtils::clamp<float>(relPos.x, 0, texSize.x - region.x);
		relPos.y = MathUtils::clamp<float>(relPos.y, 0, texSize.y - region.y);

		uint8_t pixX = (uint8_t)(relPosRaw.x);
		uint8_t pixY = (uint8_t)(relPosRaw.y);

		ImGui::Text("Pixel: x:%d, y:%d ", (int)pixX, (int)pixY);
		ImGui::SameLine();
		ImGuiExt::Rect(2074620378, getPixelOfImage(pixX, pixY) ? ImVec4{1, 1, 1, 1} : ImVec4{0, 0, 0, 1});

		ImVec2 texScl = {size.x / AB::Display::WIDTH, size.y / AB::Display::HEIGHT};
		RLImGuiImageRect(&displayTex, region.x * texScl.x * zoom, region.y * texScl.y * zoom, { relPos.x + 1, relPos.y + 1, region.x, region.y });

		ImDrawList* drawList = ImGui::GetWindowDrawList();
		ImVec2 imgCenter = ImRect{ ImGui::GetItemRectMin(), ImGui::GetItemRectMax() }.GetCenter();
		ImVec2 crossOff = {relPos.x + region.x/2 - relPosRaw.x, relPos.y + region.y/2 - relPosRaw.y};
		ImVec2 crossHair = {imgCenter.x - (crossOff.x*texScl.x*zoom), imgCenter.y - (crossOff.y*texScl.y*zoom)};

		float lineLen = 20;
		float lineThick = 2;
		drawList->AddLine(
			{crossHair.x - lineLen/2, crossHair.y},
			{crossHair.x + lineLen/2, crossHair.y},
			IM_COL32(100,100,100,255), lineThick
		);
		drawList->AddLine(
			{crossHair.x, crossHair.y - lineLen/2},
			{crossHair.x, crossHair.y + lineLen/2},
			IM_COL32(100,100,100,255), lineThick
		);

		ImGui::EndTooltip();
	}
}