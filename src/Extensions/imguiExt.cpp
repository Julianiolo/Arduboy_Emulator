#include "imguiExt.h"
#include "imgui.h"
#include "imgui_internal.h"
#include "imguiOperators.h"


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

ImRect ImGuiExt::GetScrollBarHandleRect(ImGuiWindow* window, ImGuiAxis axis){
    ImRect bb_frame = ImGui::GetWindowScrollbarRect(window,axis);
    float size_avail_v = window->InnerRect.Max[axis] - window->InnerRect.Min[axis];
    float size_contents_v = window->ContentSize[axis] + window->WindowPadding[axis] * 2.0f;
    const ImGuiStyle& style = ImGui::GetStyle();
    float* p_scroll_v = &window->Scroll[axis];

    const float bb_frame_width = bb_frame.GetWidth();
    const float bb_frame_height = bb_frame.GetHeight();
    if (bb_frame_width <= 0.0f || bb_frame_height <= 0.0f)
        return ImRect{{0,0},{0,0}};

    ImRect bb = bb_frame;
    bb.Expand(ImVec2(-ImClamp(IM_FLOOR((bb_frame_width - 2.0f) * 0.5f), 0.0f, 3.0f), -ImClamp(IM_FLOOR((bb_frame_height - 2.0f) * 0.5f), 0.0f, 3.0f)));
    
    // V denote the main, longer axis of the scrollbar (= height for a vertical scrollbar)
    const float scrollbar_size_v = (axis == ImGuiAxis_X) ? bb.GetWidth() : bb.GetHeight();

    // Calculate the height of our grabbable box. It generally represent the amount visible (vs the total scrollable amount)
    // But we maintain a minimum size in pixel to allow for the user to still aim inside.
    const float win_size_v = ImMax(ImMax(size_contents_v, size_avail_v), 1.0f);
    const float grab_h_pixels = ImClamp(scrollbar_size_v * (size_avail_v / win_size_v), style.GrabMinSize, scrollbar_size_v);
    
    float scroll_max = ImMax(1.0f, size_contents_v - size_avail_v);
    float scroll_ratio = ImSaturate(*p_scroll_v / scroll_max);
    float grab_v_norm = scroll_ratio * (scrollbar_size_v - grab_h_pixels) / scrollbar_size_v; // Grab position in normalized space

    ImRect grab_rect;
    if (axis == ImGuiAxis_X)
        grab_rect = ImRect(ImLerp(bb.Min.x, bb.Max.x, grab_v_norm), bb.Min.y, ImLerp(bb.Min.x, bb.Max.x, grab_v_norm) + grab_h_pixels, bb.Max.y);
    else
        grab_rect = ImRect(bb.Min.x, ImLerp(bb.Min.y, bb.Max.y, grab_v_norm), bb.Max.x, ImLerp(bb.Min.y, bb.Max.y, grab_v_norm) + grab_h_pixels);
    return grab_rect;
}

void ImGuiExt::AddLineToScrollBar(ImGuiWindow* window, ImGuiAxis axis, float pos_norm, const ImVec4& col, float thick, ImRect scrollRect) {
    if(scrollRect.Min.x == -1)
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

void ImGuiExt::AddRectToScrollBar(ImGuiWindow* window,  ImGuiAxis axis, const ImRect& pos_norm, const ImVec4& col, ImRect scrollRect) {
    if(scrollRect.Min.x == -1)
        scrollRect = ImGui::GetWindowScrollbarRect(window, axis);
    ImDrawList* drawList = window->DrawList;
    
    ImVec2 min = scrollRect.Min + (scrollRect.GetSize() * pos_norm.Min);
    ImVec2 max = min + (scrollRect.GetSize() * pos_norm.GetSize());
    drawList->AddRectFilled(min, max, ImColor(col));
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

void ImGuiExt::ImageRect(const Texture2D& tex, float destWidth, float destHeight, const Rectangle& srcRect) { // basically just copy-paste from rlImgui but with floats for dest dimensions
    ImVec2 uv0;
    ImVec2 uv1;

    if (srcRect.width < 0) {
        uv0.x = -((float)srcRect.x / tex.width);
        uv1.x = (uv0.x - (float)(fabs(srcRect.width) / tex.width));
    }
    else {
        uv0.x = (float)srcRect.x / tex.width;
        uv1.x = uv0.x + (float)(srcRect.width / tex.width);
    }

    if (srcRect.height < 0) {
        uv0.y = -((float)srcRect.y / tex.height);
        uv1.y = (uv0.y - (float)(fabs(srcRect.height) / tex.height));
    }
    else {
        uv0.y = (float)srcRect.y / tex.height;
        uv1.y = uv0.y + (float)(srcRect.height / tex.height);
    }

    ImGui::Image((ImTextureID*)&tex, ImVec2(float(destWidth), float(destHeight)),uv0,uv1);
}

void ImGuiExt::Rect(const char* desc_id, const ImVec4& col, ImVec2 size) {
    ImGuiWindow* window = ImGui::GetCurrentWindow();
    if (window->SkipItems)
        return;
    Rect(window->GetID(desc_id), col, size);
}

void ImGuiExt::Rect(ImGuiID id, const ImVec4& col, ImVec2 size) {
    ImGuiWindow* window = ImGui::GetCurrentWindow();
    if (window->SkipItems)
        return;

    ImGuiContext& g = *GImGui;
    float default_size = ImGui::GetFrameHeight();
    if (size.x == 0.0f)
        size.x = default_size;
    if (size.y == 0.0f)
        size.y = default_size;
    const ImRect bb(window->DC.CursorPos, ImVec2{ window->DC.CursorPos.x + size.x, window->DC.CursorPos.y + size.y });
    ImGui::ItemSize(bb, (size.y >= default_size) ? g.Style.FramePadding.y : 0.0f);
    if (!ImGui::ItemAdd(bb, id))
        return;

    ImGuiStyle& style = ImGui::GetStyle();
    ImGui::RenderNavHighlight(bb, id);
    ImGui::RenderFrame(bb.Min, bb.Max, ImColor(col), true, style.FrameRounding);
}



static int TextCallBack(ImGuiInputTextCallbackData* data) {
    std::string* str = (std::string*)data->UserData;

    if (data->EventFlag == ImGuiInputTextFlags_CallbackResize) {
        str->resize(data->BufTextLen+1);
        data->Buf = (char*)str->c_str();
    }
    return 0;
}
bool ImGuiExt::InputTextString(const char* label, const char* hint, std::string* str, ImGuiInputTextFlags flags, const ImVec2& size) {
    return ImGui::InputTextEx(
        label, hint, (char*)str->c_str(), str->capacity(), 
        size, flags | ImGuiInputTextFlags_CallbackResize, TextCallBack, str
    );
}