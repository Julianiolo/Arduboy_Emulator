#include "mcu.h"

#include "Arduboy.h"
#include "extras/Disassembler.h"

#include "imgui.h"

#include "DataUtils.h"

#define ARDUBOY ((Arduboy*)data)

ABB::MCU::MCU() : data(new Arduboy()) {
	ARDUBOY->mcu.debugger.debugOutputMode = A32u4::Debugger::OutputMode_Passthrough;
	setDebugMode(true);
}
ABB::MCU::MCU(const MCU& src) : data(new Arduboy(*((Arduboy*)src.data))) {
	ARDUBOY->mcu.debugger.debugOutputMode = A32u4::Debugger::OutputMode_Passthrough;
	setDebugMode(true);
}
ABB::MCU::~MCU() {
	delete ARDUBOY;
}

ABB::MCU& ABB::MCU::operator=(const MCU& other){
	(*ARDUBOY) = *((Arduboy*)other.data);
	return *this;
}

void ABB::MCU::reset() {
	ARDUBOY->reset();
}
void ABB::MCU::powerOn() {
	ARDUBOY->mcu.powerOn();
}

uint64_t ABB::MCU::clockFreq() {
	return A32u4::CPU::ClockFreq;
}
uint64_t ABB::MCU::cycsPerFrame() const {
	return ARDUBOY->cycsPerFrame();
}

void ABB::MCU::execute(uint64_t amt){
	ARDUBOY->mcu.execute(amt, ARDUBOY->debug);
}

void ABB::MCU::newFrame() {
	ARDUBOY->newFrame();
}

bool ABB::MCU::getDebugMode() const {
	return ARDUBOY->debug;
}
void ABB::MCU::setDebugMode(bool on) {
	ARDUBOY->debug = on;
}
float ABB::MCU::getEmuSpeed() const {
	return ARDUBOY->emulationSpeed;
}
void ABB::MCU::setEmuSpeed(float v) {
	ARDUBOY->emulationSpeed = v;
}
void ABB::MCU::setButtons(bool up, bool down, bool left, bool right, bool a, bool b) {
	ARDUBOY->buttonState = 0;

	ARDUBOY->buttonState |= up << Arduboy::Button_Up_Bit;
	ARDUBOY->buttonState |= right << Arduboy::Button_Right_Bit;
	ARDUBOY->buttonState |= down << Arduboy::Button_Down_Bit;  //IsKeyDown(KEY_DOWN)
	ARDUBOY->buttonState |= left << Arduboy::Button_Left_Bit;  //IsKeyDown(KEY_LEFT) 
	ARDUBOY->buttonState |= a << Arduboy::Button_A_Bit;     //IsKeyDown(KEY_A)    
	ARDUBOY->buttonState |= b << Arduboy::Button_B_Bit;     //IsKeyDown(KEY_B)   
}


Color ABB::MCU::display_getPixel(size_t x, size_t y) const {
	return ARDUBOY->display.getPixel((uint8_t)x, (uint8_t)y) ? WHITE : BLACK;
}

void ABB::MCU::setLogCallB(LogUtils::LogCallB callB, void* userData) {
	ARDUBOY->mcu.setLogCallB(callB, userData);
}


uint64_t ABB::MCU::totalCycles() const {
	return ARDUBOY->mcu.cpu.getTotalCycles();
}
ABB::MCU::pc_t ABB::MCU::getPC() const {
	return ARDUBOY->mcu.cpu.getPC();
}
ABB::MCU::addrmcu_t ABB::MCU::getPCAddr() const {
	return ARDUBOY->mcu.cpu.getPCAddr();
}

std::vector<uint8_t> ABB::MCU::genSoundWave(uint32_t samplesPerSec){
	uint64_t start = ARDUBOY->sound.bufferStart;
	uint64_t end = ARDUBOY->mcu.cpu.getTotalCycles();
	const double dur = ((end-start)/(double)A32u4::CPU::ClockFreq)*ARDUBOY->emulationSpeed;
	uint32_t numSamples = (uint32_t)std::round(dur*samplesPerSec);

	const auto getInd = [&](uint64_t offset) { return (size_t)std::round((offset/(double)A32u4::CPU::ClockFreq)*samplesPerSec/ARDUBOY->emulationSpeed); };

	std::vector<uint8_t> res(numSamples, 0x7F);
	if (res.size() == 0) return res;

	//printf("A\n");
	const auto& buffer = ARDUBOY->sound.buffer;
	size_t last = 0;
	for (size_t i = 0; i < buffer.size(); i++) {
		const auto& sample = buffer[i];
		size_t from = getInd(sample.offset);
		size_t to = i+1<buffer.size() ? getInd(buffer[i+1].offset) : res.size()-1;
		from = std::min(from, res.size()-1);
		to = std::min(to, res.size()-1);
		if (i > 0 && from == last) from++;
		if (from > to) from = to;
		if (from == to && to+1 < res.size()) to++;
		//printf("[%u] %llu-%llu(%llu) [%llu]\n",(int)sample.on, from, to, (to - from), ((i + 1<buffer.size() ? buffer[i + 1].offset : (end - start)) - sample.offset));
		uint8_t val = sample.on ? (sample.isLoud ? 0xFF:0) : 0x7F;
		std::memset(&res[from], val, to-from);
		last = from;
	}
	ARDUBOY->sound.clearBuffer(ARDUBOY->mcu.cpu.getTotalCycles());
	return res;
}


