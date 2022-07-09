#include "elfReader.h"

#include <cstring>

uint8_t ABB::utils::ELF::ELFFile::SymbolTableEntry::getInfoBinding() const {
	return info >> 4;
}
uint8_t ABB::utils::ELF::ELFFile::SymbolTableEntry::getInfoType() const {
	return info & 0xf;
}


uint64_t ABB::utils::ELF::intFromByteArr(const uint8_t* data, uint8_t byteLen, bool lsb) {
	uint64_t out = 0;
	if (!lsb) {
		for (size_t i = 0; i < byteLen; i++) {
			out <<= 8;
			out |= data[i];
		}
	}
	else {
		for (size_t i = 0; i < byteLen; i++) {
			out <<= 8;
			out |= data[byteLen - 1 - i];
		}
	}
	return out;
}

ABB::utils::ELF::ELFFile::ELFHeader::Ident ABB::utils::ELF::parseELFHeaderIdentification(const uint8_t* data) {
	ELFFile::ELFHeader::Ident ident;
	const uint8_t* ptr = data;

	for (size_t i = 0; i < 4; i++) {
		ident.magic[i] = *ptr++;
	}
	ident.classtype = *ptr++;
	ident.dataEncoding = *ptr++;
	ident.version = *ptr++;
	ident.OSABI = *ptr++;
	ident.ABIVersion = *ptr++;
	ptr += 7; // padding

	return ident;
}

ABB::utils::ELF::ELFFile::ELFHeader ABB::utils::ELF::parseELFHeader(const uint8_t* data, size_t dataLen, size_t* size) {
	ELFFile::ELFHeader header;
	const uint8_t* ptr = data;

	if (dataLen < ELFFile::ELFHeader::Ident::byteSize) {
		abort();
	}

	header.ident = parseELFHeaderIdentification(ptr);
	ptr += ELFFile::ELFHeader::Ident::byteSize;


	bool is64Bit = header.ident.classtype == ELFFile::ELFHeader::Ident::ClassType_64Bit;
	uint8_t addrSize = is64Bit ? 8 : 4;
	size_t headerLenRem = 2 + 2 + 4 + addrSize + addrSize + addrSize + 4 + 2 + 2 + 2 + 2 + 2 + 2;
	if (dataLen < headerLenRem) {
		abort();
	}
	bool lsb = header.ident.dataEncoding == ELFFile::ELFHeader::Ident::DataEncoding_LSB;

	header.type = intFromByteArr(ptr, 2, lsb);
	ptr += 2;
	header.machine = intFromByteArr(ptr, 2, lsb);
	ptr += 2;

	header.version = intFromByteArr(ptr, 4, lsb);
	ptr += 4;

	header.entry = intFromByteArr(ptr, addrSize, lsb);
	ptr += addrSize;
	header.phoff = intFromByteArr(ptr, addrSize, lsb);
	ptr += addrSize;
	header.shoff = intFromByteArr(ptr, addrSize, lsb);
	ptr += addrSize;

	header.flags = intFromByteArr(ptr, 4, lsb);
	ptr += 4;

	header.ehsize = intFromByteArr(ptr, 2, lsb);
	ptr += 2;
	header.phentsize = intFromByteArr(ptr, 2, lsb);
	ptr += 2;
	header.phnum = intFromByteArr(ptr, 2, lsb);
	ptr += 2;
	header.shentsize = intFromByteArr(ptr, 2, lsb);
	ptr += 2;
	header.shnum = intFromByteArr(ptr, 2, lsb);
	ptr += 2;
	header.shstrndx = intFromByteArr(ptr, 2, lsb);
	ptr += 2;

	if (size)
		*size = ptr - data;

	return header;
}


ABB::utils::ELF::ELFFile::ProgramHeader ABB::utils::ELF::parseELFProgramHeader(const uint8_t* data, size_t dataLen, size_t off, const ELFFile::ELFHeader::Ident& ident) {
	ELFFile::ProgramHeader header;
	const uint8_t* ptr = data + off;

	bool lsb = ident.dataEncoding == ELFFile::ELFHeader::Ident::DataEncoding_LSB;
	bool is64Bit = ident.classtype == ELFFile::ELFHeader::Ident::ClassType_64Bit;
	uint8_t addrSize = is64Bit ? 8 : 4;

	header.type = intFromByteArr(ptr, 4, lsb);
	ptr += 4;

	if (is64Bit) {
		header.flags = intFromByteArr(ptr, 4, lsb);
		ptr += 4;
	}

	header.offset = intFromByteArr(ptr, addrSize, lsb);
	ptr += addrSize;

	header.vaddr = intFromByteArr(ptr, addrSize, lsb);
	ptr += addrSize;

	header.paddr = intFromByteArr(ptr, addrSize, lsb);
	ptr += addrSize;

	header.filesz = intFromByteArr(ptr, 4, lsb);
	ptr += 4;
	header.memsz = intFromByteArr(ptr, 4, lsb);
	ptr += 4;
	if (!is64Bit) {
		header.flags = intFromByteArr(ptr, 4, lsb);
		ptr += 4;
	}
	header.align = intFromByteArr(ptr, 4, lsb);
	ptr += 4;

	return header;
}

