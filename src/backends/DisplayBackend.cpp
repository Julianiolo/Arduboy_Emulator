#include "DisplayBackend.h"

#include <stdint.h>
#include <cstring>
#include <cmath>

#define IMGUI_DEFINE_MATH_OPERATORS 1
#include "imgui_internal.h"

#include "../rlImGui/rlImGui.h"
#include "../Extensions/imguiExt.h"
#include "../Extensions/imguiOperators.h"

#include "MathUtils.h"
#include "DataUtils.h"
#include "DataUtilsSize.h"


ImVec4 ABB::DisplayBackend::Color3::toImGuiCol() const {
	return {(float)r/255, (float)g/255, (float)b/255, 1};
}
ABB::DisplayBackend::Color3 ABB::DisplayBackend::Color3::fromImGuiCol(const ImVec4& color) {
	return Color3{ (uint8_t)(color.x*255), (uint8_t)(color.y*255), (uint8_t)(color.z*255) };
}

ABB::DisplayBackend::DisplayBackend(MCU* mcu, const char* name) : name(name), mcu(mcu) {
	//                                       \/ padding
	displayImg.width = MCU::DISPLAY_WIDTH   + 2;
	displayImg.height = MCU::DISPLAY_HEIGHT + 2;
	displayImg.format = PIXELFORMAT_UNCOMPRESSED_R8G8B8;
	displayImg.data = new uint8_t[displayImg.width * displayImg.height * 3];
	displayImg.mipmaps = 1;

	std::memset(displayImg.data, 0, displayImg.width * displayImg.height * 3);

	displayTex = LoadTextureFromImage(displayImg);
}
ABB::DisplayBackend::~DisplayBackend() {
	delete[] (uint8_t*)displayImg.data;
	UnloadTexture(displayTex);
}

void ABB::DisplayBackend::update() {

	// update main part of Image
	for (size_t y = 0; y < MCU::DISPLAY_HEIGHT; y++) {
		for (size_t x = 0; x < MCU::DISPLAY_WIDTH; x++) {
			((Color3*)displayImg.data)[(y+1) * displayImg.width + (x+1)] = mcu->display_getPixel(x, y).r ? lightColor : darkColor;
		}
	}

	// update edges with duplicates
	for (size_t x = 0; x < MCU::DISPLAY_WIDTH; x++) { // top edge
		((Color3*)displayImg.data)[x+1]                                            = mcu->display_getPixel(                 x,                     0).r ? lightColor : darkColor;
	}
	for (size_t x = 0; x < MCU::DISPLAY_WIDTH; x++) { // bottom edge
		((Color3*)displayImg.data)[(displayImg.height-1) * displayImg.width + x+1] = mcu->display_getPixel(                 x, MCU::DISPLAY_HEIGHT-1).r ? lightColor : darkColor;
	}

	for (size_t y = 0; y < MCU::DISPLAY_HEIGHT; y++) { // left edge
		((Color3*)displayImg.data)[(y+1)*displayImg.width]                         = mcu->display_getPixel(                   0,                     y).r ? lightColor : darkColor;
	}
	for (size_t y = 0; y < MCU::DISPLAY_HEIGHT; y++) { // right edge
		((Color3*)displayImg.data)[(y+1)*displayImg.width + displayImg.width-1]    = mcu->display_getPixel(MCU::DISPLAY_WIDTH-1,                     y).r ? lightColor : darkColor;
	}

	//set the four corners to dark color
	((Color3*)displayImg.data)[0]                                                             = darkColor;
	((Color3*)displayImg.data)[displayImg.width-1]                                            = darkColor;
	((Color3*)displayImg.data)[(displayImg.height-1)*displayImg.width]                        = darkColor;
	((Color3*)displayImg.data)[(displayImg.height-1)*displayImg.width + displayImg.width - 1] = darkColor;

	UpdateTexture(displayTex, displayImg.data);
}

Texture& ABB::DisplayBackend::getTex() {
	return displayTex;
}

Rectangle ABB::DisplayBackend::getTexSrcRect() {
	return { 1,1,MCU::DISPLAY_WIDTH, MCU::DISPLAY_HEIGHT };
}

bool ABB::DisplayBackend::getPixelOfImage(uint8_t x, uint8_t y) {
	return ((Color3*)displayImg.data)[(y+1)*displayImg.width + x + 1].r ? 1 : 0;
}

