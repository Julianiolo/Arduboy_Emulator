#include "symbolTable.h"

#include <algorithm>

#include <cstring>
#include <cmath>
#include <inttypes.h> // for printing uint64_t
#include "utils/StringUtils.h"
#include "../Extensions/imguiExt.h"

#include "../bintools/bintools.h"

#include "../backends/LogBackend.h"

#include "byteVisualiser.h"

ABB::utils::SymbolTable::Symbol::Section::Section() {

}
ABB::utils::SymbolTable::Symbol::Section::Section(const std::string& name) : name(name) {

}



bool ABB::utils::SymbolTable::Symbol::operator<(const Symbol& rhs) const {
	return this->value < rhs.value;
}
void ABB::utils::SymbolTable::Symbol::draw(symb_size_t addr, const uint8_t* data) const {
	ImGui::PushStyleVar(ImGuiStyleVar_ItemSpacing, { 0,0 });

	if (hasDemangledName) {
		ImGuiExt::TextColored(col, demangled.c_str());
		ImGui::SameLine();
		ImGui::TextUnformatted(": ");
		if(demangled.size() < 40) // only put name in same line if it isnt already super long
			ImGui::SameLine();
	}
	ImGuiExt::TextColored(col, name.c_str());

	ImGui::PopStyleVar();

	ImGui::SetCursorPosY(ImGui::GetCursorPosY() + ImGui::GetStyle().ItemSpacing.y);

	if (addr > value && addr < addrEnd()) {
		ImGui::Text("<+%04x>", (uint16_t)(addr - value));
	}

	ImGui::Separator();

	if (note.size() > 0) {
		ImGui::TextUnformatted(note.c_str());
		ImGui::Separator();
	}

	const ImGuiTableFlags tFlags = ImGuiTableFlags_BordersOuterH | ImGuiTableFlags_BordersV | ImGuiTableFlags_RowBg | ImGuiTableFlags_NoHostExtendX;
	if (ImGui::BeginTable("symbolTableElemTable", 2, tFlags)) {
		ImGui::TableNextRow();
		ImGui::TableNextColumn();

			ImGui::TextUnformatted("Value:");
			ImGui::TableNextColumn();
			ImGui::Text("%" PRIx64, value);

		ImGui::TableNextRow();
		ImGui::TableNextColumn();

			ImGui::TextUnformatted("Size:");
			ImGui::TableNextColumn();
			ImGui::Text("%" PRId64, size);

		ImGui::TableNextRow();
		ImGui::TableNextColumn();

			ImGui::TextUnformatted("Section:");
			ImGui::TableNextColumn();
			ImGui::TextUnformatted(section->name.c_str());

		ImGui::TableNextRow();
		ImGui::TableNextColumn();

			ImGui::TextUnformatted("Flags:");
			ImGui::TableNextColumn();
			ImGui::TextUnformatted(flagStr.c_str());

		ImGui::EndTable();
	}
	
	if (data && size > 0) {
		ImGui::SameLine();
		
		ImGui::PushStyleVar(ImGuiStyleVar_WindowPadding, {0,0});

		const float byteHeight = ImGui::CalcTextSize(" ").y*2;
		const size_t maxLineLen = 128;

		ImVec2 winSize = {
			(byteHeight / 8) * (size >= maxLineLen ? maxLineLen : size % maxLineLen),
			byteHeight * std::ceil((float)size / maxLineLen)
		};
		if (winSize.y > 500)
			winSize.y = 500;

		ImGui::BeginChild("Symbol Byte Tex Child", winSize, true);
		ImGui::PushStyleVar(ImGuiStyleVar_ItemSpacing, {0,0});
		for (size_t i = 0; i < size; i++) {
			if(i%maxLineLen != 0)
				ImGui::SameLine();
			ByteVisualiser::DrawByte(*(data+value+i), byteHeight/8, byteHeight);
		}
		ImGui::PopStyleVar();
		ImGui::EndChild();

		ImGui::PopStyleVar();
	}
}
uint64_t ABB::utils::SymbolTable::Symbol::addrEnd() const {
	return value + size;
}

