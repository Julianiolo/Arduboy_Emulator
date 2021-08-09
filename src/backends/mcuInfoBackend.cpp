#include "mcuInfoBackend.h"
#include "utils/stringExtras.h"

#include <cmath>
#include <cctype>

#include "../Extensions/imguiExt.h"



ABB::McuInfoBackend::McuInfoBackend(Arduboy* ab, const char* winName) : ab(ab), winName(winName) {

}

void ABB::McuInfoBackend::draw() {
	if (ImGui::Begin(winName.c_str(),&winOpen)) {
		if (ImGui::TreeNode("CPU")) {
			ImGui::Text("PC: 0x%s => PC Addr: 0x%s", stringExtras::intToHex(ab->mcu.cpu.getPC(), 4).c_str(), stringExtras::intToHex(ab->mcu.cpu.getPCAddr(), 4).c_str());
			ImGui::Text("Cycles: %i", ab->mcu.cpu.getTotalCycles());
			ImGui::Text("Is Sleeping: %i", ab->mcu.cpu.isSleeping());
			ImGui::TreePop();
		}
		if (ImGui::TreeNode("DataSpace")) {
			if (ImGui::TreeNode("Data")) {
				if (!dataSpaceSplitHexView) {
					drawHexEditor(ab->mcu.dataspace.getData(), A32u4::DataSpace::Consts::data_size, true);
				}
				else {
					ImGui::TextUnformatted("General Pourpose Registers:");
					drawHexEditor(ab->mcu.dataspace.getData(), A32u4::DataSpace::Consts::GPRs_size, true);
					ImGui::TextUnformatted("IO Registers:");
					drawHexEditor(ab->mcu.dataspace.getData(), A32u4::DataSpace::Consts::total_io_size, true,A32u4::DataSpace::Consts::GPRs_size);
					ImGui::TextUnformatted("ISRAM:");
					drawHexEditor(ab->mcu.dataspace.getData(), A32u4::DataSpace::Consts::ISRAM_size, true,A32u4::DataSpace::Consts::GPRs_size + A32u4::DataSpace::Consts::total_io_size);
				}
				
				ImGui::TreePop();
			}
			if (ImGui::TreeNode("EEPROM")) {
				drawHexEditor(ab->mcu.dataspace.getEEPROM(), A32u4::DataSpace::Consts::eeprom_size, true);
				ImGui::TreePop();
			}
			ImGui::TreePop();
		}

		if (ImGui::TreeNode("Flash")) {
			drawHexEditor(ab->mcu.flash.getData(), A32u4::Flash::size, true);
			ImGui::TreePop();
		}
	}
	ImGui::End();
}

void ABB::McuInfoBackend::drawHexEditor(const uint8_t* data, size_t dataLen, bool showAscii, size_t dataOff) {
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
}