size_t ABB::MCU::getRegNum() {
	return A32u4::DataSpace::Consts::GPRs_size;
}
std::pair<const char*, ABB::MCU::reg_t> ABB::MCU::getReg(size_t ind) const {
	constexpr const char* names[] = {
		 "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", 
		 "R8", "R9","R10","R11","R12","R13","R14","R15",
		"R16","R17","R18","R19","R20","R21","R22","R23",
		"R24","R25","R26","R27","R28","R29","R30","R31"
	};

	return {names[ind], ARDUBOY->mcu.dataspace.getGPReg((regind_t)ind)};
}

const char* ABB::MCU::getInstName(size_t ind) {
	return A32u4::InstHandler::instList[ind].name;
}

const uint8_t* ABB::MCU::dataspace_getData() {
	return ARDUBOY->mcu.dataspace.getData();
}
size_t ABB::MCU::dataspace_dataSize() {
	return A32u4::DataSpace::Consts::data_size;
}


bool ABB::MCU::flash_loadFromMemory(const uint8_t* data_, size_t dataLen) {
	return ARDUBOY->mcu.flash.loadFromMemory(data_, dataLen);
}
const uint8_t* ABB::MCU::flash_getData() {
	return ARDUBOY->mcu.flash.getData();
}
size_t ABB::MCU::flash_size() const {
	return ARDUBOY->mcu.flash.size();
}
bool ABB::MCU::flash_isProgramLoaded() const {
	return ARDUBOY->mcu.flash.isProgramLoaded();
}
size_t ABB::MCU::programSize() const {
	return ARDUBOY->mcu.flash.sizeWords();
}

ABB::MCU::pc_t ABB::MCU::disassembler_getJumpDests(uint16_t word, uint16_t word2, pc_t pc) {
	return A32u4::Disassembler::getJumpDests(word, word2, pc);
}
std::string ABB::MCU::disassembler_disassembleRaw(uint16_t word, uint16_t word2) {
	return A32u4::Disassembler::disassembleRaw(word, word2);
}
std::string ABB::MCU::disassembler_disassembleProg(
	const std::vector<std::pair<uint32_t, std::string>>* srcLines,
	const std::vector<std::pair<uint32_t, std::string>>* funcSymbs,
	const std::vector<std::tuple<std::string, uint32_t, uint32_t>>* dataSymbs,
	const std::vector<uint32_t>* additionalDisasmSeeds
) const {
	A32u4::Disassembler::AdditionalDisasmInfo info;
	info.analytics = &ARDUBOY->mcu.analytics;

	info.srcLines = srcLines;

	info.funcSymbs = funcSymbs;
	info.dataSymbs = dataSymbs;

	info.additionalDisasmSeeds = additionalDisasmSeeds;

	return A32u4::Disassembler::disassembleBinFile(ARDUBOY->mcu.flash, info);
}


uint8_t ABB::MCU::debugger_getBreakpoint(sizemcu_t ind) const {
	return ARDUBOY->mcu.debugger.getBreakpoints()[ind];
}
void ABB::MCU::debugger_setBreakpoint(sizemcu_t ind) {
	ARDUBOY->mcu.debugger.setBreakpoint(ind);
}
void ABB::MCU::debugger_clearBreakpoint(sizemcu_t ind) {
	ARDUBOY->mcu.debugger.clearBreakpoint(ind);
}
void ABB::MCU::debugger_clearAllBreakpoints() {
	ARDUBOY->mcu.debugger.clearAllBreakpoints();
}
std::set<pc_t> ABB::MCU::debugger_getBreakpointList() const {
	return ARDUBOY->mcu.debugger.getBreakpointList();
}
bool ABB::MCU::debugger_isHalted() const {
	return ARDUBOY->mcu.debugger.isHalted();
}
void ABB::MCU::debugger_halt() {
	ARDUBOY->mcu.debugger.halt();
}
void ABB::MCU::debugger_step() {
	ARDUBOY->mcu.debugger.step();
}
void ABB::MCU::debugger_continue() {
	ARDUBOY->mcu.debugger.continue_();
}