void ABB::DisplayBackend::draw(const ImVec2& contentSize, bool showToolTip, ImDrawList* drawList) {
	if (ImGui::IsWindowFocused()) {
		lastWinFocused = ImGui::GetCurrentContext()->FrameCount;
	}

	bool drawBorders = true;

	bool flipDims = rotation == 1 || rotation == 3;

	ImVec2 size;
	ImVec2 texPos;
	{
		float ratio = (float)MCU::DISPLAY_WIDTH / (float)MCU::DISPLAY_HEIGHT;
		if (flipDims) ratio = 1 / ratio;

		ImVec2 pos;
		if (contentSize.x < contentSize.y * ratio) {
			size = { contentSize.x, contentSize.x / ratio };
			texPos = { 0, (contentSize.y - size.y) / 2 };
		}
		else {
			size = { contentSize.y * ratio,contentSize.y };
			texPos = { (contentSize.x - size.x) / 2, 0 };
		}
	}
	
	const ImVec2 pos = ImGui::GetCursorScreenPos() + texPos;

	{
		ImVec2 uvMin(1.0f / displayTex.width, 1.0f / displayTex.height), uvMax(1 - 1.0f / displayTex.width, 1 - 1.0f / displayTex.height);

		ImGuiExt::ImageRot90(&displayTex, size, rotation, uvMin, uvMax, {1,1,1,1}, {0,0,0,0}, pos, drawList);//ImVec2(!flipDims ? size.x : size.y, !flipDims ? size.y : size.x)
	}
	

	// draw Magnification
	if (showToolTip && ImGui::IsItemHovered() && ImGui::IsMouseDown(ImGuiMouseButton_Left)) {
		ImGui::BeginTooltip();
		ImGuiIO& io = ImGui::GetIO();
		ImVec2 region = { 32, 16 };
		ImVec2 regionAdj = region;
		if (flipDims) std::swap(regionAdj.x, regionAdj.y);
		ImVec2 texSize = { MCU::DISPLAY_WIDTH, MCU::DISPLAY_HEIGHT };
		ImVec2 texSizeAdj = texSize;
		if (flipDims) std::swap(texSizeAdj.x, texSizeAdj.y);
		const float zoom = 2;

		ImVec2 relPos;
		ImVec2 relPosAdj;
		ImVec2 relPosReg;
		{
			ImVec2 relMousePos = { io.MousePos.x - pos.x, io.MousePos.y - pos.y };
			relPos = {(relMousePos.x / size.x)*texSizeAdj.x , (relMousePos.y / size.y)*texSizeAdj.y};
			relPosAdj = relPos;
			if (flipDims) std::swap(relPosAdj.x, relPosAdj.y);
			if (rotation == 1 || rotation == 2) relPosAdj.y = MCU::DISPLAY_HEIGHT - relPosAdj.y;
			if (rotation == 2 || rotation == 3) relPosAdj.x = MCU::DISPLAY_WIDTH - relPosAdj.x;

			relPosReg = { relPosAdj.x - regionAdj.x / 2, relPosAdj.y - regionAdj.y / 2 };
		}
		

		relPosReg.x = MathUtils::clamp<float>(relPosReg.x, 0, texSize.x - regionAdj.x);
		relPosReg.y = MathUtils::clamp<float>(relPosReg.y, 0, texSize.y - regionAdj.y);

		uint8_t pixX = (uint8_t)(relPosAdj.x);
		uint8_t pixY = (uint8_t)(relPosAdj.y);
		
		

		//ImGui::Text("Pixel: x:%d, y:%d ", (int)pixX, (int)pixY);
		ImGui::Text("Pixel: x:%f, y:%f ", relPosAdj.x, relPosAdj.y);
		//ImGui::Text("x:%f, y:%f ", relPosReg.x, relPosReg.y);
		ImGui::SameLine();
		ImGuiExt::Rect(2074620378, getPixelOfImage(pixX, pixY) ? lightColor.toImGuiCol() : darkColor.toImGuiCol());

		ImVec2 texScl = {size.x / texSizeAdj.x, size.y / texSizeAdj.y};
		
		ImGuiExt::ImageRot90(&displayTex,
			{ region.x * texScl.x * zoom, region.y * texScl.y * zoom }, rotation,
			{(1+relPosReg.x)              /displayImg.width, (1+relPosReg.y)              /displayImg.height},
			{(1+relPosReg.x + regionAdj.x)/displayImg.width, (1+relPosReg.y + regionAdj.y)/displayImg.height}
		);

		ImVec2 crossHair;
		{
			ImVec2 imgCenter = ImRect( ImGui::GetItemRectMin(), ImGui::GetItemRectMax() ).GetCenter();
			ImVec2 crossOff = {relPosReg.x + regionAdj.x/2 - relPosAdj.x, relPosReg.y + regionAdj.y/2 - relPosAdj.y}; // offset from center of image
			if (flipDims) std::swap(crossOff.x, crossOff.y);
			if (rotation == 1 || rotation == 2) crossOff.x *= -1;
			if (rotation == 2 || rotation == 3) crossOff.y *= -1;
			crossHair = {imgCenter.x - (crossOff.x*texScl.x*zoom), imgCenter.y - (crossOff.y*texScl.y*zoom)};
		}

		const float crossLineLen = 20;
		const float crossLineThick = 2;

		ImDrawList* drawList = ImGui::GetWindowDrawList();

		if (drawBorders) {
			ImVec4 borderCol = (darkColor.toImGuiCol() + lightColor.toImGuiCol()) / 2;
			ImVec2 pos2 = ImGui::GetItemRectMin();
			{
				float xStart = std::ceil(relPosReg.x);
				float xTarget = relPosReg.x + regionAdj.x;
				float xFrac = std::fmodf(relPosReg.x, 1);
				for (size_t i = 0; xStart + i < xTarget; i++) {
					float drawX = pos2.x + (i+(1-xFrac))*texScl.x*zoom;
					drawList->AddLine(
						{drawX, pos2.y},
						{drawX, pos2.y+region.y*texScl.y*zoom},
						ImColor(borderCol), 1
					);
				}
			}

			{
				float yStart = std::ceil(relPosReg.y);
				float yTarget = relPosReg.y + regionAdj.y;
				float yFrac = std::fmodf(relPosReg.y, 1);
				for (size_t i = 0; yStart + i < yTarget; i++) {
					float drawY = pos2.y + (i+(1-yFrac))*texScl.y*zoom;
					drawList->AddLine(
						{pos2.x, drawY},
						{pos2.x+region.x*texScl.x*zoom, drawY},
						ImColor(borderCol), 1
					);
				}
			}
			
		}

		ImColor crossHairCol(.7f, .7f, .7f);

		drawList->AddLine(
			{crossHair.x - crossLineLen/2, crossHair.y},
			{crossHair.x + crossLineLen/2, crossHair.y},
			crossHairCol, crossLineThick
		);
		drawList->AddLine(
			{crossHair.x, crossHair.y - crossLineLen/2},
			{crossHair.x, crossHair.y + crossLineLen/2},
			crossHairCol, crossLineThick
		);

		ImGui::EndTooltip();
	}
}

