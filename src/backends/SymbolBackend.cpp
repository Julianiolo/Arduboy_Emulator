#include "SymbolBackend.h"

#define __STDC_FORMAT_MACROS 1
#include <inttypes.h> // for printing uint64_t
#include <cmath>
#include <algorithm>
#include <functional>
#include <iostream>

#include "../Extensions/imguiExt.h"

#include "StringUtils.h"
#include "MathUtils.h"
#include "DataUtils.h"
#include "LogUtils.h"
#include "DataUtilsSize.h"


#include "../utils/byteVisualiser.h"

#include "ArduboyBackend.h"

#include "../bintools/bintools.h"

#include "imgui_internal.h"

#define LU_MODULE "SymbolBackend"

ABB::SymbolBackend::SymbolBackend(ArduboyBackend* abb, const char* winName, bool* open) : abb(abb), winName(winName), open(open) {
    abb->symbolTable.setSymbolsAddDemanglFunc(demangeSymbols, nullptr);
}

std::vector<std::string> ABB::SymbolBackend::demangeSymbols(std::vector<const char*> names, void* userData) {
    DU_UNUSED(userData);
	
	if (BinTools::canDemangle() && names.size() > 0) {
		std::vector<std::string> demList = BinTools::demangleList(&names[0], names.size());
		if (demList.size() == names.size()) {
			return demList;
		}
		else {
			LU_LOG_(LogUtils::LogLevel_Warning, "an error occured while trying to generate demangled list");
		}
	}
	std::vector<std::string> dems;
	for (size_t i = 0; i < names.size(); i++) {
		dems.push_back(names[i]);
	}
	return dems;
}

float ABB::SymbolBackend::distSqCols(const ImVec4& a, const ImVec4& b){
	return MathUtils::sq(a.x-b.x) + MathUtils::sq(a.y-b.y) + MathUtils::sq(a.z-b.z) + MathUtils::sq(a.w-b.w);
}

bool ABB::SymbolBackend::compareSymbols(uint32_t a, uint32_t b) {
	const EmuUtils::SymbolTable::Symbol* symbolA = abb->symbolTable.getSymbolById(a);
	const EmuUtils::SymbolTable::Symbol* symbolB = abb->symbolTable.getSymbolById(b);

	for (int i = 0; i < sortSpecs->SpecsCount; i++) {
		auto& specs = sortSpecs->Specs[i];
		int delta = 0;
		switch (specs.ColumnUserID) {
			case SB_NAME:
				delta = std::strcmp(symbolA->name.c_str(), symbolB->name.c_str());
				break;

			case SB_VALUE:
				delta = (int)symbolA->value - (int)symbolB->value;
				break;

			case SB_SIZE:
				delta = (int)symbolA->size - (int)symbolB->size;
				break;

			case SB_FLAGS:
				delta = std::strcmp(symbolA->flagStr.c_str(), symbolB->flagStr.c_str());
				break;

			case SB_SECTION:
				delta = std::strcmp(symbolA->section.c_str(), symbolB->section.c_str());
				break;

			case SB_NOTES:
				delta = std::strcmp(symbolA->name.c_str(), symbolB->name.c_str());
				break;

			case SB_ID:
				delta = (int64_t)symbolA->id - (int64_t)symbolB->id;
			
		}

		if (delta > 0)
			return (specs.SortDirection == ImGuiSortDirection_Ascending) ? false : true;
		if (delta < 0)
			return (specs.SortDirection == ImGuiSortDirection_Ascending) ? true : false;
	}
	return false;
}

void ABB::SymbolBackend::clearAddSymbol(){
	addSymbol.name = "";
	addSymbol.demangled = "";
	addSymbol.hasDemangledName = false;
	addSymbol.id = -1;
	addSymbol.isHidden = false;
	addSymbol.note = "";
	addSymbol.section = "";
	addSymbol.extraData = nullptr;
	addSymbol.flags = decltype(addSymbol.flags)();
	addSymbol.flagStr = "";
}


