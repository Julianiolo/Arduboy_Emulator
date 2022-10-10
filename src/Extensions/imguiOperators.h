#ifndef __IMGUI_OPERATORS_H__
#define __IMGUI_OPERATORS_H__
#include "imgui.h"

static inline ImVec4 operator*(const ImVec4& lhs, float f)            { return ImVec4(lhs.x * f, lhs.y * f, lhs.z * f, lhs.w * f); }
static inline ImVec4 operator/(const ImVec4& lhs, float f)            { return ImVec4(lhs.x / f, lhs.y / f, lhs.z / f, lhs.w / f); }

#endif