size_t ABB::MCU::getStackPtr() const {
	return ARDUBOY->mcu.debugger.getCallStackPointer();
}
pc_t ABB::MCU::getStackTo(size_t ind) const {
	return ARDUBOY->mcu.debugger.getStackPCAt((uint8_t)ind);
}
pc_t ABB::MCU::getStackFrom(size_t ind) const {
	return ARDUBOY->mcu.debugger.getStackFromPCAt((uint8_t)ind);
}

sizemcu_t ABB::MCU::analytics_getMaxSP() const {
	return ARDUBOY->mcu.analytics.maxSP;
}
void ABB::MCU::analytics_resetMaxSP() {
	ARDUBOY->mcu.analytics.maxSP = 0xFFFF;
}
uint64_t ABB::MCU::analytics_getSleepSum() const {
	return ARDUBOY->mcu.analytics.sleepSum;
}
void ABB::MCU::analytics_setSleepSum(uint64_t val) {
	ARDUBOY->mcu.analytics.sleepSum = val;
}
void ABB::MCU::analytics_resetPCHeat() {
	ARDUBOY->mcu.analytics.resetPCCnt();
}
uint64_t ABB::MCU::analytics_getPCHeat(pc_t pc) const {
	return ARDUBOY->mcu.analytics.getPCCntRaw()[pc];
}
uint64_t ABB::MCU::analytics_getInstHeat(size_t ind) const {
	return ARDUBOY->mcu.analytics.getInstHeat()[ind];
}

ABB::MCU::ParamInfo ABB::MCU::getParamInfo(const char* start, const char* end, const char* instStart, const char* instEnd, uint32_t pcAddr) const {
	size_t len = end - start;

	switch (start[0]) {
		case 'R':
		case 'r': {
			regind_t ind = StringUtils::numBaseStrToUIntT<10, regind_t>(start + 1, end);
			return {ParamType_Register, ARDUBOY->mcu.dataspace.getGPReg(ind)};
		}

		case 'X':
		case 'Y':
		case 'Z':
		{
			bool isRam = false;
			uint16_t regVal = -1;
			switch (start[0]) {
				case 'X':
					regVal = ARDUBOY->mcu.dataspace.getX();
					isRam = true;
					break;
				case 'Y':
					regVal = ARDUBOY->mcu.dataspace.getY();
					isRam = true;
					break;
				case 'Z':
					regVal = ARDUBOY->mcu.dataspace.getZ();
					isRam = true;
					break;
			}

			return {(uint8_t)(isRam ? ParamType_RamAddrRegister : ParamType_RomAddrRegister), regVal};
		}

		case '0': {
			if(len > 1 && start[1] == 'x'){
				size_t literalLen = len - 2;
				uint32_t val = StringUtils::hexStrToUIntLen<decltype(val)>(start + 2, literalLen);

				bool isIO = StringUtils::strcasecmp(instStart, "out", instEnd) == 0 || StringUtils::strcasecmp(instStart, "in", instEnd) == 0;
				if (isIO) {
					val += A32u4::DataSpace::Consts::io_start;
					return { ParamType_RamAddr, val };
				}
				else {
					{
						constexpr const char* ramAddrInstList[] = { "lds", "sts"};
						bool isRamAddr = false;
						for (size_t i = 0; i < DU_ARRAYSIZE(ramAddrInstList); i++) {
							if (StringUtils::strcasecmp(instStart, ramAddrInstList[i], instEnd) == 0) {
								isRamAddr = true;
								break;
							}
						}

						if(isRamAddr)
							return { ParamType_RamAddr, val };
					}
					{
						constexpr const char* romAddrInstList[] = { "jmp" };
						bool isRomAddr = false;
						for (size_t i = 0; i < DU_ARRAYSIZE(romAddrInstList); i++) {
							if (StringUtils::strcasecmp(instStart, romAddrInstList[i], instEnd) == 0) {
								isRomAddr = true;
								break;
							}
						}

						if (isRomAddr)
							return {ParamType_RomAddr, val};
					}

					return { ParamType_Literal, val };
				}
			}
		} break;

		case '.': {
			int32_t rawVal = std::stoi(std::string(start+1,end));
			uint32_t val = rawVal + pcAddr;

			return {ParamType_RomAddr, val};
		}

		default:
		{
			if (start[0] >= '0' && start[1] <= '9') {
				uint32_t val = StringUtils::numBaseStrToUIntT<10, uint32_t>(start, end);
				return { ParamType_Literal, val };
			}
		}
	}

	return { ParamType_None, 0 };
}
void ABB::MCU::draw_stateInfo() const {
	uint8_t sreg_val = ARDUBOY->mcu.dataspace.getDataByte(A32u4::DataSpace::Consts::SREG);
	constexpr const char* bitNames[] = {"I","T","H","S","V","N","Z","C"};
	ImGui::TextUnformatted("SREG");
	if (ImGui::BeginTable("SREG_TABLE", 8, ImGuiTableFlags_NoHostExtendX | ImGuiTableFlags_SizingFixedFit)) {
		ImGui::TableNextRow();
		for(int i = 0; i<8;i++){
			ImGui::TableNextColumn();
			ImGui::TextUnformatted(bitNames[i]);
		}
		ImGui::TableNextRow();
		for(int i = 7; i>=0;i--){
			ImGui::TableNextColumn();
			ImGui::TextUnformatted((sreg_val & (1<<i)) ? "1" : "0");
		}
	}
	ImGui::EndTable();
}
/*
dataspaceDataHex(abb->mcu.dataspace_getData(), abb->mcu.dataspace_dataSize(), &abb->mcu, utils::HexViewer::DataType_Ram),
dataspaceEEPROMHex(abb->ab.mcu.dataspace.getEEPROM(), A32u4::DataSpace::Consts::eeprom_size, nullptr, utils::HexViewer::DataType_Eeprom),
flashHex(abb->ab.mcu.flash.getData(), A32u4::Flash::sizeMax, &abb->ab.mcu, utils::HexViewer::DataType_Rom),
*/

