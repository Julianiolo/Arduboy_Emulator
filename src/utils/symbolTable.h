#ifndef _ABB_SYMBOLTABLE
#define _ABB_SYMBOLTABLE

#include <string>

namespace ABB {
	namespace utils {
		class SymbolTable {
		public:
			typedef uint8_t Section;
			enum Section_ {
				Section_data,
				Section_text,
				Section_bss,
				Section_ABS
			};
		private:
			

			struct Symbol {
				std::string name;
				std::string demangled;
				uint16_t addr;
				uint16_t size;
				Section section;
			};
		public:
			void loadFromDump(const char* path);
		};
	}
}

#endif