void ABB::DisplayBackend::drawSetColorWin() {
	if (!setColorWinOpen) return;
	
	if (ImGui::Begin((name + ">Set Colors").c_str(), &setColorWinOpen)) {
		{
			ImVec4 col = darkColor.toImGuiCol();
			if (ImGui::ColorEdit3("Dark Color", (float*)&col, ImGuiColorEditFlags_NoInputs | ImGuiColorEditFlags_NoAlpha)) {
				darkColor = Color3::fromImGuiCol(col);
			}
		}

		{
			ImVec4 col = lightColor.toImGuiCol();
			if (ImGui::ColorEdit3("Light Color", (float*)&col, ImGuiColorEditFlags_NoInputs | ImGuiColorEditFlags_NoAlpha)) {
				lightColor = Color3::fromImGuiCol(col);
			}
		}
	}
	ImGui::End();
}
void ABB::DisplayBackend::openSetColorWin() {
	setColorWinOpen = true;
}


bool ABB::DisplayBackend::isWinFocused() const {
	return lastWinFocused == ImGui::GetCurrentContext()->FrameCount || lastWinFocused == ImGui::GetCurrentContext()->FrameCount-1;
}


void ABB::DisplayBackend::rotateCW() {
	rotation = (rotation + 1) % 4;
}

void ABB::DisplayBackend::rotateCCW() {
	rotation = (rotation + 4 - 1) % 4;
}
uint8_t ABB::DisplayBackend::getRotation() const {
	return rotation;
}

void ABB::DisplayBackend::setDarkColor(const Color3& color) {
	darkColor = color;
}
void ABB::DisplayBackend::setLightColor(const Color3& color) {
	lightColor = color;
}

size_t ABB::DisplayBackend::sizeBytes() const {
	size_t sum = 0;

	sum += DataUtils::approxSizeOf(name);
	sum += sizeof(mcu);

	sum += sizeof(displayTex);
	sum += sizeof(displayImg) + displayImg.width*displayImg.height*3;


	sum += sizeof(lastWinFocused);

	sum += sizeof(rotation);

	sum += sizeof(darkColor);
	sum += sizeof(lightColor);
	sum += sizeof(setColorWinOpen);

	return sum;
}