size_t ABB::MCU::numHexViewers() const {
	return 3;
}
ABB::MCU::Hex ABB::MCU::getHexViewer(size_t ind) const {
	DU_ASSERT(ind < 3);

	switch (ind) {
		case 0: return Hex{"Dataspace", ARDUBOY->mcu.dataspace.getData(),   A32u4::DataSpace::Consts::data_size,   Hex::Type_Ram,
			[=](addrmcu_t addr, uint8_t val) {
				DU_ASSERT(addr < A32u4::DataSpace::Consts::data_size);
				ARDUBOY->mcu.dataspace.setDataByte(addr, val);
			},
			[=](const uint8_t* data_, size_t len) {
				ARDUBOY->mcu.dataspace.loadDataFromMemory(data_, len);
			},
			ARDUBOY->mcu.analytics.getRamRead(), ARDUBOY->mcu.analytics.getRamWrite(),
			[=]() {
				ARDUBOY->mcu.analytics.clearRamRead();
				ARDUBOY->mcu.analytics.clearRamWrite();
			}
		};
		case 1: return Hex{"Eeprom",    ARDUBOY->mcu.dataspace.getEEPROM(), A32u4::DataSpace::Consts::eeprom_size, Hex::Type_None, 
			[=](addrmcu_t addr, uint8_t val) {
				DU_ASSERT(addr < A32u4::DataSpace::Consts::eeprom_size);
				ARDUBOY->mcu.dataspace.getEEPROM()[addr] = val;
			},
			[=](const uint8_t* data_, size_t len) {
				std::memcpy(ARDUBOY->mcu.dataspace.getEEPROM(), data_, std::min(len, (size_t)A32u4::DataSpace::Consts::eeprom_size));
			}
		};
		case 2: return Hex{"Flash",     ARDUBOY->mcu.flash.getData(),       A32u4::Flash::sizeMax,                 Hex::Type_Rom,
			[=](addrmcu_t addr, uint8_t val) {
				DU_ASSERT(addr < A32u4::Flash::sizeMax);
				ARDUBOY->mcu.flash.setByte(addr, val);
			},
			[=](const uint8_t* data_, size_t len) {
				ARDUBOY->mcu.flash.loadFromMemory(data_, len);
			}
		};
	}
	abort();
}

void ABB::MCU::getState(std::ostream& output) const {
	ARDUBOY->getState(output);
}
void ABB::MCU::setState(std::istream& input) {
	ARDUBOY->setState(input);
}

size_t ABB::MCU::sizeBytes() const {
	return ARDUBOY->sizeBytes();
}

