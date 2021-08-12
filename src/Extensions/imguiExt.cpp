#include "imguiExt.h"
#include "imgui.h"
#include "imgui_internal.h"



void ImGuiExt::TextColored(const ImVec4& col, const char* text_start, const char* text_end) {
    ImGui::PushStyleColor(ImGuiCol_Text, col);
    ImGui::TextEx(text_start, text_end, ImGuiTextFlags_NoWidthForLargeClippedText); // Skip formatting
    ImGui::PopStyleColor();
}

void ImGuiExt::PushTextColor(const ImVec4& col) {
    ImGui::PushStyleColor(ImGuiCol_Text, col);
}

void ImGuiExt::PopTextColor() {
    ImGui::PopStyleColor();
}

ImVec2 ImGuiExt::GetContentSize() {
    ImGuiWindow* window = ImGui::GetCurrentWindow();
    return { window->ContentSize.x + window->WindowPadding.x * 2.0f, window->ContentSize.y + window->WindowPadding.y * 2.0f };
}

void ImGuiExt::SetScrollNormX(float scrollAmt_norm, float centerRatio) {
    float contentWidth = ImGuiExt::GetContentSize().x;
    ImGuiWindow* window = ImGui::GetCurrentWindow();
    window->ScrollTarget.y = contentWidth * scrollAmt_norm;
    window->ScrollTargetCenterRatio.y = centerRatio;
    window->ScrollTargetEdgeSnapDist.y = 0.0f;
}
void ImGuiExt::SetScrollNormY(float scrollAmt_norm, float centerRatio) {
    float contentHeight = ImGuiExt::GetContentSize().y;
    ImGuiWindow* window = ImGui::GetCurrentWindow();
    window->ScrollTarget.y = contentHeight * scrollAmt_norm;
    window->ScrollTargetCenterRatio.y = centerRatio;
    window->ScrollTargetEdgeSnapDist.y = 0.0f;
}

float ImGuiExt::GetScrollBarHandleLen(ImGuiWindow* window, ImGuiAxis axis) {
    ImGuiContext& g = *GImGui;
    const ImGuiStyle& style = g.Style;

    float size_avail = window->InnerRect.Max[axis] - window->InnerRect.Min[axis];
    float size_contents = window->ContentSize[axis] + window->WindowPadding[axis] * 2.0f;
    const float win_size = ImMax(ImMax(size_contents, size_avail), 1.0f);

    ImRect scrollBarRect = ImGui::GetWindowScrollbarRect(window, axis);
    float scrollBarWidth = axis == ImGuiAxis_X ? scrollBarRect.GetWidth() : scrollBarRect.GetHeight(); 

    return ImClamp(scrollBarWidth * (size_avail / win_size), style.GrabMinSize, scrollBarWidth);
}

void ImGuiExt::AddLineToScrollBar(ImGuiWindow* window, ImGuiAxis axis, float pos_norm, const ImVec4& col, float thick, ImRect scrollRect) {
    if(scrollRect.Min.x = -1)
        scrollRect = ImGui::GetWindowScrollbarRect(window, axis);
    ImDrawList* drawList = window->DrawList;
    
    if (axis == ImGuiAxis_X) {
        float x = scrollRect.Min.x + (pos_norm * scrollRect.GetSize().x);
        drawList->AddLine(
            {x, scrollRect.Min.y},
            {x, scrollRect.Max.y},
            ImColor(col), thick
        );
    }
    else {
        float y = scrollRect.Min.y + (pos_norm * scrollRect.GetSize().y);
        drawList->AddLine(
            {scrollRect.Min.x, y},
            {scrollRect.Max.x, y},
            ImColor(col), thick
        );
    }
}

ImGuiLastItemData& ImGuiExt::GetItem() {
    ImGuiContext& g = *GImGui;
    return g.LastItemData;
}

size_t ImGuiExt::SelectSwitch(const char** labels, size_t num, size_t selected, const ImVec2& size) {
    ImGui::PushStyleVar(ImGuiStyleVar_SelectableTextAlign, { 0.5,0.5 });
    for(size_t cnt = 0; cnt < num; cnt++){
        if (cnt) {
            ImGui::SameLine();
        }
            
        if (ImGui::Selectable(labels[cnt], selected == cnt, ImGuiSelectableFlags_DontClosePopups, {size.x / num, size.y}))
            selected = cnt;
    }
    ImGui::PopStyleVar();
    return selected;
}