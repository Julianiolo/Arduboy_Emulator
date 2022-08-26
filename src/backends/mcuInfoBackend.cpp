#include "mcuInfoBackend.h"
#include "utils/StringUtils.h"

#include <cmath>
#include <cctype>

#include "../Extensions/imguiExt.h"



ABB::McuInfoBackend::McuInfoBackend(Arduboy* ab, const char* winName, bool* open, const utils::SymbolTable* symbolTable) :
	ab(ab),
	dataspaceDataHex(ab->mcu.dataspace.getData(), A32u4::DataSpace::Consts::data_size, &ab->mcu), 
	dataspaceEEPROMHex(ab->mcu.dataspace.getEEPROM(), A32u4::DataSpace::Consts::eeprom_size),
	flashHex(ab->mcu.flash.getData(), A32u4::Flash::sizeMax),
	winName(winName), open(open)
{
	dataspaceDataHex.setSymbolList(symbolTable->getSymbolsRam());
	dataspaceDataHex.setEditCallback(setRamValue, this);

	dataspaceEEPROMHex.setEditCallback(setEepromValue, this);

	flashHex.setSymbolList(symbolTable->getSymbolsRom());
	flashHex.setEditCallback(setRomValue, this);
}

void ABB::McuInfoBackend::draw() {
	if (ImGui::Begin(winName.c_str(),open)) {
		winFocused = ImGui::IsWindowFocused();

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

		if (ImGui::TreeNode("Find Strings")) {
			ImGui::PushID("fstr");
			if (ImGui::TreeNode("Ram")) {
				if (ImGui::Button("Find!"))
					ramStrings = StringUtils::findStrings(ab->mcu.dataspace.getData(), A32u4::DataSpace::Consts::data_size);
				if (ImGui::BeginChild("Ram_strs", {0,200})) {
					for (size_t i = 0; i < ramStrings.size(); i++) {
						auto& entry = ramStrings[i];
						ImGui::Text("0x%04x: %s", (addrmcu_t)entry.first, entry.second.c_str());
					}
				}
				ImGui::EndChild();
				ImGui::TreePop();
			}
			if (ImGui::TreeNode("Eeprom")) {
				if (ImGui::Button("Find!"))
					eepromStrings = StringUtils::findStrings(ab->mcu.dataspace.getEEPROM(), A32u4::DataSpace::Consts::eeprom_size);
				if (ImGui::BeginChild("Eeprom_strs", {0,200})) {
					for (size_t i = 0; i < eepromStrings.size(); i++) {
						auto& entry = eepromStrings[i];
						ImGui::Text("0x%04x: %s", (addrmcu_t)entry.first, entry.second.c_str());
					}
				}
				ImGui::EndChild();
				ImGui::TreePop();
			}
			if (ImGui::TreeNode("Rom")) {
				if (ImGui::Button("Find!"))
					romStrings = StringUtils::findStrings(ab->mcu.flash.getData(), A32u4::Flash::sizeMax);
				if (ImGui::BeginChild("Rom_strs", {0,200})) {
					for (size_t i = 0; i < romStrings.size(); i++) {
						auto& entry = romStrings[i];
						ImGui::Text("0x%04x: %s", (addrmcu_t)entry.first, entry.second.c_str());
					}
				}
				ImGui::EndChild();
				ImGui::TreePop();
			}
			ImGui::PopID();
			ImGui::TreePop();
		}
	}
	else {
		winFocused = false;
	}
	ImGui::End();
}

const char* ABB::McuInfoBackend::getWinName() const {
	return winName.c_str();
}

bool ABB::McuInfoBackend::isWinFocused() const {
	return winFocused;
}

void ABB::McuInfoBackend::setRamValue(addrmcu_t addr, reg_t val, void* userData) {
	McuInfoBackend* info = (McuInfoBackend*)userData;
	info->ab->mcu.dataspace.setDataByte(addr, val);
}
void ABB::McuInfoBackend::setEepromValue(addrmcu_t addr, reg_t val, void* userData) {
	McuInfoBackend* info = (McuInfoBackend*)userData;
	info->ab->mcu.dataspace.getEEPROM()[addr] = val;
}
void ABB::McuInfoBackend::setRomValue(addrmcu_t addr, reg_t val, void* userData) {
	McuInfoBackend* info = (McuInfoBackend*)userData;
	// TODO: edit data
}