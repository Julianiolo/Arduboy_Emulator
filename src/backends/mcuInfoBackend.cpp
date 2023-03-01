#ifdef _MSC_VER
#define _CRT_SECURE_NO_WARNINGS 1
#endif

#include "mcuInfoBackend.h"

#include <cmath>
#include <cctype>
#include <fstream>

#include "../Extensions/imguiExt.h"
#include "ImGuiFD.h"

#include "extras/Disassembler.h"
#include "LogBackend.h"
#include "ArduboyBackend.h"

#include "StringUtils.h"
#include "DataUtils.h"

#define MCU_MODULE "McuInfoBackend"

ABB::McuInfoBackend::SaveLoadFDIPair::SaveLoadFDIPair(const char* bothName):
	save((std::string("Save ") + bothName).c_str()), load((std::string("Load ") + bothName).c_str())
{

}

size_t ABB::McuInfoBackend::SaveLoadFDIPair::sizeBytes() const {
	return load.sizeBytes() + save.sizeBytes();
}

ABB::McuInfoBackend::McuInfoBackend(ArduboyBackend* abb, const char* winName, bool* open) :
	abb(abb),
	dataspaceDataHex(abb->ab.mcu.dataspace.getData(), A32u4::DataSpace::Consts::data_size, &abb->ab.mcu, utils::HexViewer::DataType_Ram), 
	dataspaceEEPROMHex(abb->ab.mcu.dataspace.getEEPROM(), A32u4::DataSpace::Consts::eeprom_size, nullptr, utils::HexViewer::DataType_Eeprom),
	flashHex(abb->ab.mcu.flash.getData(), A32u4::Flash::sizeMax, &abb->ab.mcu, utils::HexViewer::DataType_Rom),
	fdiRam((std::string("Ram - ")+winName).c_str()), fdiEeprom((std::string("Eeprom - ")+winName).c_str()), fdiRom((std::string("Rom - ")+winName).c_str()),
	fdiState((std::string("State - ")+winName).c_str()),
	winName(winName), open(open)
{
	dataspaceDataHex.setSymbolList(abb->ab.mcu.symbolTable.getSymbolsRam());
	dataspaceDataHex.setEditCallback(setRamValue, this);

	dataspaceEEPROMHex.setEditCallback(setEepromValue, this);

	flashHex.setSymbolList(abb->ab.mcu.symbolTable.getSymbolsRom());
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
			ImGui::Text("PC: 0x%04x => PC Addr: 0x%04x", abb->ab.mcu.cpu.getPC(), abb->ab.mcu.cpu.getPCAddr());
			ImGui::Text("Cycles: %s", std::to_string(abb->ab.mcu.cpu.getTotalCycles()).c_str());
			ImGui::Text("Is Sleeping: %d", abb->ab.mcu.cpu.isSleeping());
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
					ramStrings = StringUtils::findStrings(abb->ab.mcu.dataspace.getData(), A32u4::DataSpace::Consts::data_size);
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
					eepromStrings = StringUtils::findStrings(abb->ab.mcu.dataspace.getEEPROM(), A32u4::DataSpace::Consts::eeprom_size);
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
					romStrings = StringUtils::findStrings(abb->ab.mcu.flash.getData(), A32u4::Flash::sizeMax);
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

		if (ImGui::TreeNode("Mem Usage")) {
			// TODO reduce std::string usage
			
			const auto func = [](const char* name, size_t sizeBytes, bool sub = false) {
				bool ret = false;
				ImGui::TableNextRow();
				ImGui::TableNextColumn();
				if (sub) {
					ret = ImGui::TreeNodeEx(name);
				}
				else {
					ImGui::TreeNodeEx(name, ImGuiTreeNodeFlags_Leaf | ImGuiTreeNodeFlags_NoTreePushOnOpen);
				}

				ImGui::TableNextColumn();
				ImGui::Text("%20s", StringUtils::addThousandsSeperator(std::to_string(sizeBytes).c_str()).c_str());

				return ret;
			};

			if (ImGui::BeginTable("MemUsage", 2)) {
				
				if (func("Arduboy Backend", abb->sizeBytes(), true)) {
					if (func("Arduboy", abb->ab.sizeBytes(), true)) {
						if (func("Mcu",         abb->ab.mcu.sizeBytes(), true)) {
							func("CPU",         abb->ab.mcu.cpu.sizeBytes());
							func("DataSpace",   abb->ab.mcu.dataspace.sizeBytes());
							func("Flash",       abb->ab.mcu.flash.sizeBytes());

							func("Debugger",    abb->ab.mcu.debugger.sizeBytes());
							func("Analytics",   abb->ab.mcu.analytics.sizeBytes());
							func("SymbolTable", abb->ab.mcu.symbolTable.sizeBytes());
							ImGui::TreePop();
						}
						func("Display", abb->ab.display.sizeBytes());
						ImGui::TreePop();
					}

					func("Log Backend",      abb->logBackend.sizeBytes());
					func("Display Backend",  abb->displayBackend.sizeBytes());
					if (func("DebuggerBackend", abb->debuggerBackend.sizeBytes(), true)) {
						for (const auto& srcMix : abb->debuggerBackend.srcMixs) {
							if (func(srcMix.title.c_str(), srcMix.sizeBytes(), true)) {
								if (func("File", srcMix.file.sizeBytes(), true)) {
									func("Contents", 
										DataUtils::approxSizeOf(srcMix.file.content) + DataUtils::approxSizeOf(srcMix.file.addrs) + 
										DataUtils::approxSizeOf(srcMix.file.lines) + DataUtils::approxSizeOf(srcMix.file.isLineProgram) + DataUtils::approxSizeOf(srcMix.file.labels)
									);
									//func("Branchs", 
									//	DataUtils::approxSizeOf(srcMix.file.branchRoots, [](const A32u4::Disassembler::DisasmFile::BranchRoot& v) {return sizeof(A32u4::Disassembler::DisasmFile::BranchRoot); }) + DataUtils::approxSizeOf(srcMix.file.branchRootInds) +
									//	DataUtils::approxSizeOf(srcMix.file.passingBranchesInds) + DataUtils::approxSizeOf(srcMix.file.passingBranchesVec)
									//);

									ImGui::TreePop();
								}
								ImGui::TreePop();
							}
						}
						ImGui::TreePop();
					}
					
					func("McuInfoBackend",   abb->mcuInfoBackend.sizeBytes());
					func("AnalyticsBackend", abb->analyticsBackend.sizeBytes());
					func("CompilerBackend",  abb->compilerBackend.sizeBytes());
					func("SymbolBackend",    abb->symbolBackend.sizeBytes());
					ImGui::Spacing();
					func("ELF",         abb->elf.sizeBytes());

					ImGui::TreePop();
				}
				

				ImGui::EndTable();
			}

			ImGui::TreePop();
		}
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
	}, &abb->ab);
	fdiRam.load.DrawDialog([](void* userData){
		const char* path = ImGuiFD::GetSelectionPathString(0);
		std::ifstream file(path, std::ios::binary);
		if(!file.is_open()) {
			MCU_LOGF_(LogBackend::LogLevel_Error, "Could not open file \"%s\"", path);
			return;
		}

		((Arduboy*)userData)->mcu.dataspace.setRamState(file);
	},&abb->ab);

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
	},&abb->ab);

	fdiRom.save.DrawDialog([](void* userData){
		const char* path = ImGuiFD::GetSelectionPathString(0);
		std::ofstream file(path, std::ios::binary);
		if(!file.is_open()) {
			MCU_LOGF_(LogBackend::LogLevel_Error, "Could not open file \"%s\"", path);
			return;
		}

		((Arduboy*)userData)->mcu.flash.getRomState(file);
		//StringUtils::writeBytesToFile(ab->mcu.flash.getData(), A32u4::Flash::sizeMax, path);
	},&abb->ab);
	fdiRom.load.DrawDialog([](void* userData){
		const char* path = ImGuiFD::GetSelectionPathString(0);
		std::ifstream file(path, std::ios::binary);
		if(!file.is_open()) {
			MCU_LOGF_(LogBackend::LogLevel_Error, "Could not open file \"%s\"", path);
			return;
		}

		((Arduboy*)userData)->mcu.flash.setRomState(file);
	},&abb->ab);
}

