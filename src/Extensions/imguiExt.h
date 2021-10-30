#ifndef _IMGUI_EXT
#define _IMGUI_EXT

#include "imgui.h"
#include "imgui_internal.h"
#include "raylib.h"

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

	size_t SelectSwitch(const char** labels, size_t num, size_t selected, const ImVec2& size = { 200,0 });
	void ImageRect(const Texture2D& tex, float destWidth, float destHeight, const Rectangle& srcRect);

	void Rect(const char* desc_id, const ImVec4& col, ImVec2 size = {0,0});
	void Rect(ImGuiID id, const ImVec4& col, ImVec2 size = {0,0});
}

#endif