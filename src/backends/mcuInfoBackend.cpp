#include "mcuInfoBackend.h"
#include "utils/StringUtils.h"

#include <cmath>
#include <cctype>

#include "../Extensions/imguiExt.h"



ABB::McuInfoBackend::McuInfoBackend(Arduboy* ab, const char* winName, const utils::SymbolTable* symbolTable) : ab(ab), winName(winName), 
	dataspaceDataHex(ab->mcu.dataspace.getData(), A32u4::DataSpace::Consts::data_size), 
	dataspaceEEPROMHex(ab->mcu.dataspace.getEEPROM(), A32u4::DataSpace::Consts::eeprom_size), 
	flashHex(ab->mcu.flash.getData(), A32u4::Flash::size)
{
	dataspaceDataHex.setSymbolList(symbolTable->getSymbolsRam());
	flashHex.setSymbolList(symbolTable->getSymbolsRom());
}

void ABB::McuInfoBackend::draw() {
	if (ImGui::Begin(winName.c_str(),&winOpen)) {
		if (ImGui::TreeNode("CPU")) {
			ImGui::Text("PC: 0x%04x => PC Addr: 0x%04x", ab->mcu.cpu.getPC(), ab->mcu.cpu.getPCAddr());
			ImGui::Text("Cycles: %i", ab->mcu.cpu.getTotalCycles());
			ImGui::Text("Is Sleeping: %i", ab->mcu.cpu.isSleeping());
			ImGui::TreePop();
		}

		if (ImGui::TreeNode("DataSpace")) {
			if (ImGui::TreeNode("Data")) {
				dataspaceDataHex.addHighlight(ab->mcu.dataspace.getSP(), {1,0,0,1});
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