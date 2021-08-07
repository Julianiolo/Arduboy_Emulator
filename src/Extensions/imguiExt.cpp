#include "imguiExt.h"
#include "imgui.h"
#include "imgui_internal.h"

void ImGuiExt::SetScrollWithCenterRatioX(float scrollAmt, float centerRatio) {
    ImGuiContext& g = *GImGui;
    auto window = g.CurrentWindow;
    window->ScrollTarget.x = scrollAmt;
    window->ScrollTargetCenterRatio.x = centerRatio;
    window->ScrollTargetEdgeSnapDist.x = 0.0f;
}

void ImGuiExt::SetScrollWithCenterRatioY(float scrollAmt, float centerRatio) {
    ImGuiContext& g = *GImGui;
    auto window = g.CurrentWindow;
    window->ScrollTarget.y = scrollAmt;
    window->ScrollTargetCenterRatio.y = centerRatio;
    window->ScrollTargetEdgeSnapDist.y = 0.0f;
}