ABB::utils::ELF::ELFFile::SectionHeader ABB::utils::ELF::parseELFSectionHeader(const uint8_t* data, size_t dataLen, size_t off, const ELFFile::ELFHeader::Ident& ident) {
	ELFFile::SectionHeader header;
	const uint8_t* ptr = data + off;

	bool lsb = ident.dataEncoding == ELFFile::ELFHeader::Ident::DataEncoding_LSB;
	bool is64Bit = ident.classtype == ELFFile::ELFHeader::Ident::ClassType_64Bit;
	uint8_t addrSize = is64Bit ? 8 : 4;

	header.name = intFromByteArr(ptr, 4, lsb);
	ptr += 4;

	header.type = intFromByteArr(ptr, 4, lsb);
	ptr += 4;

	header.flags = intFromByteArr(ptr, 4, lsb);
	ptr += 4;

	header.addr = intFromByteArr(ptr, addrSize, lsb);
	ptr += addrSize;

	header.offset = intFromByteArr(ptr, addrSize, lsb);
	ptr += addrSize;

	header.size = intFromByteArr(ptr, 4, lsb);
	ptr += 4;
	header.link = intFromByteArr(ptr, 4, lsb);
	ptr += 4;
	header.info = intFromByteArr(ptr, 4, lsb);
	ptr += 4;
	header.addralign = intFromByteArr(ptr, 4, lsb);
	ptr += 4;
	header.entsize = intFromByteArr(ptr, 4, lsb);
	ptr += 4;

	return header;
}

ABB::utils::ELF::ELFFile::SymbolTableEntry ABB::utils::ELF::parseELFSymbol(const uint8_t* data, size_t dataLen, size_t off, const ELFFile::ELFHeader::Ident& ident) {
	ELFFile::SymbolTableEntry symb;
	const uint8_t* ptr = data + off;

	bool lsb = ident.dataEncoding == ELFFile::ELFHeader::Ident::DataEncoding_LSB;
	bool is64Bit = ident.classtype == ELFFile::ELFHeader::Ident::ClassType_64Bit;
	uint8_t addrSize = is64Bit ? 8 : 4;

	symb.name = intFromByteArr(ptr, 4, lsb);
	ptr += 4;

	symb.value = intFromByteArr(ptr, addrSize, lsb);
	ptr += addrSize;

	symb.size = intFromByteArr(ptr, 4, lsb);
	ptr += 4;

	symb.info = *ptr++;
	symb.other = *ptr++;

	symb.shndx = intFromByteArr(ptr, 2, lsb);
	ptr += 2;

	return symb;
}

ABB::utils::ELF::ELFFile ABB::utils::ELF::parseELFFile(const uint8_t* data, size_t dataLen) {
	ELFFile file;
	file.data.resize(dataLen);
	memcpy(&file.data[0], data, dataLen);
	const uint8_t* ptr = data;

	size_t headerSize = 0;
	file.header = parseELFHeader(ptr, dataLen, &headerSize);
	ptr += headerSize;

	for (size_t i = 0; i < file.header.phnum; i++) {
		size_t off = file.header.phoff + i * file.header.phentsize;

		ELFFile::ProgramHeader ph = parseELFProgramHeader(data, dataLen, off, file.header.ident);


		file.segmentContents.push_back({ph.offset, ph.filesz});
		file.programHeaders.push_back(ph);
	}

	for (size_t i = 0; i < file.header.shnum; i++) {
		size_t off = file.header.shoff + i * file.header.shentsize;
		
		ELFFile::SectionHeader sh = parseELFSectionHeader(data, dataLen, off, file.header.ident);

		if (sh.type == ELFFile::SectionHeader::Type_SHT_SYMTAB) {
			size_t numEntrys = sh.size / sh.entsize;
			for (size_t i = 0; i < numEntrys; i++) {
				size_t off = sh.offset + i * sh.entsize;
				ELFFile::SymbolTableEntry symb = parseELFSymbol(data, dataLen, off, file.header.ident);
				file.symbolTableEntrys.push_back(symb);
			}
		}
		else if (sh.type == ELFFile::SectionHeader::Type_SHT_STRTAB) {
			if(i == file.header.shstrndx)
				file.shstringTableStr = (const char*)&file.data[0] + sh.offset;
			else
				file.stringTableStr = (const char*)&file.data[0] + sh.offset;
		}

		file.sectionContents.push_back({sh.offset, sh.size});
		file.sectionHeaders.push_back(sh);
	}

	return file;
}

size_t ABB::utils::ELF::ELFFile::getIndOfSectionWithName(const char* name) {
	for (size_t i = 0; i < sectionHeaders.size(); i++) {
		if (strcmp(shstringTableStr + sectionHeaders[i].name, name) == 0) {
			return i;
		}
	}
	return -1;
}