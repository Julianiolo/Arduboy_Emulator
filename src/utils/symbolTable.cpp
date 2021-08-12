#include "symbolTable.h"

#include <algorithm>

#include "stringUtils.h"
#include "imgui.h"

ABB::utils::SymbolTable::Symbol::Section::Section() {

}
ABB::utils::SymbolTable::Symbol::Section::Section(const std::string& name) : name(name) {

}

bool ABB::utils::SymbolTable::Symbol::operator<(const Symbol& rhs) const {
	return this->value < rhs.value;
}
void ABB::utils::SymbolTable::Symbol::draw() const {
	if (hasDemangledName) {
		ImGui::TextColored(col, demangled.c_str());
		ImGui::SameLine();
		ImGui::TextUnformatted(": ");
		ImGui::SameLine();
	}
	ImGui::TextColored(col, name.c_str());

	ImGui::Text("Value: %4x", value);
	ImGui::Text("Size: %d", size);
	ImGui::Text("Section: %s", section->name.c_str());
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
	if (sections.count(sectStr) == 0) {
		sections[sectStr] = Symbol::Section(sectStr);
	}
	
	return &sections[sectStr];
}
std::string ABB::utils::SymbolTable::demangleName(const char* name) {
	return std::string(name);
}


void ABB::utils::SymbolTable::parseLine(const char* start, const char* end) {
	if (end - start < (8 + 1 + 7 + 1 + 0 + 1 + 8 + 1))
		return;

	Symbol symbol;
	size_t ptr = 0;
	symbol.value = StringUtils::hexToUInt(start, start + 8) & 0xFFFF;
	ptr += 8 + 1;

	symbol.flags = generateSymbolFlags(start + ptr);
	ptr += 7 + 1;

	size_t sectStrLen;
	symbol.section = generateSymbolSection(start + ptr, end, &sectStrLen);
	ptr += sectStrLen + 1;

	symbol.size = StringUtils::hexToUInt(start + ptr, start + ptr + 8);
	ptr += 8 + 1;

	symbol.isHidden = false;
	if (*(start + ptr) == '.') {
		constexpr char hiddenStr[] = ".hidden";
		if ((start + ptr + sizeof(hiddenStr) <= end) && (std::string(start + ptr, start + ptr + sizeof(hiddenStr) - 1) == hiddenStr)) {
			symbol.isHidden = true;
			ptr += sizeof(hiddenStr)-1 + 1;
		}
	}
	symbol.name = std::string(start + ptr, end);
	symbol.demangled = demangleName(symbol.name.c_str());
	symbol.hasDemangledName = symbol.name != symbol.demangled;

	symbol.col = {(rand()%255)/(float)255,(rand()%255)/(float)255,(rand()%255)/(float)255,1};

	symbolStorage.push_back(symbol);
}

void ABB::utils::SymbolTable::loadFromDump(const char* path) {
	std::string fileStr = StringUtils::loadFileIntoString(path, (std::string("Cannot Open Source File: ") + path).c_str());
	if (fileStr.size() == 0) // loading didnt work
		return;

	constexpr char startStr[] = "SYMBOL TABLE:";
	const size_t strOff = fileStr.find(startStr) + sizeof(startStr);

	const char* str = fileStr.c_str();
	size_t lastLineStart = strOff;
	for (size_t i = strOff; i < fileStr.size(); i++) {
		if (str[i] == '\n') {
			parseLine(str + lastLineStart, str + i);
			lastLineStart = i + 1;
		}
	}

	std::sort(symbolStorage.begin(), symbolStorage.end());

	{
		const Symbol::Section* bssSection = getSection(".bss");

		const Symbol::Section* textSection = getSection(".text");
		const Symbol::Section* dataSection = getSection(".data");
		for (auto& s : symbolStorage) {
			symbsNameMap[s.name] = &s;

			if (s.section == bssSection)
				symbolsRam.push_back(&s);

			if (s.section == textSection || s.section == dataSection)
				symbolsRom.push_back(&s);
		}
	}
}

const ABB::utils::SymbolTable::Symbol::Section* ABB::utils::SymbolTable::getSection(const std::string& name) const {
	return &sections.at(name);
}

const ABB::utils::SymbolTable::Symbol* ABB::utils::SymbolTable::getSymbolByName(const std::string& name) const {
	if (symbsNameMap.find(name) == symbsNameMap.end())
		return nullptr;

	return symbsNameMap.at(name);
}

const ABB::utils::SymbolTable::Symbol* ABB::utils::SymbolTable::getSymbolByValue(const size_t value) const {
	size_t from = 0;
	size_t to = symbolStorage.size() - 1;
	while (from != to) {
		size_t mid = from + (to - from) / 2;
		size_t val = symbolStorage[mid].value;
		if (val == value) {
			return &symbolStorage[mid];
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
	const Symbol& s = symbolStorage[from];
	if (value >= s.value && value <= s.value + s.size)
		return &s;
	return nullptr;
}

const std::vector<ABB::utils::SymbolTable::Symbol>& ABB::utils::SymbolTable::getSymbols() const {
	return symbolStorage;
}

ABB::utils::SymbolTable::SymbolListPtr ABB::utils::SymbolTable::getSymbolsRam() const {
	return (SymbolTable::SymbolListPtr)&symbolsRam;
}
ABB::utils::SymbolTable::SymbolListPtr ABB::utils::SymbolTable::getSymbolsRom() const {
	return (SymbolTable::SymbolListPtr)&symbolsRom;
}

const ABB::utils::SymbolTable::Symbol* ABB::utils::SymbolTable::drawAddrWithSymbol(size_t Addr) const {
	constexpr size_t AddrDigits = 4;
	char texBuf[AddrDigits];

	StringUtils::uIntToHex(Addr, AddrDigits, texBuf);

	ImGui::BeginGroup();
	ImGui::TextUnformatted(texBuf, texBuf+AddrDigits);

	const utils::SymbolTable::Symbol* symbol = getSymbolByValue(Addr);
	if (symbol) {
		ImGui::SameLine();
		ImGui::TextColored(symbol->col, symbol->demangled.c_str());
	}

	ImGui::EndGroup();

	return symbol;
}