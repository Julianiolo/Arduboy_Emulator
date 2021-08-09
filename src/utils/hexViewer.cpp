#include "hexViewer.h"

#include "imgui.h"
#include "imgui_internal.h"
#include "../Extensions/imguiExt.h"
#include <cmath>
#include "utils/stringExtras.h"

ABB::utils::HexViewer::SyntaxColors ABB::utils::HexViewer::syntaxColors = { {1,1,0,1}, {0.4,0.4,0.6,1}, {0.5,0.6,0.5,1} };

void ABB::utils::HexViewer::draw(const uint8_t* data, size_t dataLen, size_t dataOff, bool showAscii) {
	constexpr size_t AddrDigits = 4;

	const ImVec2 sizeAvail = ImGui::GetContentRegionAvail();
	const float charWidth = ImGui::CalcTextSize(" ").x;

	const int32_t numCharsFit = sizeAvail.x / charWidth;
	const int32_t addrCharWidth = AddrDigits + 1;
	int32_t bytesPerRow;
	if (!showAscii) {
		bytesPerRow = (numCharsFit - addrCharWidth) / 3;
	}
	else {
		bytesPerRow = (numCharsFit - addrCharWidth - 2) / 4;
	}
	if (bytesPerRow <= 0)
		bytesPerRow = 1;

	const float rows = (float)dataLen / (float)bytesPerRow;
	const size_t numOfRows = (size_t)std::ceil(rows);

	const ImVec4 defTexCol = ImGui::GetStyleColorVec4(ImGuiCol_Text);
	ImGui::PushStyleVar(ImGuiStyleVar_ItemSpacing, ImVec2(0, 0));
	ImGuiListClipper clipper;
	clipper.Begin(numOfRows);
	while (clipper.Step()) {
		for (int line_no = clipper.DisplayStart; line_no < clipper.DisplayEnd; line_no++) {
			size_t lineAddr = line_no * bytesPerRow + dataOff;
			ImGuiExt::TextColored(syntaxColors.Addr,stringExtras::intToHex(lineAddr, AddrDigits).c_str());
			ImGui::SameLine();
			ImGui::TextUnformatted(":");

			size_t numOfItemsInRow = bytesPerRow;
			bool fillUp = false;
			if (line_no == numOfRows - 1) { // if is last line
				numOfItemsInRow = dataLen % bytesPerRow;
				if (numOfItemsInRow == 0)
					numOfItemsInRow = bytesPerRow;
				else
					fillUp = true;
			}

			ImGuiExt::PushTextColor(syntaxColors.bytes);
			for (size_t i = 0; i < numOfItemsInRow; i++) {
				std::string byteStr = stringExtras::intToHex(*(data + (lineAddr + i)), 2);
				ImGui::SameLine();
				ImGui::TextUnformatted((" " + byteStr).c_str());
				if (ImGui::IsItemHovered()) {
					ImGui::BeginTooltip();
					ImGui::TextColored(syntaxColors.Addr, stringExtras::intToHex(lineAddr + i,AddrDigits).c_str());
					ImGui::SameLine();
					ImGui::TextColored(defTexCol,": ");
					ImGui::SameLine();
					ImGui::TextColored(syntaxColors.bytes,byteStr.c_str());
					ImGui::EndTooltip();
				}
			}
			ImGuiExt::PopTextColor();

			if (fillUp) {
				ImGui::SameLine();
				ImGui::TextUnformatted(std::string(3*(bytesPerRow-numOfItemsInRow),' ').c_str());
			}

			ImGuiExt::PushTextColor(syntaxColors.ascii);
			if (showAscii) {
				ImGui::SameLine();
				ImGui::TextUnformatted("  ");
				for (size_t i = 0; i < numOfItemsInRow; i++) {
					char c = *(data + (lineAddr + i));
					if (!isprint((unsigned char)c))
						c = '.';
					ImGui::SameLine();
					ImGui::TextUnformatted(&c,&c+1);
				}
			}
			ImGuiExt::PopTextColor();
		}
	}
	clipper.End();
	ImGui::PopStyleVar();

	// add missing item spacing
	float itemSpacingAmtV = ImGui::GetStyle().ItemSpacing.y;
	ImVec2 cursorPos = ImGui::GetCursorPos();
	ImGui::SetCursorPos({ cursorPos.x, cursorPos.y + itemSpacingAmtV });
}