ABB::utils::SymbolTable::Symbol::Flags ABB::utils::SymbolTable::generateSymbolFlags(const char* str) {
	Symbol::Flags flags;
	switch (str[0]) {
		case ' ':
			flags.scope = Symbol::Flags_Scope_None; 
			break;
		case 'l':
			flags.scope = Symbol::Flags_Scope_Local; 
			break;
		case 'g':
			flags.scope = Symbol::Flags_Scope_Global; 
			break;
		case 'u':
			flags.scope = Symbol::Flags_Scope_Global | Symbol::Flags_Scope_Unique; 
			break;
		case '!':
			flags.scope = Symbol::Flags_Scope_Global | Symbol::Flags_Scope_Local; 
			break;
		default:
			abort();
	}

	switch (str[1]) {
		case ' ':
			flags.isWeak = false;
			break;
		case 'w':
			flags.isWeak = true;
			break;
		default:
			abort();
	}

	switch (str[2]) {
		case ' ':
			flags.isConstuctor = false;
			break;
		case 'C':
			flags.isConstuctor = true;
			break;
		default:
			abort();
	}

	switch (str[3]) {
		case ' ':
			flags.isWarning = false;
			break;
		case 'W':
			flags.isWarning = true;
			break;
		default:
			abort();
	}

	switch (str[4]) {
		case ' ':
			flags.indirectFlags = Symbol::Flags_Indirect_Normal;
			break;
		case 'I':
			flags.indirectFlags = Symbol::Flags_Indirect_RefrenceToSymbol;
			break;
		case 'i':
			flags.indirectFlags = Symbol::Flags_Indirect_evalWhileReloc;
			break;
		default:
			abort();
	}

	switch (str[5]) {
		case ' ':
			flags.debugDynamicFlags = Symbol::Flags_DebDyn_Normal;
			break;
		case 'd':
			flags.debugDynamicFlags = Symbol::Flags_DebDyn_DebugSymbol;
			break;
		case 'D':
			flags.debugDynamicFlags = Symbol::Flags_DebDyn_DynamicSymbol;
			break;
		default:
			abort();
	}

	switch (str[6]) {
		case ' ':
			flags.funcFileObjectFlags = Symbol::Flags_FuncFileObj_Normal;
			break;
		case 'F':
			flags.funcFileObjectFlags = Symbol::Flags_FuncFileObj_Function;
			break;
		case 'f':
			flags.funcFileObjectFlags = Symbol::Flags_FuncFileObj_File;
			break;
		case 'O':
			flags.funcFileObjectFlags = Symbol::Flags_FuncFileObj_Obj;
			break;
		default:
			abort();
	}

	return flags;
}
ABB::utils::SymbolTable::Symbol::Section* ABB::utils::SymbolTable::generateSymbolSection(const char* str, const char* strEnd, size_t* sectStrLen) {
	if (!strEnd)
		strEnd = str + std::strlen(str);

	size_t sectLen;
	{
		const char* strPtr = str;
		while (*strPtr != '\t' && strPtr != strEnd)
			strPtr++;
		sectLen = strPtr - str;
		if (sectStrLen)
			*sectStrLen = sectLen;
	}
	
	std::string sectStr = std::string(str, str + sectLen);
	if (sections.find(sectStr) == sections.end()) {
		sections[sectStr] = Symbol::Section(sectStr);
	}
	
	return &sections[sectStr];
}

ABB::utils::SymbolTable::SymbolTable() {
	init();
}
void ABB::utils::SymbolTable::init() {
	const char* path = "resources/device/regSymbs.txt";
	bool success = true;
	std::string fileStr = StringUtils::loadFileIntoString(path, &success); // (std::string("Cannot Open device symbol table dump File: ") + path).c_str()
	if (!success) {// loading didnt work
		LogBackend::logf(A32u4::ATmega32u4::LogLevel_Warning, "Cannot Open device symbol table dump file: %s", path);
		return;
	}

	deviceSpecSymbolStorage.clear();
	parseList(&deviceSpecSymbolStorage,fileStr.c_str(),fileStr.size());
	
	for (size_t i = 0; i < deviceSpecSymbolStorage.size(); i++) {
		symbolsRam.push_back(&deviceSpecSymbolStorage[i]);
	}

	for(auto& s : symbolsRam){
		if(s->addrEnd() > maxRamAddrEnd)
			maxRamAddrEnd = s->addrEnd();
	}
}

