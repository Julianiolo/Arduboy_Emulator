#include "elfReader.h"

#include <cstring>

uint8_t ABB::utils::ELF::ELFFile::SymbolTableEntry::getInfoBinding() const {
	return info >> 4;
}
uint8_t ABB::utils::ELF::ELFFile::SymbolTableEntry::getInfoType() const {
	return info & 0xf;
}


ABB::utils::ELF::ELFFile::DWARF::_debug_line::CU::Header ABB::utils::ELF::ELFFile::DWARF::_debug_line::parseCUHeader(const uint8_t* data, size_t dataLen, const ELFHeader::Ident& ident) {
	CU::Header header;
	const uint8_t* ptr = data;

	bool lsb = ident.dataEncoding == ELFFile::ELFHeader::Ident::DataEncoding_LSB;

	header.length                 = (uint32_t)intFromByteArrAdv(&ptr, 4, lsb);
	header.version                = (uint16_t)intFromByteArrAdv(&ptr, 2, lsb);
	header.header_length          = (uint32_t)intFromByteArrAdv(&ptr, 4, lsb);
	header.min_instruction_length = *ptr++;
	header.default_is_stmt        = *ptr++;
	header.line_base              = *ptr++;
	header.line_range             = *ptr++;
	header.opcode_base            = *ptr++;
	std::memcpy(header.std_opcode_lengths, ptr, 9);

	return header;
}

ABB::utils::ELF::ELFFile::DWARF::_debug_line ABB::utils::ELF::ELFFile::DWARF::parse_debug_line(const uint8_t* data, size_t dataLen, const ELFHeader::Ident& ident) {
	_debug_line lines;
	lines.couldFind = true;

	bool lsb = ident.dataEncoding == ELFFile::ELFHeader::Ident::DataEncoding_LSB;

	size_t off = 0;

	while (off < dataLen) {
		size_t begin = off;
		_debug_line::CU cu;
		cu.header = _debug_line::parseCUHeader(data + off, dataLen - off, ident);
		off += _debug_line::CU::Header::byteSize + 1;
		size_t end = begin + cu.header.length + 4;
		size_t prologueEnd = begin + cu.header.header_length + 9;

		if (cu.header.version != 2 || cu.header.opcode_base != 10) { // not valid dwarf2 
			off = end;
			continue;
		}

		cu.dirs.clear();
		while (off < prologueEnd && data[off]) {
			std::string s((const char*)data + off);
			off += s.size() + 1;
			cu.dirs.push_back(s);
		}
		off++;

		cu.files.clear();
		while (off < prologueEnd && data[off]) {
			_debug_line::CU::File file;
			file.name = std::string((const char*)data + off);
			off += file.name.size() + 1;

			file.dir = data[off++];
			file.time = data[off++];
			file.size = data[off++];

			cu.files.push_back(file);
		}
		off++;

		cu.section = {prologueEnd+1, end-off};

		{
			uint64_t address = 0;
			uint64_t base_address = 0;
			uint64_t fileno = 0, lineno = 1;
			uint64_t prev_fileno = 0, prev_lineno = 1;
			std::string define_file = "";
			uint64_t min_address = -1, max_address = 0;

			const uint32_t const_pc_add = 245 / cu.header.line_range;

			while (off < end) {
				uint8_t opcode = data[off++];
				if (opcode < cu.header.opcode_base) {
					switch (opcode) {
						case DW_LNS_extended_op: 
						{
							uint64_t insn_len = _debug_line::getUleb128(data, &off);
							opcode = data[off++];
							switch (opcode) {
								case DW_LNE_end_sequence:
									if (min_address != (size_t)-1 && max_address != 0) {
										_debug_line::CU::Entry e;
										e.from = min_address;
										e.to = max_address;
										cu.entrys.push_back(e);

										min_address = -1;
										max_address = 0;
									}

									prev_lineno = lineno = 0;
									prev_fileno = fileno = 0;
									base_address = address = 0;
									break;
								case DW_LNE_set_address:
									base_address = intFromByteArr(data + off, 4, lsb);
									address = base_address;
									off += 4;
									break;

								case DW_LNE_define_file:
									define_file = std::string((const char*)data + off);
									off += define_file.size() + 1;
									_debug_line::getUleb128(data, &off);
									_debug_line::getUleb128(data, &off);
									_debug_line::getUleb128(data, &off);
									break;
								default:
									off += insn_len;
									break;
							}
							break; //???
						}

						case DW_LNS_copy:
						{
							_debug_line::CU::Entry e;
							e.from = base_address;
							e.to = address;
							cu.entrys.push_back(e);

							prev_fileno = fileno;
							prev_lineno = lineno;
							break;
						}
							

						case DW_LNS_advance_pc:
						{
							uint64_t amt = _debug_line::getUleb128(data, &off);
							address += amt * cu.header.min_instruction_length;
							if (min_address > address)
								min_address = address;
							if (max_address < address)
								max_address = address;
							break;
						}
							

						case DW_LNS_advance_line:
						{
							int64_t amt = _debug_line::getSleb128(data, &off);
							prev_lineno = lineno;
							lineno += amt;
							break;
						}

						case DW_LNS_set_file:
							prev_fileno = fileno;
							fileno = _debug_line::getUleb128(data, &off) - 1;
							break;

						case DW_LNS_set_column:
							_debug_line::getUleb128(data, &off);
							break;

						case DW_LNS_negate_stmt:
							break;

						case DW_LNS_set_basic_block:
							break;

						case DW_LNS_const_add_pc:
							address += const_pc_add;
							if (min_address > address)
								min_address = address;
							if (max_address < 0)
								max_address = address;
							break;

						case DW_LNS_fixed_advance_pc:
						{
							uint16_t amt = intFromByteArr(data + off, 2, lsb);
							off += 2;
							address += amt;
							break;
						}
					}
					
				}
				else {
					int adj = (opcode & 0xFF) - cu.header.opcode_base;
					int addr_adv = adj / cu.header.line_range;
					int line_adv = cu.header.line_base + (adj % cu.header.line_range);
					uint64_t new_addr = address + addr_adv;
					int new_line = lineno + line_adv;

					_debug_line::CU::Entry e;
					e.from = base_address;
					e.to = new_addr;
					cu.entrys.push_back(e);

					prev_lineno = lineno;
					prev_fileno = fileno;
					lineno = new_line;
					address = new_addr;
					if (min_address > address)
						min_address = address;
					if (max_address < address)
						max_address = address;
				}
			}

			if (min_address != (uint64_t)-1 && max_address != 0) {
				_debug_line::CU::Entry e;
				e.from = min_address;
				e.to = max_address;
				cu.entrys.push_back(e);
			}
		}
		

		off = end;

		lines.cus.push_back(cu);
	}

	return lines;
}

