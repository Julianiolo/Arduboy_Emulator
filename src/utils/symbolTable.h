#ifndef _ABB_SYMBOLTABLE
#define _ABB_SYMBOLTABLE

#include <string>
#include <vector>
#include <map>

#include "imgui.h"

#include "elfReader.h"

namespace ABB {
	namespace utils {
		class SymbolTable {
		public:
			typedef uint64_t symb_size_t;

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
					Flags_FuncFileObj_Obj = 3,
					Flags_FuncFileObj_Section = 4,
				};

				struct Section {
					std::string name;
					Section();
					Section(const std::string& name);
				};

				symb_size_t value;
				Flags flags;
				std::string flagStr;
				std::string name;
				std::string demangled;
				std::string note;
				bool hasDemangledName;
				symb_size_t size;
				Section* section;

				bool isHidden;

				ImVec4 col;

				bool operator<(const Symbol& rhs) const;
				void draw(symb_size_t addr = -1, const uint8_t* data = nullptr) const;
				symb_size_t addrEnd() const;
			};

			typedef std::vector<const Symbol*>* SymbolListPtr;
			
		private:
			std::vector<Symbol> deviceSpecSymbolStorage;

			std::vector<Symbol> symbolStorage;
			std::map<std::string, const Symbol*> symbsNameMap;
			std::map<std::string, Symbol::Section> sections;

			std::vector<const Symbol*> symbolsRam;
			std::vector<const Symbol*> symbolsRamExp;
			std::vector<const Symbol*> symbolsRom;

			symb_size_t maxRamAddrEnd = 0;

			bool doesHaveSymbols = false;

			Symbol::Flags generateSymbolFlags(const char* str);
			Symbol::Section* generateSymbolSection(const char* str, const char* strEnd = 0, size_t* sectStrLen = nullptr);
			Symbol parseLine(const char* start, const char* end);
			void parseList(std::vector<Symbol>* vec,const char* str, size_t size = -1);

			void setupConnections(); 
			void genColors(std::vector<Symbol>* vec);
			float distSqCols(ImVec4 a, ImVec4 b);

			void resetAll();
		public:

			SymbolTable();
			void init();

			bool hasSymbols() const;

			bool loadFromDumpFile(const char* path);
			bool loadFromDumpString(const char* str, size_t size = -1);
			bool loadFromELF(const ELF::ELFFile& elf);

			const Symbol::Section* getSection(const std::string& name) const;
			const Symbol* getSymbolByName(const std::string& name) const;
			static const Symbol* getSymbolByValue(const symb_size_t value, SymbolListPtr list);

			const std::vector<Symbol>& getSymbols() const;
			SymbolListPtr getSymbolsRam() const;
			SymbolListPtr getSymbolsRamExp() const;
			SymbolListPtr getSymbolsRom() const;

			symb_size_t getMaxRamAddrEnd() const;

			const Symbol* drawAddrWithSymbol(symb_size_t Addr, SymbolListPtr list) const;
			static void drawSymbolListSizeDiagramm(SymbolListPtr list, symb_size_t totalSize, float* scale, const uint8_t* data = nullptr, ImVec2 size = {0,0});
		};
	}
}

#endif