void ABB::SymbolBackend::draw() {
    if(ImGui::Begin(winName.c_str(), open)) {
		ImGui::SetNextItemOpen(true, ImGuiCond_Appearing);
		if(ImGui::TreeNode("Symbols")){
			char buf[512];
			snprintf(buf, sizeof(buf), "Add Symbol [%s]",winName.c_str());
			if(ImGui::Button("Add Symbol")){
				ImGui::OpenPopup(buf);
				clearAddSymbol();
			}

			if(ImGui::BeginPopup(buf)){
				ImGui::TextUnformatted("Add a Symbol");
				ImGui::Separator();

				ImGuiExt::InputTextString("Name", "Name of the Symbol", &addSymbol.name);
				ImGui::Checkbox("Extra demangled name", &addSymbol.hasDemangledName);

				if(!addSymbol.hasDemangledName) ImGui::BeginDisabled();
				ImGuiExt::InputTextString("Demangled name",nullptr, &addSymbol.demangled);
				if(!addSymbol.hasDemangledName) ImGui::EndDisabled();

				{
					int v = (int)addSymbol.value;
					if(ImGui::InputInt("Value", &v))
						addSymbol.value = std::max(v, 0);
				}

				{
					int v = (int)addSymbol.size;
					if(ImGui::InputInt("Size", &v))
						addSymbol.size = std::max(v, 0);
				}

				if(ImGui::Button("OK")){
					abb->symbolTable.addSymbol(std::move(addSymbol));
					ImGui::CloseCurrentPopup();
				}
				ImGui::SameLine();
				if(ImGui::Button("Cancel")){
					ImGui::CloseCurrentPopup();
				}
				

				ImGui::EndPopup();
			}
		

			ImGuiTableFlags flags = ImGuiTableFlags_Borders | ImGuiTableFlags_NoHostExtendX | ImGuiTableFlags_RowBg | ImGuiTableFlags_SizingFixedFit |
				ImGuiTableFlags_Resizable | ImGuiTableFlags_Sortable | ImGuiTableFlags_SortMulti;
			if(ImGui::BeginTable("Symbols", 7, flags)) {
				ImGui::TableSetupScrollFreeze(0, 1); // Make top row always visible

				{
					const float approx_char_width = ImGui::CalcTextSize("00").x/2;
					ImGui::TableSetupColumn("Name", ImGuiTableColumnFlags_None, approx_char_width*20, SB_NAME);
					ImGui::TableSetupColumn("Value", ImGuiTableColumnFlags_DefaultSort, approx_char_width*6, SB_VALUE);
					ImGui::TableSetupColumn("Size", ImGuiTableColumnFlags_None, approx_char_width*6, SB_SIZE);
					ImGui::TableSetupColumn("Flags", ImGuiTableColumnFlags_None, approx_char_width*7, SB_FLAGS);
					ImGui::TableSetupColumn("Section", ImGuiTableColumnFlags_None, approx_char_width*5, SB_SECTION);
					ImGui::TableSetupColumn("Note", ImGuiTableColumnFlags_None, approx_char_width*5, SB_NOTES);
					ImGui::TableSetupColumn("ID", ImGuiTableColumnFlags_None, approx_char_width*4, SB_ID);
					ImGui::TableHeadersRow();
				}
				

				

				if (symbolsSortedOrder.size() != abb->symbolTable.getSymbols().size()) {
					std::set<uint32_t> seen;
					for (size_t i = 0; i < symbolsSortedOrder.size();) {
						if (abb->symbolTable.getSymbolById(symbolsSortedOrder[i]) == nullptr) {
							symbolsSortedOrder.erase(symbolsSortedOrder.begin() + i);
							continue;
						}

						seen.insert(symbolsSortedOrder[i]);
						i++;
					}

					for (size_t i = 0; i < abb->symbolTable.getSymbols().size(); i++) {
						const auto* symbol = &abb->symbolTable.getSymbols()[i];
						if (seen.find(symbol->id) == seen.end()) {
							symbolsSortedOrder.push_back(symbol->id);
						}
					}
					shouldResort = true;
				}

				if (ImGuiTableSortSpecs* specs = ImGui::TableGetSortSpecs()) {
					if (specs->SpecsDirty || shouldResort) {
						sortSpecs = specs;
						std::sort(symbolsSortedOrder.begin(), symbolsSortedOrder.end(), [&](uint32_t a, uint32_t b) {
							return compareSymbols(a, b);
						});
						sortSpecs = nullptr;
						specs->SpecsDirty = false;
						shouldResort = false;
					}
				}

				ImGuiListClipper clipper;
				clipper.Begin((int)abb->symbolTable.getSymbols().size());
				while (clipper.Step()) {
					for(int i = clipper.DisplayStart; i<clipper.DisplayEnd; i++) {
						const auto* symbol = abb->symbolTable.getSymbolById(symbolsSortedOrder[i]);

						ImGui::TableNextRow();
						ImGui::TableNextColumn();
						ImGuiExt::TextColored(getSymbolColor(symbol->id), (symbol->hasDemangledName ? symbol->demangled : symbol->name).c_str());
						if(ImGui::IsItemHovered()) {
							ImGui::BeginTooltip();
							const uint8_t* data = nullptr;
							if(symbol->section == ".bss" || symbol->section == ".data"){
								data = abb->mcu.dataspace_getData();
							} else if(symbol->section == ".text"){
								data = abb->mcu.flash_getData();
							}
							drawSymbol(symbol, symbol->value, data);
							ImGui::EndTooltip();
						}

						ImGui::TableNextColumn();
						ImGui::Text("%04x", (int)symbol->value);

						ImGui::TableNextColumn();
						ImGui::Text("%u", (int)symbol->size);

						ImGui::TableNextColumn();
						ImGui::Text("%s", symbol->flagStr.c_str());

						ImGui::TableNextColumn();
						ImGui::Text("%s", symbol->section.c_str());

						ImGui::TableNextColumn();
						{
							auto newLinePos = symbol->note.find('\n');
							ImGui::TextUnformatted(symbol->note.c_str(), 
								(newLinePos==std::string::npos) ? 
									(symbol->note.c_str()+symbol->note.size()) :
									(symbol->note.c_str()+newLinePos)
							);
						}
						
						if (ImGui::IsItemHovered()) {
							ImGui::BeginTooltip();

							ImGui::TextUnformatted("Note:");
							ImGui::Separator();

							ImGui::TextUnformatted(symbol->note.c_str());

							ImGui::EndTooltip();
						}

						ImGui::TableNextColumn();
						ImGui::Text("%u", symbol->id);
					}
				}

				ImGui::EndTable();
			}

			ImGui::TreePop();
		}

		if(ImGui::TreeNode("Sections")){
			ImGuiTableFlags flags = ImGuiTableFlags_Borders | ImGuiTableFlags_NoHostExtendX | ImGuiTableFlags_RowBg | 
				ImGuiTableFlags_Resizable;
			if(ImGui::BeginTable("SectionsTable", 1, flags)){
				for(const auto& s : abb->symbolTable.getSections()) {
					ImGui::TableNextRow();
					ImGui::TableNextColumn();
					ImGui::TextUnformatted(s.second.name.c_str());
				}
				ImGui::EndTable();
			}
			
			ImGui::TreePop();
		}
    }
    ImGui::End();
}

