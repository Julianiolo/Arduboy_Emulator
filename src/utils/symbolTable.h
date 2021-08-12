#ifndef _ABB_SYMBOLTABLE
#define _ABB_SYMBOLTABLE

#include <string>
#include <vector>
#include <map>

#include "imgui.h"

namespace ABB {
	namespace utils {
		class SymbolTable {
		public:
			struct Symbol {
				struct Flags {
					uint8_t scope;
					bool isWeak;
					bool isConstuctor;
					bool isWarning;
					uint8_t indirectFlags;
					uint8_t debugDynamicFlags;
					uint8_t funcFileObjectFlags;
				};
				enum Flags_Scope {
					Flags_Scope_None = 0,
					Flags_Scope_Local = 1<<0,
					Flags_Scope_Global = 1<<1,
					Flags_Scope_Unique = 1<<2
				};
				enum Flags_Indirect {
					Flags_Indirect_Normal = 0,
					Flags_Indirect_RefrenceToSymbol = 1,
					Flags_Indirect_evalWhileReloc = 2
				};
				enum Flags_DebDyn {
					Flags_DebDyn_Normal = 0,
					Flags_DebDyn_DebugSymbol = 1,
					Flags_DebDyn_DynamicSymbol = 2
				};
				enum Flags_FuncFileObj {
					Flags_FuncFileObj_Normal = 0,
					Flags_FuncFileObj_Function = 1,
					Flags_FuncFileObj_File = 2,
					Flags_FuncFileObj_Obj = 3
				};

				struct Section {
					std::string name;
					Section();
					Section(const std::string& name);
				};

				size_t value;
				Flags flags;
				std::string name;
				std::string demangled;
				bool hasDemangledName;
				size_t size;
				Section* section;

				bool isHidden;

				ImVec4 col;

				bool operator<(const Symbol& rhs) const;
				void draw() const;
			};

			typedef std::vector<const Symbol*>* SymbolListPtr;
		private:
			std::vector<Symbol> symbolStorage;
			std::map<std::string, const Symbol*> symbsNameMap;
			std::map<std::string, Symbol::Section> sections;

			std::vector<const Symbol*> symbolsRam;
			std::vector<const Symbol*> symbolsRom;

			Symbol::Flags generateSymbolFlags(const char* str);
			Symbol::Section* generateSymbolSection(const char* str, const char* strEnd, size_t* sectStrLen = nullptr);
			void parseLine(const char* start, const char* end);
			std::string demangleName(const char* name);
		public:
			void loadFromDump(const char* path);

			const Symbol::Section* getSection(const std::string& name) const;
			const Symbol* getSymbolByName(const std::string& name) const;
			const Symbol* getSymbolByValue(const size_t value) const;

			const std::vector<Symbol>& getSymbols() const;
			SymbolTable::SymbolListPtr getSymbolsRam() const;
			SymbolTable::SymbolListPtr getSymbolsRom() const;

			const Symbol* drawAddrWithSymbol(size_t Addr) const;
		};
	}
}

#endif