const char* ABB::McuInfoBackend::getWinName() const {
	return winName.c_str();
}

bool ABB::McuInfoBackend::isWinFocused() const {
	return winFocused;
}

void ABB::McuInfoBackend::setRamValue(size_t addr, uint8_t val, void* userData) {
	McuInfoBackend* info = (McuInfoBackend*)userData;
	info->abb->ab.mcu.dataspace.setDataByte((addrmcu_t)addr, val);
}
void ABB::McuInfoBackend::setEepromValue(size_t addr, uint8_t val, void* userData) {
	McuInfoBackend* info = (McuInfoBackend*)userData;
	info->abb->ab.mcu.dataspace.getEEPROM()[addr] = val;
}
void ABB::McuInfoBackend::setRomValue(size_t addr, uint8_t val, void* userData) {
	McuInfoBackend* info = (McuInfoBackend*)userData;
	info->abb->ab.mcu.flash.setByte((addrmcu_t)addr, val);
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
						abb->ab = entry.second;
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

	MCU_LOGF_(A32u4::ATmega32u4::LogLevel_DebugOutput, "Added State: \"%s\"", n.c_str());
}
size_t ABB::McuInfoBackend::sizeBytes() const {
	size_t sum = 0;

	sum += sizeof(abb);

	sum += dataspaceDataHex.sizeBytes();
	sum += dataspaceEEPROMHex.sizeBytes();
	sum += sizeof(dataSpaceSplitHexView);
	sum += flashHex.sizeBytes();

	sum += sizeof(winFocused);

	sum += DataUtils::approxSizeOf(ramStrings);
	sum += DataUtils::approxSizeOf(eepromStrings);
	sum += DataUtils::approxSizeOf(romStrings);

	sum += fdiRam.sizeBytes();
	sum += fdiEeprom.sizeBytes();
	sum += fdiRom.sizeBytes();

	sum += DataUtils::approxSizeOf(states);

	sum += fdiState.sizeBytes();
	sum += sizeof(stateIndToSave);

	return sum;
}