ImVec4 ABB::SymbolBackend::getSymbolColor(size_t symbolID) {
	uint64_t v = DataUtils::simpleHash(symbolID);
	ImVec4 col;
	col.z = 1;
	ImGui::ColorConvertHSVtoRGB((float)(v % 256) / 256, 0.7, 0.7, col.x, col.y, col.z);
    return col;
}

void ABB::SymbolBackend::drawSymbol(const EmuUtils::SymbolTable::Symbol* symbol, EmuUtils::SymbolTable::symb_size_t addr, const uint8_t* data) {
	if (addr == (decltype(addr))-1) addr = symbol->value;
	
	ImGui::PushStyleVar(ImGuiStyleVar_ItemSpacing, { 0,0 });

    ImVec4 col = getSymbolColor(symbol->id);

	if (symbol->hasDemangledName) {
		ImGuiExt::TextColored(col, symbol->demangled.c_str());
		ImGui::SameLine();
		ImGui::TextUnformatted(": ");
		if(symbol->demangled.size() < 40) // only put name in same line if it isnt already super long
			ImGui::SameLine();
	}
	ImGuiExt::TextColored(col, symbol->name.c_str());

	ImGui::PopStyleVar();

	ImGui::SetCursorPosY(ImGui::GetCursorPosY() + ImGui::GetStyle().ItemSpacing.y);

	if (addr > symbol->value && addr < symbol->addrEnd()) {
		ImGui::Text("<+%04x>", (uint16_t)(addr - symbol->value));
	}

	ImGui::Separator();

	if (symbol->note.size() > 0) {
		ImGui::TextUnformatted(symbol->note.c_str());
		ImGui::Separator();
	}

	const ImGuiTableFlags tFlags = ImGuiTableFlags_BordersOuterH | ImGuiTableFlags_BordersV | ImGuiTableFlags_RowBg | ImGuiTableFlags_NoHostExtendX;
	if (ImGui::BeginTable("symbolTableElemTable", 2, tFlags)) {
		ImGui::TableNextRow();
		ImGui::TableNextColumn();

			ImGui::TextUnformatted("Value:");
			ImGui::TableNextColumn();
			ImGui::Text("%" PRIx64, symbol->value);

		ImGui::TableNextRow();
		ImGui::TableNextColumn();

			ImGui::TextUnformatted("Size:");
			ImGui::TableNextColumn();
			ImGui::Text("%" PRId64, symbol->size);

		ImGui::TableNextRow();
		ImGui::TableNextColumn();

			ImGui::TextUnformatted("Section:");
			ImGui::TableNextColumn();
			ImGui::TextUnformatted(symbol->section.c_str());

		ImGui::TableNextRow();
		ImGui::TableNextColumn();

			ImGui::TextUnformatted("Flags:");
			ImGui::TableNextColumn();
			ImGui::TextUnformatted(symbol->flagStr.c_str());

		ImGui::EndTable();
	}
	
	if (data && symbol->size > 0) {
		ImGui::SameLine();
		
		ImGui::PushStyleVar(ImGuiStyleVar_WindowPadding, {0,0});

		const float byteHeight = ImGui::CalcTextSize(" ").y*2;
		const size_t maxLineLen = 128;

		ImVec2 winSize = {
			(byteHeight / 8) * (symbol->size >= maxLineLen ? maxLineLen : symbol->size % maxLineLen),
			byteHeight * std::ceil((float)symbol->size / maxLineLen)
		};
		if (winSize.y > 500)
			winSize.y = 500;

		ImGui::BeginChild("Symbol Byte Tex Child", winSize, true);
		ImGui::PushStyleVar(ImGuiStyleVar_ItemSpacing, {0,0});
		for (size_t i = 0; i < symbol->size; i++) {
			if(i%maxLineLen != 0)
				ImGui::SameLine();
			utils::ByteVisualiser::DrawByte(*(data+symbol->value+i), byteHeight/8, byteHeight);
		}
		ImGui::PopStyleVar();
		ImGui::EndChild();

		ImGui::PopStyleVar();
	}
}

