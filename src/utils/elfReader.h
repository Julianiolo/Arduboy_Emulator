#ifndef __UTILS_ELFREADER_H__
#define __UTILS_ELFREADER_H__

#include <stdint.h>
#include <vector>
#include <string>

namespace ABB {
	namespace utils {
		class ELF {
		public:
			struct ELFFile {
				typedef uint16_t HalfWord;
				typedef uint32_t Word;

				// these would both be a uint32_t on 32bit files, but here 64bit is always chosen for compatibility
				typedef uint64_t Address;
				typedef uint64_t Offset;

				struct ELFHeader {
					struct Ident {
						static constexpr size_t byteSize = 16;
						uint8_t magic[4];
						enum {
							ClassType_None = 0,
							ClassType_32Bit = 1,
							ClassType_64Bit = 2
						};
						uint8_t classtype;
						enum {
							DataEncoding_None = 0,
							DataEncoding_LSB = 1, // lsb first
							DataEncoding_MSB = 2  // msb first
						};
						uint8_t dataEncoding;
						uint8_t version;
						enum {
							OSABI_None = 0,
							OSABI_HP_UX = 1,
							OSABI_NetBSD = 2,
							OSABI_Linux = 3
						};
						uint8_t OSABI; // OS ABI
						uint8_t ABIVersion;
					} ident;

					enum {
						Type_ET_NONE = 0,
						Type_ET_REL = 1,
						Type_ET_EXEC = 2,
						Type_ET_DYN = 3,
						Type_ET_CORE = 4
					};
					HalfWord type;
					enum {
						Machine_NONE = 0,
						Machine_x86 = 0x03,
						Machine_MIPS = 0x08,
						Machine_ARM = 0x28,
						Machine_amd64 = 0x3e,
						Machine_ARMv8 = 0xb7,
						Machine_RISC_V = 0xF3
					};
					HalfWord machine;
					Word version;       // always 1
					Address entry;      // entypoint
					Offset phoff;       // program header table offset (Segments)
					Offset shoff;       // section header table offset
					Word flags;
					HalfWord ehsize;    // elf header size
					HalfWord phentsize; // program header table entry byte size
					HalfWord phnum;     // program header table entry num
					HalfWord shentsize; // section header table entry byte size
					HalfWord shnum;     // section header table entry num
					HalfWord shstrndx;  // section header string table index
				};

				struct ProgramHeader {
					enum {
						Type_PT_NULL = 0,    // => Disabled
						Type_PT_LOAD = 1,    // load into memory
						Type_PT_DYNAMIC = 2, // load shared librarys
						Type_PT_INTERP = 3,  // specifies interpreter (content is a path str)
						Type_PT_NOTE = 4,    // auxiliary information
						Type_PT_SHLIB = 5,   // undefined => illegal
						Type_PT_PHDR = 6,    // where to load Program Header into memory
						Type_PT_TLS = 7      // Thread Local Storage
					};
					Word type;
					Offset offset; // offset to content
					Address vaddr; // where to load into memory
					Address paddr; // physical address
					Word filesz;   // size of segment in the file (if 0, there is no further info)
					Word memsz;    // size of segment in memory
					enum {
						Flags_PF_X = 1, // Execute
						Flags_PF_W = 2, // Write
						Flags_PF_R = 4  // Read
					};
					Word flags;    // permissions
					Word align;    // alignment requirements
				};
				struct SectionHeader {
					Word name;      // offset into string table
					enum {
						Type_SHT_NULL = 0,     // disabled
						Type_SHT_PROGBITS = 1, // data for the program
						Type_SHT_SYMTAB = 2,   // symbol table
						Type_SHT_STRTAB = 3,   // string table
						Type_SHT_RELA = 4,     // relocation
						Type_SHT_HASH = 5,     // hash table
						Type_SHT_DYNAMIC = 6,  // info for dynamic linking
						Type_SHT_NOTE = 7,     // auxiliary information
						Type_SHT_NOBITS = 8,   // doesnt takup space in file but specifies room for uninitialised vars, etc.
						Type_SHT_REL = 9,      // relocation
						Type_SHT_SHLIB = 10,   // unused
						Type_SHT_DYNSYM = 11   // symbol table for dynamic
					};
					Word type;
					enum {
						Flags_SHF_Write = 1,    // should be writable
						Flags_SHF_ALLOC = 2,    // should be loaded into memory
						Flags_SHF_EXECINSTR = 4 // contains executable instructions
					};
					Word flags;
					Address addr;   // where section will appear in program
					Offset offset;  // offset to section contents
					Word size;      // size of section contents
					Word link;      // link info
					Word info;      // extra information depending on section type
					Word addralign; // address align requirements
					Word entsize;   // for sections with fixed size entrys contains size for said entrys
				};

				struct SymbolTableEntry {
					Word name;
					Address value;
					Word size;
					uint8_t info;
					uint8_t other;
					enum {
						SpecialSectionInd_SHN_UNDEF = 0,
						SpecialSectionInd_SHN_LORESERVE = 0xff00,
						// LOPROC-HIPROC
						SpecialSectionInd_SHN_ABS = 0xfff1,
						SpecialSectionInd_SHN_COMMON = 0xfff2,
						SpecialSectionInd_SHN_HIRESERVE = 0xffff
					};
					HalfWord shndx;

					enum {
						SymbolInfoBinding_Local  = 0,
						SymbolInfoBinding_Global = 1,
						SymbolInfoBinding_Weak   = 2
					};
					uint8_t getInfoBinding() const;
					enum {
						SymbolInfoType_NOTYPE  = 0,
						SymbolInfoType_OBJECT  = 1,
						SymbolInfoType_FUNC    = 2,
						SymbolInfoType_SECTION = 3,
						SymbolInfoType_FILE    = 4,
					};
					uint8_t getInfoType() const;
				};

				std::vector<uint8_t> data;
				size_t dataLen;

				ELFHeader header;
				std::vector<ProgramHeader> programHeaders;
				std::vector<std::pair<size_t,size_t>> segmentContents;
				std::vector<SectionHeader> sectionHeaders;
				std::vector<std::pair<size_t,size_t>> sectionContents;

				std::vector<SymbolTableEntry> symbolTableEntrys;
				const char* stringTableStr;
				const char* shstringTableStr;

				size_t getIndOfSectionWithName(const char* name);
			};


		private:
			static uint64_t intFromByteArr(const uint8_t* data, uint8_t byteLen, bool lsb = false);

			static ELFFile::ELFHeader::Ident parseELFHeaderIdentification(const uint8_t* data);
			static ELFFile::ELFHeader parseELFHeader(const uint8_t* data, size_t dataLen, size_t* size);
			static ELFFile::ProgramHeader parseELFProgramHeader(const uint8_t* data, size_t dataLen, size_t off, const ELFFile::ELFHeader::Ident& ident);
			static ELFFile::SectionHeader parseELFSectionHeader(const uint8_t* data, size_t dataLen, size_t off, const ELFFile::ELFHeader::Ident& ident);
			static ELFFile::SymbolTableEntry parseELFSymbol(const uint8_t* data, size_t dataLen, size_t off, const ELFFile::ELFHeader::Ident& ident);
		public:

			static ELFFile parseELFFile(const uint8_t* data, size_t dataLen);
		};
	}
}


#endif