uint64_t ABB::utils::ELF::ELFFile::DWARF::_debug_line::getUleb128(const uint8_t* data, size_t* off) {
	uint64_t val = 0;
	uint8_t shift = 0;

	while (true) {
		uint8_t b = data[(*off)++];
		val |= (uint64_t)(b & 0x7f) << shift;
		if ((b & 0x80) == 0)
			break;
		shift += 7;
	}

	return val;
}
int64_t ABB::utils::ELF::ELFFile::DWARF::_debug_line::getSleb128(const uint8_t* data, size_t* off) {
	int64_t val = 0;
	uint8_t shift = 0;
	uint32_t size = 8 << 3;

	uint8_t b;
	while (true) {
		b = data[(*off)++];
		val |= (b & 0x7f) << shift;
		shift += 7;
		if ((b & 0x80) == 0)
			break;
	}

	if (shift < size && (b & 0x40) != 0)
		val |= -(1 << shift);

	return val;
}

ABB::utils::ELF::ELFFile::DWARF ABB::utils::ELF::parseDWARF(const ELFFile& elf) {
	ELFFile::DWARF dwarf;
	size_t debug_line_ind = -1;
	for (size_t i = 0; i < elf.sectionHeaders.size(); i++) {
		if (std::strcmp(elf.shstringTableStr + elf.sectionHeaders[i].name, ".debug_line") == 0) {
			debug_line_ind = i;
			break;
		}
	}

	if (debug_line_ind != (size_t)-1) {
		dwarf.debug_line = ELFFile::DWARF::parse_debug_line(&elf.data[0] + elf.sectionContents[debug_line_ind].first, elf.sectionContents[debug_line_ind].second, elf.header.ident);
	}

	return dwarf;
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
uint64_t ABB::utils::ELF::intFromByteArrAdv(const uint8_t** data, uint8_t byteLen, bool lsb) {
	uint64_t res = intFromByteArr(*data, byteLen, lsb);
	(*data) += byteLen;
	return res;
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

	header.type      = (ELFFile::HalfWord) intFromByteArrAdv(&ptr, 2, lsb);
	header.machine   = (ELFFile::HalfWord) intFromByteArrAdv(&ptr, 2, lsb);

	header.version   = (ELFFile::Word)     intFromByteArrAdv(&ptr, 4, lsb);

	header.entry     = (ELFFile::Word)     intFromByteArrAdv(&ptr, addrSize, lsb);
	header.phoff     = (ELFFile::Word)     intFromByteArrAdv(&ptr, addrSize, lsb);
	header.shoff     = (ELFFile::Word)     intFromByteArrAdv(&ptr, addrSize, lsb);

	header.flags     = (ELFFile::Word)     intFromByteArrAdv(&ptr, 4, lsb);

	header.ehsize    = (ELFFile::HalfWord) intFromByteArrAdv(&ptr, 2, lsb);
	header.phentsize = (ELFFile::HalfWord) intFromByteArrAdv(&ptr, 2, lsb);
	header.phnum     = (ELFFile::HalfWord) intFromByteArrAdv(&ptr, 2, lsb);
	header.shentsize = (ELFFile::HalfWord) intFromByteArrAdv(&ptr, 2, lsb);
	header.shnum     = (ELFFile::HalfWord) intFromByteArrAdv(&ptr, 2, lsb);
	header.shstrndx  = (ELFFile::HalfWord) intFromByteArrAdv(&ptr, 2, lsb);

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

	header.type      = (ELFFile::Word)    intFromByteArrAdv(&ptr, 4, lsb);

	if (is64Bit) {
		header.flags = (ELFFile::Word)    intFromByteArrAdv(&ptr, 4, lsb);
	}

	header.offset    = (ELFFile::Offset)  intFromByteArrAdv(&ptr, addrSize, lsb);

	header.vaddr     = (ELFFile::Address) intFromByteArrAdv(&ptr, addrSize, lsb);
	header.paddr     = (ELFFile::Address) intFromByteArrAdv(&ptr, addrSize, lsb);

	header.filesz    = (ELFFile::Word)    intFromByteArrAdv(&ptr, 4, lsb);
	header.memsz     = (ELFFile::Word)    intFromByteArrAdv(&ptr, 4, lsb);
	if (!is64Bit) {
		header.flags = (ELFFile::Word)    intFromByteArrAdv(&ptr, 4, lsb);
	}
	header.align     = (ELFFile::Word)    intFromByteArrAdv(&ptr, 4, lsb);

	return header;
}

ABB::utils::ELF::ELFFile::SectionHeader ABB::utils::ELF::parseELFSectionHeader(const uint8_t* data, size_t dataLen, size_t off, const ELFFile::ELFHeader::Ident& ident) {
	ELFFile::SectionHeader header;
	const uint8_t* ptr = data + off;

	bool lsb = ident.dataEncoding == ELFFile::ELFHeader::Ident::DataEncoding_LSB;
	bool is64Bit = ident.classtype == ELFFile::ELFHeader::Ident::ClassType_64Bit;
	uint8_t addrSize = is64Bit ? 8 : 4;

	header.name      = (ELFFile::Word)    intFromByteArrAdv(&ptr, 4, lsb);
	header.type      = (ELFFile::Word)    intFromByteArrAdv(&ptr, 4, lsb);
	header.flags     = (ELFFile::Word)    intFromByteArrAdv(&ptr, 4, lsb);

	header.addr      = (ELFFile::Address) intFromByteArrAdv(&ptr, addrSize, lsb);
	header.offset    = (ELFFile::Offset)  intFromByteArrAdv(&ptr, addrSize, lsb);

	header.size      = (ELFFile::Word)    intFromByteArrAdv(&ptr, 4, lsb);
	header.link      = (ELFFile::Word)    intFromByteArrAdv(&ptr, 4, lsb);
	header.info      = (ELFFile::Word)    intFromByteArrAdv(&ptr, 4, lsb);
	header.addralign = (ELFFile::Word)    intFromByteArrAdv(&ptr, 4, lsb);
	header.entsize   = (ELFFile::Word)    intFromByteArrAdv(&ptr, 4, lsb);

	return header;
}

ABB::utils::ELF::ELFFile::SymbolTableEntry ABB::utils::ELF::parseELFSymbol(const uint8_t* data, size_t dataLen, size_t off, const ELFFile::ELFHeader::Ident& ident) {
	ELFFile::SymbolTableEntry symb;
	const uint8_t* ptr = data + off;

	bool lsb = ident.dataEncoding == ELFFile::ELFHeader::Ident::DataEncoding_LSB;
	bool is64Bit = ident.classtype == ELFFile::ELFHeader::Ident::ClassType_64Bit;
	uint8_t addrSize = is64Bit ? 8 : 4;

	symb.name  = (ELFFile::Word)     intFromByteArrAdv(&ptr, 4, lsb);
	symb.value = (ELFFile::Address)  intFromByteArrAdv(&ptr, addrSize, lsb);
	symb.size  = (ELFFile::Word)     intFromByteArrAdv(&ptr, 4, lsb);

	symb.info  = *ptr++;
	symb.other = *ptr++;

	symb.shndx = (ELFFile::HalfWord) intFromByteArrAdv(&ptr, 2, lsb);

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

	file.dwarf = parseDWARF(file);

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