const EmuUtils::SymbolTable::Symbol* ABB::SymbolBackend::drawAddrWithSymbol(EmuUtils::SymbolTable::symb_size_t Addr, const EmuUtils::SymbolTable::SymbolList& list) const {
	ImGui::BeginGroup();
	ImGui::Text("%08" MCU_PRIxADDR, Addr);

	const auto* symbol = abb->symbolTable.getSymbolByValue(Addr, list);
	if (symbol) {
		ImGui::SameLine();
		ImGuiExt::TextColored(getSymbolColor(symbol->id), symbol->demangled.c_str());
	}

	ImGui::EndGroup();

	return symbol;
}

void ABB::SymbolBackend::drawSymbolListSizeDiagramm(const EmuUtils::SymbolTable& table, const EmuUtils::SymbolTable::SymbolList& list, EmuUtils::SymbolTable::symb_size_t totalSize, float* scale, const uint8_t* data, ImVec2 size) {
	if (size.x == 0)
		size.x = ImGui::GetContentRegionAvail().x;
	if (size.y == 0)
		size.y = 50;

	const float listByteLen = (float)totalSize;

	ImGui::PushStyleVar(ImGuiStyleVar_ScrollbarSize, 5);
	ImGui::PushStyleVar(ImGuiStyleVar_WindowPadding, { 0,0 });
	
	
	ImGui::BeginChild((ImGuiID)(size_t)&list, size, true, ImGuiWindowFlags_HorizontalScrollbar);

	ImGui::BeginGroup();

	ImGui::PushStyleVar(ImGuiStyleVar_ItemSpacing, { 0,0 });

	EmuUtils::SymbolTable::symb_size_t lastSymbEnd = 0;
	for (size_t i = 0; i < list.size(); i++) {
		const auto* symbol = table.getSymbol(list,i);
		if (symbol->size == 0)
			continue;

		if (symbol->value > lastSymbEnd) {
			//ImGui::SetCursorPosX(ImGui::GetCursorPosX() + (((float)(symbol->value - lastSymbEnd) / listByteLen)) * size.x * (*scale));
			if (i != 0)
				ImGui::SameLine();

			EmuUtils::SymbolTable::symb_size_t fillAmt = symbol->value - lastSymbEnd;
			ImGuiExt::Rect(ImGuiID(symbol->value * i), {0,0,0,0}, { (((float)fillAmt / listByteLen)) * size.x * (*scale), size.y });
			if (ImGui::IsItemHovered()) {
				ImGui::PopStyleVar();
				ImGui::PopStyleVar();

				ImGui::SetTooltip("Space Without Symbol: %" PRIu64 " bytes (%f%%)", fillAmt, ((float)fillAmt / listByteLen)*100);

				ImGui::PushStyleVar(ImGuiStyleVar_WindowPadding, { 0,0 });
				ImGui::PushStyleVar(ImGuiStyleVar_ItemSpacing, { 0,0 });
			}
		}
			
		if (i != 0 || symbol->value > lastSymbEnd)
			ImGui::SameLine();
		float width = ((float)symbol->size / listByteLen) * size.x * (*scale);
		ImGuiExt::Rect((ImGuiID)(symbol->value * i), getSymbolColor(symbol->id), {width, size.y});

		if (ImGui::IsItemHovered()) {
			ImGui::PopStyleVar();
			ImGui::PopStyleVar();

			ImGui::BeginTooltip();
			drawSymbol(symbol,-1, data);
			ImGui::EndTooltip();

			ImGui::PushStyleVar(ImGuiStyleVar_WindowPadding, { 0,0 });
			ImGui::PushStyleVar(ImGuiStyleVar_ItemSpacing, { 0,0 });
		}

		lastSymbEnd = symbol->addrEnd();
	}

	if (lastSymbEnd < totalSize) {
		EmuUtils::SymbolTable::symb_size_t fillAmt = totalSize - lastSymbEnd;
		ImGui::SameLine();
		ImGuiExt::Rect(ImGuiID(totalSize * lastSymbEnd), {0,0,0,0}, { (((float)fillAmt / listByteLen)) * size.x * (*scale), size.y });
		if (ImGui::IsItemHovered()) {
			ImGui::PopStyleVar();
			ImGui::PopStyleVar();

			ImGui::SetTooltip("Space Without Symbol: %" PRIu64 " bytes (%f%%)", fillAmt, ((float)fillAmt / listByteLen)*100);

			ImGui::PushStyleVar(ImGuiStyleVar_WindowPadding, { 0,0 });
			ImGui::PushStyleVar(ImGuiStyleVar_ItemSpacing, { 0,0 });
		}
	}
	

	ImGui::PopStyleVar();

	ImGui::EndGroup();

	if (ImGui::IsItemClicked(ImGuiMouseButton_Right))
		ImGui::OpenPopup("settings");

	ImGui::PopStyleVar();
	if (ImGui::BeginPopup("settings")) {
		ImGui::SliderFloat("Scale", scale, 0.1f, 20);
		ImGui::SameLine();
		if (ImGui::Button("Reset"))
			*scale = 1;
		ImGui::EndPopup();
	}
	ImGui::PushStyleVar(ImGuiStyleVar_WindowPadding, { 0,0 });

	ImGui::EndChild();
	
	ImGui::PopStyleVar();
	ImGui::PopStyleVar();
}

size_t ABB::SymbolBackend::sizeBytes() const {
	size_t sum = 0;

	sum += sizeof(abb);

	sum += DataUtils::approxSizeOf(winName);
	sum += sizeof(open);

	sum += DataUtils::approxSizeOf(symbolsSortedOrder);
	sum += sizeof(shouldResort);
	sum += sizeof(sortSpecs);
	sum += addSymbol.sizeBytes();

	return sum;
}