#ifndef _IMGUI_EXT
#define _IMGUI_EXT

#include "imgui.h"
#include "imgui_internal.h"

namespace ImGuiExt {
	void TextColored(const ImVec4& col, const char* text_start, const char* text_end = NULL);
	void PushTextColor(const ImVec4& col);
	void PopTextColor();

	ImVec2 GetContentSize();
	void SetScrollNormX(float scrollAmt_norm, float centerRatio = 0.5f);
	void SetScrollNormY(float scrollAmt_norm, float centerRatio = 0.5f);
	float GetScrollBarHandleLen(ImGuiWindow* window, ImGuiAxis axis);
	void AddLineToScrollBar(ImGuiWindow* window, ImGuiAxis axis, float pos_norm, const ImVec4& col, float thick = 1, ImRect scrollRect = {-1,-1,-1,-1});
}

#endif