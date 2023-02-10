#ifdef _MSC_VER
#define _CRT_SECURE_NO_WARNINGS 1
#endif

#include "mcuInfoBackend.h"
#include "StringUtils.h"

#include <cmath>
#include <cctype>
#include <fstream>

#include "../Extensions/imguiExt.h"
#include "ImGuiFD.h"

#include "LogBackend.h"

#define MCU_MODULE "McuInfoBackend"

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
	fdiState((std::string("State - ")+winName).c_str()),
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
		fdi->save.OpenDialog(ImGuiFDMode_SaveFile, ".");
	}
	ImGui::SameLine();
	if(ImGui::Button("Load")) {
		fdi->load.OpenDialog(ImGuiFDMode_LoadFile, ".");
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
	
		drawStates();
	}
	else {
		winFocused = false;
	}
	ImGui::End();

	fdiRam.save.DrawDialog([](void* userData){
		const char* path = ImGuiFD::GetSelectionPathString(0);
		std::ofstream file(path, std::ios::binary);
		if(!file.is_open()) {
			MCU_LOGF_(LogBackend::LogLevel_Error, "Could not open file \"%s\"", path);
			return;
		}

		((Arduboy*)userData)->mcu.dataspace.getRamState(file);
		//StringUtils::writeBytesToFile(ab->mcu.dataspace.getData(), A32u4::DataSpace::Consts::data_size, path);
	}, ab);
	fdiRam.load.DrawDialog([](void* userData){
		const char* path = ImGuiFD::GetSelectionPathString(0);
		std::ifstream file(path, std::ios::binary);
		if(!file.is_open()) {
			MCU_LOGF_(LogBackend::LogLevel_Error, "Could not open file \"%s\"", path);
			return;
		}

		((Arduboy*)userData)->mcu.dataspace.setRamState(file);
	},ab);

	fdiEeprom.save.DrawDialog([](void* userData){
		const char* path = ImGuiFD::GetSelectionPathString(0);
		std::ofstream file(path, std::ios::binary);
		if(!file.is_open()) {
			MCU_LOGF_(LogBackend::LogLevel_Error, "Could not open file \"%s\"", path);
			return;
		}

		((Arduboy*)userData)->mcu.dataspace.getEepromState(file);
		//StringUtils::writeBytesToFile(ab->mcu.dataspace.getEEPROM(), A32u4::DataSpace::Consts::eeprom_size, path);
	});
	fdiEeprom.load.DrawDialog([](void* userData){
		const char* path = ImGuiFD::GetSelectionPathString(0);
		std::ifstream file(path, std::ios::binary);
		if(!file.is_open()) {
			MCU_LOGF_(LogBackend::LogLevel_Error, "Could not open file \"%s\"", path);
			return;
		}

		((Arduboy*)userData)->mcu.dataspace.setEepromState(file);
	},ab);

	fdiRom.save.DrawDialog([](void* userData){
		const char* path = ImGuiFD::GetSelectionPathString(0);
		std::ofstream file(path, std::ios::binary);
		if(!file.is_open()) {
			MCU_LOGF_(LogBackend::LogLevel_Error, "Could not open file \"%s\"", path);
			return;
		}

		((Arduboy*)userData)->mcu.flash.getRomState(file);
		//StringUtils::writeBytesToFile(ab->mcu.flash.getData(), A32u4::Flash::sizeMax, path);
	},ab);
	fdiRom.load.DrawDialog([](void* userData){
		const char* path = ImGuiFD::GetSelectionPathString(0);
		std::ifstream file(path, std::ios::binary);
		if(!file.is_open()) {
			MCU_LOGF_(LogBackend::LogLevel_Error, "Could not open file \"%s\"", path);
			return;
		}

		((Arduboy*)userData)->mcu.flash.setRomState(file);
	},ab);
}

const char* ABB::McuInfoBackend::getWinName() const {
	return winName.c_str();
}

bool ABB::McuInfoBackend::isWinFocused() const {
	return winFocused;
}

void ABB::McuInfoBackend::setRamValue(size_t addr, uint8_t val, void* userData) {
	McuInfoBackend* info = (McuInfoBackend*)userData;
	info->ab->mcu.dataspace.setDataByte((addrmcu_t)addr, val);
}
void ABB::McuInfoBackend::setEepromValue(size_t addr, uint8_t val, void* userData) {
	McuInfoBackend* info = (McuInfoBackend*)userData;
	info->ab->mcu.dataspace.getEEPROM()[addr] = val;
}
void ABB::McuInfoBackend::setRomValue(size_t addr, uint8_t val, void* userData) {
	McuInfoBackend* info = (McuInfoBackend*)userData;
	info->ab->mcu.flash.setByte((addrmcu_t)addr, val);
}

void ABB::McuInfoBackend::drawStates() {
	if (ImGui::TreeNode("States")) {
		if(ImGui::Button("+")){
			fdiState.load.OpenDialog(ImGuiFDMode_LoadFile, ".");
		}

		constexpr ImGuiTableFlags flags = ImGuiTableFlags_Borders | ImGuiTableFlags_RowBg;
		if(states.size() > 0) {
			if(ImGui::BeginTable("StatesTable", 2, flags)){
				for(size_t i = 0; i<states.size();) {
					ImGui::PushID((int)i);
					auto& entry = states[i];

					ImGui::TableNextRow();
					ImGui::TableNextColumn();
					ImGui::TextUnformatted(entry.first.c_str());
					if(ImGui::IsItemHovered()) {
						ImGui::BeginTooltip();

						ImGui::TextUnformatted(entry.first.c_str());

						ImGui::EndTooltip();
					}				

					ImGui::TableNextColumn();
					if(ImGui::Button("Load")){
						*ab = entry.second;
					}
					ImGui::SameLine();
					if(ImGui::Button("Save")) {
						stateIndToSave = i;
						fdiState.save.OpenDialog(ImGuiFDMode_SaveFile, ".");
					}
					ImGui::SameLine();
					if(ImGui::Button("Delete")) {
						states.erase(states.begin()+i);
						ImGui::PopID();
						continue;
					}

					i++;
					ImGui::PopID();
				}
				ImGui::EndTable();
			}
		}else{
			ImGui::TextUnformatted("No States saved yet!");
		}
		ImGui::TreePop();
	}
	
	fdiState.save.DrawDialog([](void* userData) {
		MCU_ASSERT(userData != nullptr);
		const char* path = ImGuiFD::GetSelectionPathString(0);
		std::ofstream file(path, std::ios::binary);
		if(!file.is_open()) {
			MCU_LOGF_(LogBackend::LogLevel_Error, "Could not open file \"%s\"", path);
			return;
		}

		((Arduboy*)userData)->getState(file);
	},states.size() > 0 ? & states[stateIndToSave].second : nullptr);

	fdiState.load.DrawDialog([](void* userData){
		const char* path = ImGuiFD::GetSelectionPathString(0);
		std::ifstream file(path, std::ios::binary);
		if(!file.is_open()) {
			MCU_LOGF_(LogBackend::LogLevel_Error, "Could not open file \"%s\"", path);
			return;
		}

		Arduboy ab;
		ab.setState(file);
		((McuInfoBackend*)userData)->addState(ab, ImGuiFD::GetSelectionNameString(0));
	},this);
	
}

void ABB::McuInfoBackend::addState(Arduboy& ab, const char* name){
	std::string n;
	if(name == nullptr) {
		time_t t = std::time(0);
		n += "From: ";
		n += std::ctime(&t);
	}else{
		n = name;
	}
	states.push_back({n, ab});
}