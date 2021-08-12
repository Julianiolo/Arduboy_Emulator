#include "mcuInfoBackend.h"
#include "utils/stringExtras.h"

#include <cmath>
#include <cctype>

#include "../Extensions/imguiExt.h"



ABB::McuInfoBackend::McuInfoBackend(Arduboy* ab, const char* winName, const utils::SymbolTable* symbolTable) : ab(ab), winName(winName) {
	dataspaceDataHex.setSymbolList(symbolTable->getSymbolsRam());
	flashHex.setSymbolList(symbolTable->getSymbolsRom());
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
				dataspaceDataHex.addHighlight(ab->mcu.dataspace.getSP(), {1,0,0,1});
				if (!dataSpaceSplitHexView) {
					dataspaceDataHex.draw(ab->mcu.dataspace.getData(), A32u4::DataSpace::Consts::data_size);
				}
				else {
					ImGui::TextUnformatted("General Pourpose Registers:");
					dataspaceDataHex.draw(ab->mcu.dataspace.getData(), A32u4::DataSpace::Consts::GPRs_size);
					ImGui::TextUnformatted("IO Registers:");
					dataspaceDataHex.sameFrame();
					dataspaceDataHex.draw(ab->mcu.dataspace.getData(), A32u4::DataSpace::Consts::total_io_size, A32u4::DataSpace::Consts::GPRs_size);
					ImGui::TextUnformatted("ISRAM:");
					dataspaceDataHex.sameFrame();
					dataspaceDataHex.draw(ab->mcu.dataspace.getData(), A32u4::DataSpace::Consts::ISRAM_size, A32u4::DataSpace::Consts::GPRs_size + A32u4::DataSpace::Consts::total_io_size);
				}
				
				ImGui::TreePop();
			}
			if (ImGui::TreeNode("EEPROM")) {
				dataspaceEEPROMHex.draw(ab->mcu.dataspace.getEEPROM(), A32u4::DataSpace::Consts::eeprom_size);
				ImGui::TreePop();
			}
			ImGui::TreePop();
		}

		if (ImGui::TreeNode("Flash")) {
			flashHex.draw(ab->mcu.flash.getData(), A32u4::Flash::size);
			ImGui::TreePop();
		}
	}
	ImGui::End();
}