ABB::utils::SymbolTable::Symbol ABB::utils::SymbolTable::parseLine(const char* start, const char* end) {
	Symbol symbol;
	size_t ptr = 0;
	symbol.value = StringUtils::hexStrToUIntLen<uint64_t>(start, 8) & 0xFFFF;
	ptr += 8 + 1;

	symbol.flags = generateSymbolFlags(start + ptr);
	symbol.flagStr = std::string(start + ptr, 7);
	ptr += 7 + 1;

	size_t sectStrLen;
	symbol.section = generateSymbolSection(start + ptr, end, &sectStrLen);
	ptr += sectStrLen + 1;

	symbol.size = StringUtils::hexStrToUIntLen<uint64_t>(start + ptr, 8);
	ptr += 8 + 1;

	symbol.isHidden = false;
	if (*(start + ptr) == '.') {
		constexpr char hiddenStr[] = ".hidden";
		if ((start + ptr + sizeof(hiddenStr) <= end) && (std::string(start + ptr, start + ptr + sizeof(hiddenStr) - 1) == hiddenStr)) {
			symbol.isHidden = true;
			ptr += sizeof(hiddenStr) - 1 + 1;
		}
	}

	size_t tabPos = StringUtils::findCharInStr('\t', start + ptr, end);
	if (tabPos == (size_t)-1) {
		symbol.name = std::string(start + ptr, end);
		symbol.note = "";
	}
	else {
		symbol.name = std::string(start + ptr, start+ptr+tabPos);
		symbol.note = std::string(start + ptr + tabPos+1, end);
		size_t nlPos;
		while ((nlPos = symbol.note.find("\\n")) != std::string::npos)
			symbol.note.replace(nlPos, 2, "\n");
	}
	symbol.hasDemangledName = symbol.name != symbol.demangled;

	return symbol;
}

void ABB::utils::SymbolTable::parseList(std::vector<Symbol>* vec, const char* str, size_t size) {
	constexpr char startStr[] = "SYMBOL TABLE:";
	const char* startStrOff = std::strstr(str, startStr);

	const size_t strOff = startStrOff != nullptr ? (startStrOff-str) + sizeof(startStr) : 0;

	if (size == (size_t)-1)
		size = std::strlen(str);

	size_t lastLineStart = strOff;
	for (size_t i = strOff; i < size; i++) {
		if (str[i] == '\n') {
			if ((str + i) - (str + lastLineStart) >= (8 + 1 + 7 + 1 + 0 + 1 + 8 + 1))
				vec->push_back(parseLine(str + lastLineStart, str + i));
			lastLineStart = i + 1;
		}
	}
}

void ABB::utils::SymbolTable::setupConnections() {
	for (auto& symbol : symbolStorage) {
		ImVec4 col = {(float)(rand() % 256) / 256.0f, 0.8f, 1, 1};
		ImGui::ColorConvertHSVtoRGB(col.x, col.y, col.z, symbol.col.x, symbol.col.y, symbol.col.z);
		symbol.col.w = col.w;
	}

	std::sort(symbolStorage.begin(), symbolStorage.end());

	{
		const Symbol::Section* bssSection = getSection(".bss");

		const Symbol::Section* textSection = getSection(".text");
		const Symbol::Section* dataSection = getSection(".data");
		for (auto& s : symbolStorage) {
			symbsNameMap[s.name] = &s;

			if (s.section == bssSection || s.section == dataSection)
				symbolsRam.push_back(&s);

			if (s.section == textSection)
				symbolsRom.push_back(&s);
		}

		for(auto& s : symbolsRam){
			if(s->addrEnd() > maxRamAddrEnd)
				maxRamAddrEnd = s->addrEnd();
		}
	}

	if (BinTools::canDemangle() && symbolStorage.size() > 0) {
		size_t num = symbolStorage.size();
		const char** strs = new const char*[num];
		for (size_t i = 0; i < num;i++) {
			strs[i] = symbolStorage[i].name.c_str();
		}
		std::vector<std::string> demList = BinTools::demangleList(strs, num);
		if (demList.size() == symbolStorage.size()) {
			for (size_t i = 0; i < symbolStorage.size();i++) {
				symbolStorage[i].demangled = demList[i];
			}
		}
		else {
			for (size_t i = 0; i < symbolStorage.size();i++) {
				symbolStorage[i].demangled = symbolStorage[i].name;
			}
			LogBackend::log(LogBackend::LogLevel_Warning, "an error occured while trying to generate demangled list");
		}

		delete[] strs; // dont use delete[] bc theres nothing to delete there
	}
}
bool ABB::utils::SymbolTable::loadFromDumpFile(const char* path) {
	bool success = false;
	std::string fileStr = StringUtils::loadFileIntoString(path, &success);
	if (!success) { // loading didnt work
		LogBackend::logf(LogBackend::LogLevel_Error, "Cannot Open symbol table dump File: %s", path);
		return false;
	}

	return loadFromDumpString(fileStr.c_str(), fileStr.size());
}
bool ABB::utils::SymbolTable::loadFromDumpString(const char* str, size_t size) {
	resetAll();
	parseList(&symbolStorage,str,size);

	setupConnections();

	doesHaveSymbols = true;
	return true;
}

