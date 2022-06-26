#include "elfReader.h"


uint64_t utils::ElfReader::intFromByteArr(const uint8_t* data, uint8_t byteLen, bool lsb) {
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

utils::ElfReader::ELFFile::ELFHeader::Ident utils::ElfReader::parseELFHeaderIdentification(const uint8_t* data) {
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

utils::ElfReader::ELFFile::ELFHeader utils::ElfReader::parseELFHeader(const uint8_t* data, size_t dataLen, size_t* size) {
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
	if (headerLenRem < dataLen) {
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

utils::ElfReader::ELFFile utils::ElfReader::parseELFFile(const uint8_t* data, size_t dataLen) {
	ELFFile file;
	const uint8_t* ptr = data;

	size_t headerSize = 0;
	file.header = parseELFHeader(ptr, dataLen, &headerSize);
	ptr += headerSize;

	for (size_t i = 0; i < file.header.phnum; i++) {
		size_t off = file.header.phoff + i * file.header.phentsize;

	}

	return file;
}