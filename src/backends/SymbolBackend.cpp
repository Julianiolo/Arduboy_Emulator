#include "SymbolBackend.h"

#define __STDC_FORMAT_MACROS 1
#include <inttypes.h> // for printing uint64_t

#include "LogBackend.h"

#include "../Extensions/imguiExt.h"
#include "StringUtils.h"
#include "mathUtils.h"
#include "../utils/byteVisualiser.h"

#include "../bintools/bintools.h"


ABB::SymbolBackend::SymbolBackend(A32u4::ATmega32u4* mcu, const char* winName, bool* open) : mcu(mcu), winName(winName), open(open) {
    mcu->symbolTable.setSymbolsPostProcFunc(postProcessSymbols, nullptr);

    mcu->symbolTable.loadDeviceSymbolDumpFile("resources/device/regSymbs.txt");
}

void ABB::SymbolBackend::postProcessSymbols(A32u4::SymbolTable::Symbol* symbs, size_t len, void* userData) {
    if (BinTools::canDemangle() && len > 0) {
		const char** strs = new const char*[len];
		for (size_t i = 0; i < len; i++) {
			strs[i] = symbs[i].name.c_str();
		}
		std::vector<std::string> demList = BinTools::demangleList(strs, len);
		if (demList.size() == len) {
			for (size_t i = 0; i < len; i++) {
				symbs[i].demangled = demList[i];
			}
		}
		else {
			for (size_t i = 0; i < len; i++) {
				symbs[i].demangled = symbs[i].name;
			}
			LogBackend::log(LogBackend::LogLevel_Warning, "an error occured while trying to generate demangled list");
		}

		delete[] strs; // dont use delete[] bc theres nothing to delete there
	}

    // generate colors
    ImVec4 lastCol = {-FLT_MAX,-FLT_MAX,-FLT_MAX,-FLT_MAX};
	for (size_t i = 0; i<len; i++) {
        A32u4::SymbolTable::Symbol* symbol = &symbs[i];
        if(symbol->extraData)
            continue; // already has a color set
        
		size_t cnt = 0;
		ImVec4 col;
		do {
			col = {(float)(rand() % 256) / 256.0f, 0.8f, 1, 1};
			cnt++;
		} while(distSqCols(col, lastCol) < 1 && cnt < 32);
		
		lastCol = col;

        ImVec4* symbCol = new ImVec4();

		ImGui::ColorConvertHSVtoRGB(col.x, col.y, col.z, symbCol->x, symbCol->y, symbCol->z);
		symbCol->w = col.w;

        symbol->extraData = (void*) symbCol;
	}
}

float ABB::SymbolBackend::distSqCols(const ImVec4& a, const ImVec4& b){
	return MathUtils::sq(a.x-b.x) + MathUtils::sq(a.y-b.y) + MathUtils::sq(a.z-b.z) + MathUtils::sq(a.w-b.w);
}

void ABB::SymbolBackend::draw() {
    if(ImGui::Begin(winName.c_str(), open)) {
        if(ImGui::BeginTable("Symbols", 5)) {


            for(size_t i = 0; i<mcu->symbolTable.getSymbols().size(); i++) {
                
            }

            ImGui::EndTable();
        }
    }
    ImGui::End();
}

ImVec4* ABB::SymbolBackend::getSymbolColor(const A32u4::SymbolTable::Symbol* symbol) {
    return (ImVec4*)symbol->extraData;
}

void ABB::SymbolBackend::drawSymbol(const A32u4::SymbolTable::Symbol* symbol, A32u4::SymbolTable::symb_size_t addr, const uint8_t* data) {
	ImGui::PushStyleVar(ImGuiStyleVar_ItemSpacing, { 0,0 });

    const ImVec4& col = *getSymbolColor(symbol);

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
			ImGui::TextUnformatted(symbol->section->name.c_str());

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

const A32u4::SymbolTable::Symbol* ABB::SymbolBackend::drawAddrWithSymbol(A32u4::SymbolTable::symb_size_t Addr, A32u4::SymbolTable::SymbolListPtr list) {
	constexpr size_t AddrDigits = 4;
	char texBuf[AddrDigits];

	StringUtils::uIntToHexBuf(Addr, AddrDigits, texBuf);

	ImGui::BeginGroup();
	ImGui::TextUnformatted(texBuf, texBuf+AddrDigits);

	const A32u4::SymbolTable::Symbol* symbol = A32u4::SymbolTable::getSymbolByValue(Addr, list);
	if (symbol) {
		ImGui::SameLine();
		ImGuiExt::TextColored(*getSymbolColor(symbol), symbol->demangled.c_str());
	}

	ImGui::EndGroup();

	return symbol;
}

void ABB::SymbolBackend::drawSymbolListSizeDiagramm(A32u4::SymbolTable::SymbolListPtr list, A32u4::SymbolTable::symb_size_t totalSize, float* scale, const uint8_t* data, ImVec2 size) {
	if (size.x == 0)
		size.x = ImGui::GetContentRegionAvail().x;
	if (size.y == 0)
		size.y = 50;

	const float listByteLen = (float)totalSize;

	ImGui::PushStyleVar(ImGuiStyleVar_ScrollbarSize, 5);
	ImGui::PushStyleVar(ImGuiStyleVar_WindowPadding, { 0,0 });
	
	
	ImGui::BeginChild((ImGuiID)(size_t)list, size, true, ImGuiWindowFlags_HorizontalScrollbar);

	ImGui::BeginGroup();

	ImGui::PushStyleVar(ImGuiStyleVar_ItemSpacing, { 0,0 });

	A32u4::SymbolTable::symb_size_t lastSymbEnd = 0;
	for (size_t i = 0; i < list->size(); i++) {
		const A32u4::SymbolTable::Symbol* symbol = list->operator[](i);
		if (symbol->size == 0)
			continue;

		if (symbol->value > lastSymbEnd) {
			//ImGui::SetCursorPosX(ImGui::GetCursorPosX() + (((float)(symbol->value - lastSymbEnd) / listByteLen)) * size.x * (*scale));
			if (i != 0)
				ImGui::SameLine();

			A32u4::SymbolTable::symb_size_t fillAmt = symbol->value - lastSymbEnd;
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
		ImGuiExt::Rect((ImGuiID)(symbol->value * i), *getSymbolColor(symbol), {width, size.y});

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
		A32u4::SymbolTable::symb_size_t fillAmt = totalSize - lastSymbEnd;
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
		ImGui::SliderFloat("Scale", scale, 0.1f, 10);
		if (ImGui::Button("Reset"))
			*scale = 1;
		ImGui::EndPopup();
	}
	ImGui::PushStyleVar(ImGuiStyleVar_WindowPadding, { 0,0 });

	ImGui::EndChild();
	
	ImGui::PopStyleVar();
	ImGui::PopStyleVar();
}