bool ABB::utils::SymbolTable::loadFromELF(const ELF::ELFFile& elf) {
	resetAll();

	for (size_t i = 0; i < elf.symbolTableEntrys.size(); i++) {
		auto& symb = elf.symbolTableEntrys[i];
		Symbol symbol;
		symbol.name = elf.stringTableStr + symb.name;
		symbol.value = symb.value & 0xffff; // theres a 8 in the high bits that we need to mask out, idk why its there
		symbol.size = symb.size;
		if (symb.shndx != ELF::ELFFile::SymbolTableEntry::SpecialSectionInd_SHN_UNDEF && symb.shndx < ELF::ELFFile::SymbolTableEntry::SpecialSectionInd_SHN_LORESERVE) {
			symbol.section = generateSymbolSection(elf.shstringTableStr + elf.sectionHeaders[symb.shndx].name);
		}
		else {
			const char* str = "";
			switch (symb.shndx) {
				case ELF::ELFFile::SymbolTableEntry::SpecialSectionInd_SHN_UNDEF:
					str = "UNDEF";
					break;
				case ELF::ELFFile::SymbolTableEntry::SpecialSectionInd_SHN_ABS:
					str = "ABS";
					break;
				case ELF::ELFFile::SymbolTableEntry::SpecialSectionInd_SHN_COMMON:
					str = "COMMON";
					break;
			}
			symbol.section = generateSymbolSection(str);
		}
		

		{
			auto bind = symb.getInfoBinding();
			//                                       LOCAL                      GLOBAL                      WEAK
			constexpr uint8_t infoToBindFlagLUT[] = {Symbol::Flags_Scope_Local, Symbol::Flags_Scope_Global, Symbol::Flags_Scope_Global};
			symbol.flags.scope = bind <= 2 ? infoToBindFlagLUT[bind] : Symbol::Flags_Scope_None;

			symbol.flags.isWeak = bind == ELF::ELFFile::SymbolTableEntry::SymbolInfoBinding_Weak;
		}
		{
			auto type = symb.getInfoType();
			constexpr uint8_t infoToTypeFlagLUT[] = {Symbol::Flags_FuncFileObj_Normal, Symbol::Flags_FuncFileObj_Obj, Symbol::Flags_FuncFileObj_Function, Symbol::Flags_FuncFileObj_File, Symbol::Flags_FuncFileObj_Section};
			symbol.flags.funcFileObjectFlags = type <= 4 ? infoToTypeFlagLUT[type] : Symbol::Flags_FuncFileObj_Normal;
		}

		symbol.flags.debugDynamicFlags = Symbol::Flags_DebDyn_Normal;
		symbol.flags.indirectFlags = Symbol::Flags_Indirect_Normal;

		symbol.flags.isConstuctor = false;
		symbol.flags.isWarning = false;
		
		symbol.isHidden = false; // idk how to read that???
		symbol.flagStr = "";

		symbolStorage.push_back(symbol);
	}

	setupConnections();

	doesHaveSymbols = true;

	return true;
}

void ABB::utils::SymbolTable::resetAll() {
	deviceSpecSymbolStorage.clear();

	symbolStorage.clear();
	symbsNameMap.clear();
	sections.clear();

	symbolsRam.clear();
	symbolsRamExp.clear();
	symbolsRom.clear();

	maxRamAddrEnd = 0;

	doesHaveSymbols = false;
}


bool ABB::utils::SymbolTable::hasSymbols() const {
	return doesHaveSymbols;
}

const ABB::utils::SymbolTable::Symbol::Section* ABB::utils::SymbolTable::getSection(const std::string& name) const {
	return &sections.at(name);
}

const ABB::utils::SymbolTable::Symbol* ABB::utils::SymbolTable::getSymbolByName(const std::string& name) const {
	if (symbsNameMap.find(name) == symbsNameMap.end())
		return nullptr;

	return symbsNameMap.at(name);
}

const ABB::utils::SymbolTable::Symbol* ABB::utils::SymbolTable::getSymbolByValue(const symb_size_t value, SymbolListPtr list) {
	if (list->size() == 0)
		return nullptr;

	size_t from = 0;
	size_t to = list->size() - 1;
	while (from != to) {
		size_t mid = from + (to - from) / 2;
		symb_size_t val = (*list)[mid]->value;
		if (val == value) {
			return (*list)[mid];
		}
		else {
			if (val > value) {
				if (to == mid)
					break;
				to = mid;
			}
			else {
				if (from == mid)
					break;
				from = mid;
			}
				
		}
	}
	const Symbol* s = (*list)[from];
	if (value >= s->value && value <= s->value + s->size)
		return s;
	return nullptr;
}

