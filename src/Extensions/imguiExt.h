#ifndef _IMGUI_EXT
#define _IMGUI_EXT

#include "imgui.h"
#define IMGUI_DEFINE_MATH_OPERATORS 1
#include "imgui_internal.h"
#include "raylib.h"
#include <string>
#include <vector>

namespace ImGuiExt {
	void TextColored(const ImVec4& col, const char* text_start, const char* text_end = NULL);
	void PushTextColor(const ImVec4& col);
	void PopTextColor();

	ImVec2 GetContentSize();
	void SetScrollNormX(float scrollAmt_norm, float centerRatio = 0.5f);
	void SetScrollNormY(float scrollAmt_norm, float centerRatio = 0.5f);
	float GetScrollBarHandleLen(ImGuiWindow* window, ImGuiAxis axis);
	ImRect GetScrollBarHandleRect(ImGuiWindow* window, ImGuiAxis axis);
	void AddLineToScrollBar(ImGuiWindow* window, ImGuiAxis axis, float pos_norm, const ImVec4& col, float thick = 1, ImRect scrollRect = {-1,-1,-1,-1});
	void AddRectToScrollBar(ImGuiWindow* window, ImGuiAxis axis, const ImRect& pos_norm, const ImVec4& col, ImRect scrollRect = {-1,-1,-1,-1});
	ImGuiLastItemData& GetItem();

	bool SelectSwitch(const char** labels, size_t num, size_t* selected, const ImVec2& size = { 200,0 });
	void ImageRect(const Texture2D& tex, float destWidth, float destHeight, const Rectangle& srcRect);

	void Rect(const char* desc_id, const ImVec4& col, ImVec2 size = {0,0});
	void Rect(ImGuiID id, const ImVec4& col, ImVec2 size = {0,0});

	bool InputTextString(const char* label, const char* hint, std::string* str, ImGuiInputTextFlags flags = 0, const ImVec2& size = { 0,0 });

	void Image(ImTextureID user_texture_id, const ImVec2& size, const ImVec2& uv0, const ImVec2& uv1, const ImVec2& uv2, const ImVec2& uv3, const ImVec4& tint_col = {1,1,1,1}, const ImVec4& border_col={0,0,0,0}, const ImVec2& pos={-INFINITY,-INFINITY}, ImDrawList* drawList = NULL);
	void ImageRot90(ImTextureID user_texture_id, const ImVec2& size, uint8_t rotation, const ImVec2& uvMin = {0,0}, const ImVec2& uvMax = {1,1}, const ImVec4& tint_col = {1,1,1,1}, const ImVec4& border_col = {0,0,0,0}, const ImVec2& pos={-INFINITY,-INFINITY}, ImDrawList* drawList = NULL);

	ImVec4 BrightenColor(const ImVec4& col, float f);
}

#endif