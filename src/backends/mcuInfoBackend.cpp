#include "mcuInfoBackend.h"
#include "utils/StringUtils.h"

#include <cmath>
#include <cctype>

#include "../Extensions/imguiExt.h"



ABB::McuInfoBackend::McuInfoBackend(Arduboy* ab, const char* winName, const utils::SymbolTable* symbolTable) : ab(ab), winName(winName), 
	dataspaceDataHex(ab->mcu.dataspace.getData(), A32u4::DataSpace::Consts::data_size, &ab->mcu), 
	dataspaceEEPROMHex(ab->mcu.dataspace.getEEPROM(), A32u4::DataSpace::Consts::eeprom_size), 
	flashHex(ab->mcu.flash.getData(), A32u4::Flash::sizeMax)
{
	dataspaceDataHex.setSymbolList(symbolTable->getSymbolsRam());
	flashHex.setSymbolList(symbolTable->getSymbolsRom());
}

void ABB::McuInfoBackend::draw() {
	if (ImGui::Begin(winName.c_str(),&winOpen)) {
		if (ImGui::TreeNode("CPU")) {
			ImGui::Text("PC: 0x%04x => PC Addr: 0x%04x", ab->mcu.cpu.getPC(), ab->mcu.cpu.getPCAddr());
			ImGui::Text("Cycles: %s", std::to_string(ab->mcu.cpu.getTotalCycles()).c_str());
			ImGui::Text("Is Sleeping: %d", ab->mcu.cpu.isSleeping());
			ImGui::TreePop();
		}

		if (ImGui::TreeNode("DataSpace")) {
			if (ImGui::TreeNode("Data")) {
				if (!dataSpaceSplitHexView) {
					dataspaceDataHex.draw();
				}
				else {
					ImGui::TextUnformatted("General Pourpose Registers:");
					dataspaceDataHex.draw(A32u4::DataSpace::Consts::GPRs_size);
					ImGui::TextUnformatted("IO Registers:");
					dataspaceDataHex.sameFrame();
					dataspaceDataHex.draw(A32u4::DataSpace::Consts::total_io_size, A32u4::DataSpace::Consts::GPRs_size);
					ImGui::TextUnformatted("ISRAM:");
					dataspaceDataHex.sameFrame();
					dataspaceDataHex.draw(A32u4::DataSpace::Consts::ISRAM_size, A32u4::DataSpace::Consts::GPRs_size + A32u4::DataSpace::Consts::total_io_size);
				}
				
				ImGui::TreePop();
			}
			if (ImGui::TreeNode("EEPROM")) {
				dataspaceEEPROMHex.draw();
				ImGui::TreePop();
			}
			ImGui::TreePop();
		}

		if (ImGui::TreeNode("Flash")) {
			flashHex.draw();
			ImGui::TreePop();
		}
	}
	ImGui::End();
}