#include "mcuInfoBackend.h"
#include "StringUtils.h"

#include <cmath>
#include <cctype>
#include <fstream>

#include "../Extensions/imguiExt.h"
#include "ImGuiFD.h"

#include "LogBackend.h"

ABB::McuInfoBackend::SaveLoadFDIPair::SaveLoadFDIPair(const char* bothName):
	save((std::string("Save ") + bothName).c_str()), load((std::string("Load ") + bothName).c_str())
{

}

ABB::McuInfoBackend::McuInfoBackend(Arduboy* ab, const char* winName, bool* open) :
	ab(ab),
	dataspaceDataHex(ab->mcu.dataspace.getData(), A32u4::DataSpace::Consts::data_size, &ab->mcu, utils::HexViewer::DataType_Ram), 
	dataspaceEEPROMHex(ab->mcu.dataspace.getEEPROM(), A32u4::DataSpace::Consts::eeprom_size, nullptr, utils::HexViewer::DataType_Eeprom),
	flashHex(ab->mcu.flash.getData(), A32u4::Flash::sizeMax, &ab->mcu, utils::HexViewer::DataType_Rom),
	fdiRam((std::string("Ram - ")+winName).c_str()), fdiEeprom((std::string("Eeprom - ")+winName).c_str()), fdiRom((std::string("Rom - ")+winName).c_str()),
	winName(winName), open(open)
{
	dataspaceDataHex.setSymbolList(ab->mcu.symbolTable.getSymbolsRam());
	dataspaceDataHex.setEditCallback(setRamValue, this);

	dataspaceEEPROMHex.setEditCallback(setEepromValue, this);

	flashHex.setSymbolList(ab->mcu.symbolTable.getSymbolsRom());
	flashHex.setEditCallback(setRomValue, this);
}

void ABB::McuInfoBackend::drawSaveLoadButtons(SaveLoadFDIPair* fdi) {
	if(ImGui::Button("Save")){
		fdi->save.OpenFileDialog(".");
	}
	ImGui::SameLine();
	if(ImGui::Button("Load")) {
		fdi->load.OpenFileDialog(".");
	}
}

void ABB::McuInfoBackend::drawDialog(ImGuiFD::FDInstance* fdi, std::function<void(const char* path)> callB){
	if(fdi->Begin()) {
		if (ImGuiFD::ActionDone()) {
			if(ImGuiFD::SelectionMade()) {
				std::string path = ImGuiFD::GetSelectionPathString(0);
				std::string name = ImGuiFD::GetSelectionNameString(0);

				callB(path.c_str());
			}
			ImGuiFD::CloseCurrentDialog();
		}
		fdi->End();
	}
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
				drawSaveLoadButtons(&fdiRam);

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
				drawSaveLoadButtons(&fdiEeprom);
				dataspaceEEPROMHex.draw();
				ImGui::TreePop();
			}
			ImGui::TreePop();
		}

		if (ImGui::TreeNode("Flash")) {
			drawSaveLoadButtons(&fdiRom);
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

	drawDialog(&fdiRam.save, [&](const char* path){
		std::ofstream file(path, std::ios::binary);
		if(!file.is_open()) {
			LogBackend::logf(LogBackend::LogLevel_Error, "Could not open file \"%s\"", path);
			return;
		}

		ab->mcu.dataspace.getRamState(file);
		file.close();
		//StringUtils::writeBytesToFile(ab->mcu.dataspace.getData(), A32u4::DataSpace::Consts::data_size, path);
	});
	drawDialog(&fdiRam.load, [&](const char* path){
		std::ifstream file(path, std::ios::binary);
		if(!file.is_open()) {
			LogBackend::logf(LogBackend::LogLevel_Error, "Could not open file \"%s\"", path);
			return;
		}

		ab->mcu.dataspace.setRamState(file);
		file.close();
	});

	drawDialog(&fdiEeprom.save, [&](const char* path){
		std::ofstream file(path, std::ios::binary);
		if(!file.is_open()) {
			LogBackend::logf(LogBackend::LogLevel_Error, "Could not open file \"%s\"", path);
			return;
		}

		ab->mcu.dataspace.getEepromState(file);
		file.close();
		//StringUtils::writeBytesToFile(ab->mcu.dataspace.getEEPROM(), A32u4::DataSpace::Consts::eeprom_size, path);
	});
	drawDialog(&fdiEeprom.load, [&](const char* path){
		std::ifstream file(path, std::ios::binary);
		if(!file.is_open()) {
			LogBackend::logf(LogBackend::LogLevel_Error, "Could not open file \"%s\"", path);
			return;
		}

		ab->mcu.dataspace.setEepromState(file);
		file.close();
	});

	drawDialog(&fdiRom.save, [&](const char* path){
		std::ofstream file(path, std::ios::binary);
		if(!file.is_open()) {
			LogBackend::logf(LogBackend::LogLevel_Error, "Could not open file \"%s\"", path);
			return;
		}

		ab->mcu.flash.getRomState(file);
		file.close();
		//StringUtils::writeBytesToFile(ab->mcu.flash.getData(), A32u4::Flash::sizeMax, path);
	});
	drawDialog(&fdiRom.load, [&](const char* path){
		std::ifstream file(path, std::ios::binary);
		if(!file.is_open()) {
			LogBackend::logf(LogBackend::LogLevel_Error, "Could not open file \"%s\"", path);
			return;
		}

		ab->mcu.flash.setRomState(file);
		file.close();
	});
}

const char* ABB::McuInfoBackend::getWinName() const {
	return winName.c_str();
}

bool ABB::McuInfoBackend::isWinFocused() const {
	return winFocused;
}

void ABB::McuInfoBackend::setRamValue(size_t addr, uint8_t val, void* userData) {
	McuInfoBackend* info = (McuInfoBackend*)userData;
	info->ab->mcu.dataspace.setDataByte(addr, val);
}
void ABB::McuInfoBackend::setEepromValue(size_t addr, uint8_t val, void* userData) {
	McuInfoBackend* info = (McuInfoBackend*)userData;
	info->ab->mcu.dataspace.getEEPROM()[addr] = val;
}
void ABB::McuInfoBackend::setRomValue(size_t addr, uint8_t val, void* userData) {
	McuInfoBackend* info = (McuInfoBackend*)userData;
	info->ab->mcu.flash.setByte(addr, val);
}