const std::vector<ABB::utils::SymbolTable::Symbol>& ABB::utils::SymbolTable::getSymbols() const {
	return symbolStorage;
}

ABB::utils::SymbolTable::SymbolListPtr ABB::utils::SymbolTable::getSymbolsRam() const {
	return (SymbolTable::SymbolListPtr)&symbolsRam;
}
ABB::utils::SymbolTable::SymbolListPtr ABB::utils::SymbolTable::getSymbolsRamExp() const {
	return (SymbolTable::SymbolListPtr)&symbolsRamExp;
}
ABB::utils::SymbolTable::SymbolListPtr ABB::utils::SymbolTable::getSymbolsRom() const {
	return (SymbolTable::SymbolListPtr)&symbolsRom;
}

ABB::utils::SymbolTable::symb_size_t ABB::utils::SymbolTable::getMaxRamAddrEnd() const {
	return maxRamAddrEnd;
}

const ABB::utils::SymbolTable::Symbol* ABB::utils::SymbolTable::drawAddrWithSymbol(symb_size_t Addr, SymbolListPtr list) const {
	constexpr size_t AddrDigits = 4;
	char texBuf[AddrDigits];

	StringUtils::uIntToHexBuf(Addr, AddrDigits, texBuf);

	ImGui::BeginGroup();
	ImGui::TextUnformatted(texBuf, texBuf+AddrDigits);

	const utils::SymbolTable::Symbol* symbol = getSymbolByValue(Addr, list);
	if (symbol) {
		ImGui::SameLine();
		ImGuiExt::TextColored(symbol->col, symbol->demangled.c_str());
	}

	ImGui::EndGroup();

	return symbol;
}

void ABB::utils::SymbolTable::drawSymbolListSizeDiagramm(SymbolListPtr list, symb_size_t totalSize, float* scale, const uint8_t* data, ImVec2 size) {
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

	symb_size_t lastSymbEnd = 0;
	for (size_t i = 0; i < list->size(); i++) {
		const Symbol* symbol = list->operator[](i);
		if (symbol->size == 0)
			continue;

		if (symbol->value > lastSymbEnd) {
			//ImGui::SetCursorPosX(ImGui::GetCursorPosX() + (((float)(symbol->value - lastSymbEnd) / listByteLen)) * size.x * (*scale));
			if (i != 0)
				ImGui::SameLine();

			symb_size_t fillAmt = symbol->value - lastSymbEnd;
			ImGuiExt::Rect(ImGuiID(symbol->value * i), {0,0,0,0}, { (((float)fillAmt / listByteLen)) * size.x * (*scale), size.y });
			if (ImGui::IsItemHovered()) {
				ImGui::PopStyleVar();
				ImGui::PopStyleVar();

				ImGui::SetTooltip("Space Without Symbol: %" PRIu32 " bytes (%f%%)", fillAmt, ((float)fillAmt / listByteLen)*100);

				ImGui::PushStyleVar(ImGuiStyleVar_WindowPadding, { 0,0 });
				ImGui::PushStyleVar(ImGuiStyleVar_ItemSpacing, { 0,0 });
			}
		}
			
		if (i != 0 || symbol->value > lastSymbEnd)
			ImGui::SameLine();
		float width = ((float)symbol->size / listByteLen) * size.x * (*scale);
		ImGuiExt::Rect((ImGuiID)(symbol->value * i), symbol->col, {width, size.y});

		if (ImGui::IsItemHovered()) {
			ImGui::PopStyleVar();
			ImGui::PopStyleVar();

			ImGui::BeginTooltip();
			symbol->draw(-1, data);
			ImGui::EndTooltip();

			ImGui::PushStyleVar(ImGuiStyleVar_WindowPadding, { 0,0 });
			ImGui::PushStyleVar(ImGuiStyleVar_ItemSpacing, { 0,0 });
		}

		lastSymbEnd = symbol->addrEnd();
	}

	if (lastSymbEnd < totalSize) {
		symb_size_t fillAmt = totalSize - lastSymbEnd;
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

/*

if (startStrOff == nullptr) {
//LogBackend::log(LogBackend::LogLevel_Warning, "could not read symbol table dump since it doesnt contain \"SYMBOL TABLE:\"");
//return false;
}

*/