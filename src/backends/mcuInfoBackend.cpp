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

#include "../utils/hexViewer.h"

#include "StringUtils.h"
#include "DataUtils.h"
#include "DataUtilsSize.h"


#define LU_MODULE "McuInfoBackend"
#define LU_CONTEXT (abb->logBackend.getLogContext())

size_t ABB::McuInfoBackend::Save::sizeBytes() const {
	size_t sum = 0;

	sum += mcu.sizeBytes();
	sum += symbolTable.sizeBytes();

	return sum;
}

ABB::McuInfoBackend::SaveLoadFDIPair::SaveLoadFDIPair(const char* bothName):
	save((std::string("Save ") + bothName).c_str()), load((std::string("Load ") + bothName).c_str())
{

}

size_t ABB::McuInfoBackend::SaveLoadFDIPair::sizeBytes() const {
	return load.sizeBytes() + save.sizeBytes();
}

ABB::McuInfoBackend::McuInfoBackend(ArduboyBackend* abb, const char* winName, bool* open) :
	abb(abb),
	fdiState((std::string("State - ")+winName).c_str()),
	winName(winName), open(open)
{
	for (size_t i = 0; i < abb->mcu.numHexViewers(); i++) {
		hexViewers.push_back(utils::HexViewer(utils::HexViewer::DataType_None));
	}
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
			/*
			ImGui::Text("PC: 0x%04x => PC Addr: 0x%04x", abb->ab.mcu.cpu.getPC(), abb->ab.mcu.cpu.getPCAddr());
			ImGui::Text("Cycles: %s", std::to_string(abb->mcu.totalCycles()).c_str());
			ImGui::Text("Is Sleeping: %d", abb->ab.mcu.cpu.isSleeping());
			*/
			ImGui::TreePop();
		}

		if (ImGui::TreeNode("Hex Viewers")) {
			for (size_t i = 0; i < abb->mcu.numHexViewers(); i++) {
				auto hex = abb->mcu.getHexViewer(i);

				ImGui::PushID((int)i);

				if (ImGui::TreeNode(hex.name)) {
					hexViewers[i].draw(hex.data, hex.dataLen, &abb->symbolTable);
					ImGui::TreePop();
				}

				ImGui::PopID();
			}
		}

		/*
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
		*/
	
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
					func("Arduboy", abb->mcu.sizeBytes());

					func("Log Backend",      abb->logBackend.sizeBytes());
					func("Display Backend",  abb->displayBackend.sizeBytes());
					if (func("DebuggerBackend", abb->debuggerBackend.sizeBytes(), true)) {
						for (const auto& srcMixP : abb->debuggerBackend.srcMixs) {
							if (func(srcMixP.viewer.title.c_str(), srcMixP.viewer.sizeBytes(), true)) {
								if (func("File", srcMixP.viewer.file.sizeBytes(), true)) {
									func("Contents", 
										DataUtils::approxSizeOf(srcMixP.viewer.file.content) + DataUtils::approxSizeOf(srcMixP.viewer.file.addrs) + 
										DataUtils::approxSizeOf(srcMixP.viewer.file.lines) + DataUtils::approxSizeOf(srcMixP.viewer.file.isLineProgram) + DataUtils::approxSizeOf(srcMixP.viewer.file.labels)
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
}

const char* ABB::McuInfoBackend::getWinName() const {
	return winName.c_str();
}

bool ABB::McuInfoBackend::isWinFocused() const {
	return winFocused;
}

void ABB::McuInfoBackend::setRamValue(size_t addr, uint8_t val, void* userData) {
	McuInfoBackend* info = (McuInfoBackend*)userData;
	//info->abb->ab.mcu.dataspace.setDataByte((addrmcu_t)addr, val);
}
void ABB::McuInfoBackend::setEepromValue(size_t addr, uint8_t val, void* userData) {
	McuInfoBackend* info = (McuInfoBackend*)userData;
	//info->abb->ab.mcu.dataspace.getEEPROM()[addr] = val;
}
void ABB::McuInfoBackend::setRomValue(size_t addr, uint8_t val, void* userData) {
	McuInfoBackend* info = (McuInfoBackend*)userData;
	//info->abb->ab.mcu.flash.setByte((addrmcu_t)addr, val);
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
						abb->mcu = entry.second.mcu;
						abb->symbolTable = entry.second.symbolTable;
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
		DU_ASSERT(userData != nullptr);
		const char* path = ImGuiFD::GetSelectionPathString(0);
		std::ofstream file(path, std::ios::binary);
		if(!file.is_open()) {
			LU_LOGF_(LogBackend::LogLevel_Error, "Could not open file \"%s\"", path);
			return;
		}


		((Save*)userData)->mcu.getState(file);
		((Save*)userData)->symbolTable.getState(file);
	},states.size() > 0 ? &states[stateIndToSave].second : nullptr);

	fdiState.load.DrawDialog([](void* userData){
		const char* path = ImGuiFD::GetSelectionPathString(0);
		std::ifstream file(path, std::ios::binary);
		if(!file.is_open()) {
			LU_LOGF_(LogBackend::LogLevel_Error, "Could not open file \"%s\"", path);
			return;
		}

		Save save;
		save.mcu.setState(file);
		save.symbolTable.setState(file);
		((McuInfoBackend*)userData)->addState(save, ImGuiFD::GetSelectionNameString(0));
	},this);
	
}

void ABB::McuInfoBackend::addState(const Save& ab, const char* name){
	std::string n;
	if(name == nullptr) {
		time_t t = std::time(0);
		n += "From: ";
		n += std::ctime(&t);
	}else{
		n = name;
	}
	states.push_back({n, ab});

	LU_LOGF(LogUtils::LogLevel_DebugOutput, "Added State: \"%s\"", n.c_str());
}
size_t ABB::McuInfoBackend::sizeBytes() const {
	size_t sum = 0;

	sum += sizeof(abb);

	sum += DataUtils::approxSizeOf(hexViewers);

	sum += sizeof(winFocused);

	sum += DataUtils::approxSizeOf(ramStrings);
	sum += DataUtils::approxSizeOf(eepromStrings);
	sum += DataUtils::approxSizeOf(romStrings);

	sum += DataUtils::approxSizeOf(states);

	sum += fdiState.sizeBytes();
	sum += sizeof(stateIndToSave);

	return sum;
}