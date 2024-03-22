#include "ArduboyConsole.h"

#include "extras/Disassembler.h"

#include "imgui.h"

std::unique_ptr<ABB::Console> genEmu_ARDUBOY() {
	return std::make_unique<ABB::ArduboyConsole>();
}


ABB::ArduboyConsole::ArduboyConsole() : Console(actual_consts) {
	ab.mcu.debugger.debugOutputMode = A32u4::Debugger::OutputMode_Passthrough;
}

ABB::ArduboyConsole::~ArduboyConsole() {

}

std::unique_ptr<ABB::Console> ABB::ArduboyConsole::clone() const {
	std::unique_ptr<ABB::ArduboyConsole> ptr = std::make_unique<ABB::ArduboyConsole>();
	ptr->ab = ab;
	return ptr;
}

void ABB::ArduboyConsole::assign(const Console* other) {
	const ArduboyConsole* ptr = dynamic_cast<const ArduboyConsole*>(other);
	DU_ASSERT(ptr);
	ab = ptr->ab;
}


void ABB::ArduboyConsole::reset() {
	ab.reset();
}
void ABB::ArduboyConsole::powerOn() {
	ab.mcu.powerOn();
}

uint64_t ABB::ArduboyConsole::cycsPerFrame() const {
	return ab.cycsPerFrame();
}

void ABB::ArduboyConsole::execute(uint64_t amt){
	ab.mcu.execute(amt, ab.debug);
}

void ABB::ArduboyConsole::newFrame() {
	ab.newFrame();
}

bool ABB::ArduboyConsole::getDebugMode() const {
	return ab.debug;
}
void ABB::ArduboyConsole::setDebugMode(bool on) {
	ab.debug = on;
}
float ABB::ArduboyConsole::getEmuSpeed() const {
	return ab.emulationSpeed;
}
void ABB::ArduboyConsole::setEmuSpeed(float v) {
	ab.emulationSpeed = v;
}
void ABB::ArduboyConsole::setButtons(bool up, bool down, bool left, bool right, bool a, bool b) {
	ab.buttonState = 0;

	ab.buttonState |= up << Arduboy::Button_Up_Bit;
	ab.buttonState |= right << Arduboy::Button_Right_Bit;
	ab.buttonState |= down << Arduboy::Button_Down_Bit;  //IsKeyDown(KEY_DOWN)
	ab.buttonState |= left << Arduboy::Button_Left_Bit;  //IsKeyDown(KEY_LEFT) 
	ab.buttonState |= a << Arduboy::Button_A_Bit;     //IsKeyDown(KEY_A)    
	ab.buttonState |= b << Arduboy::Button_B_Bit;     //IsKeyDown(KEY_B)   
}

Color ABB::ArduboyConsole::display_getPixel(size_t x, size_t y) const {
	return ab.display.getPixel((uint8_t)x, (uint8_t)y) ? WHITE : BLACK;
}

void ABB::ArduboyConsole::setLogCallB(LogUtils::LogCallB callB, void* userData) {
	ab.mcu.setLogCallB(callB, userData);
}


uint64_t ABB::ArduboyConsole::totalCycles() const {
	return ab.mcu.cpu.getTotalCycles();
}
ABB::Console::pc_t ABB::ArduboyConsole::getPC() const {
	return ab.mcu.cpu.getPC();
}
ABB::Console::addrmcu_t ABB::ArduboyConsole::getPCAddr() const {
	return ab.mcu.cpu.getPCAddr();
}

std::vector<int8_t> ABB::ArduboyConsole::genSoundWave(uint32_t samplesPerSec){
	uint64_t start = ab.sound.bufferStart;
	uint64_t end = ab.mcu.cpu.getTotalCycles();
	const double dur = ((end-start)/(double)A32u4::CPU::ClockFreq)*ab.emulationSpeed;
	uint32_t numSamples = (uint32_t)std::round(dur*samplesPerSec);

	const auto getInd = [&](uint64_t offset) { return (size_t)std::round((offset/(double)A32u4::CPU::ClockFreq)*samplesPerSec/ab.emulationSpeed); };

	std::vector<int8_t> res(numSamples, 0);
	if (res.size() == 0) return res;

	//printf("A\n");
	const auto& buffer = ab.sound.buffer;
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
		int8_t val = sample.on ? (sample.isLoud ? -128:127) : 0;
		std::memset(&res[from], val, to-from);
		last = from;
	}
	ab.sound.clearBuffer(ab.mcu.cpu.getTotalCycles());
	return res;
}


std::pair<const char*, ABB::Console::reg_t> ABB::ArduboyConsole::getReg(size_t ind) const {
	constexpr const char* names[] = {
		"R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", 
		"R8", "R9","R10","R11","R12","R13","R14","R15",
		"R16","R17","R18","R19","R20","R21","R22","R23",
		"R24","R25","R26","R27","R28","R29","R30","R31"
	};

	return {names[ind], ab.mcu.dataspace.getGPReg((regind_t)ind)};
}

const char* ABB::ArduboyConsole::getInstName(size_t ind) {
	return A32u4::InstHandler::instList[ind].name;
}

const uint8_t* ABB::ArduboyConsole::dataspace_getData() {
	return ab.mcu.dataspace.getData();
}

bool ABB::ArduboyConsole::flash_loadFromMemory(const uint8_t* data_, size_t dataLen) {
	return ab.mcu.flash.loadFromMemory(data_, dataLen);
}
const uint8_t* ABB::ArduboyConsole::flash_getData() {
	return ab.mcu.flash.getData();
}
size_t ABB::ArduboyConsole::flash_size() const {
	return ab.mcu.flash.size();
}
bool ABB::ArduboyConsole::flash_isProgramLoaded() const {
	return ab.mcu.flash.isProgramLoaded();
}
size_t ABB::ArduboyConsole::programSize() const {
	return ab.mcu.flash.sizeWords();
}


ABB::Console::pc_t ABB::ArduboyConsole::disassembler_getJumpDests(uint16_t word, uint16_t word2, pc_t pc) {
	return A32u4::Disassembler::getJumpDests(word, word2, pc);
}
std::string ABB::ArduboyConsole::disassembler_disassembleRaw(uint16_t word, uint16_t word2) {
	return A32u4::Disassembler::disassembleRaw(word, word2);
}
std::string ABB::ArduboyConsole::disassembler_disassembleProg(
	const std::vector<std::pair<uint32_t, std::string>>* srcLines,
	const std::vector<std::pair<uint32_t, std::string>>* funcSymbs,
	const std::vector<std::tuple<std::string, uint32_t, uint32_t>>* dataSymbs,
	const std::vector<uint32_t>* additionalDisasmSeeds
) const {
	A32u4::Disassembler::AdditionalDisasmInfo info;
	info.analytics = &ab.mcu.analytics;

	info.srcLines = srcLines;

	info.funcSymbs = funcSymbs;
	info.dataSymbs = dataSymbs;

	info.additionalDisasmSeeds = additionalDisasmSeeds;

	return A32u4::Disassembler::disassembleBinFile(ab.mcu.flash, info);
}

uint8_t ABB::ArduboyConsole::debugger_getBreakpoint(pc_t ind) const {
	return ab.mcu.debugger.getBreakpoints()[ind];
}
void ABB::ArduboyConsole::debugger_setBreakpoint(pc_t ind) {
	ab.mcu.debugger.setBreakpoint(ind);
}
void ABB::ArduboyConsole::debugger_clearBreakpoint(pc_t ind) {
	ab.mcu.debugger.clearBreakpoint(ind);
}
void ABB::ArduboyConsole::debugger_clearAllBreakpoints() {
	ab.mcu.debugger.clearAllBreakpoints();
}
std::unordered_set<pc_t> ABB::ArduboyConsole::debugger_getBreakpointList() const {
	return ab.mcu.debugger.getBreakpointList();
}
bool ABB::ArduboyConsole::debugger_isHalted() const {
	return ab.mcu.debugger.isHalted();
}
void ABB::ArduboyConsole::debugger_halt() {
	ab.mcu.debugger.halt();
}
void ABB::ArduboyConsole::debugger_step() {
	ab.mcu.debugger.step();
}
void ABB::ArduboyConsole::debugger_continue() {
	ab.mcu.debugger.continue_();
}

size_t ABB::ArduboyConsole::getStackPtr() const {
	return ab.mcu.debugger.getCallStackPointer();
}
pc_t ABB::ArduboyConsole::getStackTo(size_t ind) const {
	return ab.mcu.debugger.getStackPCAt((uint8_t)ind);
}
pc_t ABB::ArduboyConsole::getStackFrom(size_t ind) const {
	return ab.mcu.debugger.getStackFromPCAt((uint8_t)ind);
}

sizemcu_t ABB::ArduboyConsole::analytics_getMaxSP() const {
	return ab.mcu.analytics.maxSP;
}
void ABB::ArduboyConsole::analytics_resetMaxSP() {
	ab.mcu.analytics.maxSP = 0xFFFF;
}
uint64_t ABB::ArduboyConsole::analytics_getSleepSum() const {
	return ab.mcu.analytics.sleepSum;
}
void ABB::ArduboyConsole::analytics_setSleepSum(uint64_t val) {
	ab.mcu.analytics.sleepSum = val;
}
void ABB::ArduboyConsole::analytics_resetPCHeat() {
	ab.mcu.analytics.resetPCCnt();
}
uint64_t ABB::ArduboyConsole::analytics_getPCHeat(pc_t pc) const {
	return ab.mcu.analytics.getPCCntRaw()[pc];
}
uint64_t ABB::ArduboyConsole::analytics_getInstHeat(size_t ind) const {
	return ab.mcu.analytics.getInstHeat()[ind];
}

ABB::Console::ParamInfo ABB::ArduboyConsole::getParamInfo(const char* start, const char* end, const char* instStart, const char* instEnd, uint32_t pcAddr) const {
	size_t len = end - start;

	switch (start[0]) {
		case 'R':
		case 'r': {
			regind_t ind = StringUtils::numBaseStrToUIntT<10, regind_t>(start + 1, end);
			return {ParamType_Register, ab.mcu.dataspace.getGPReg(ind)};
		}

		case 'X':
		case 'Y':
		case 'Z':
		{
			bool isRam = false;
			uint16_t regVal = -1;
			switch (start[0]) {
				case 'X':
					regVal = ab.mcu.dataspace.getX();
					isRam = true;
					break;
				case 'Y':
					regVal = ab.mcu.dataspace.getY();
					isRam = true;
					break;
				case 'Z':
					regVal = ab.mcu.dataspace.getZ();
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
void ABB::ArduboyConsole::draw_stateInfo() {
	uint8_t sreg_val = ab.mcu.dataspace.getDataByte(A32u4::DataSpace::Consts::SREG);
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

size_t ABB::ArduboyConsole::numHexViewers() const {
	return 3;
}
ABB::Console::Hex ABB::ArduboyConsole::getHexViewer(size_t ind) {
	DU_ASSERT(ind < 3);

	switch (ind) {
		case 0: return Hex{"Dataspace", ab.mcu.dataspace.getData(),   A32u4::DataSpace::Consts::data_size,   Hex::Type_Ram,
			[=](addrmcu_t addr, uint8_t val) {
			DU_ASSERT(addr < A32u4::DataSpace::Consts::data_size);
			ab.mcu.dataspace.setDataByte(addr, val);
		},
			[=](const uint8_t* data_, size_t len) {
			ab.mcu.dataspace.loadDataFromMemory(data_, len);
		},
			ab.mcu.analytics.getRamRead(), ab.mcu.analytics.getRamWrite(),
			[=]() {
			ab.mcu.analytics.clearRamRead();
			ab.mcu.analytics.clearRamWrite();
		}
		};
		case 1: return Hex{"Eeprom",    ab.mcu.dataspace.getEEPROM(), A32u4::DataSpace::Consts::eeprom_size, Hex::Type_None, 
			[=](addrmcu_t addr, uint8_t val) {
			DU_ASSERT(addr < A32u4::DataSpace::Consts::eeprom_size);
			ab.mcu.dataspace.getEEPROM()[addr] = val;
		},
			[=](const uint8_t* data_, size_t len) {
			std::memcpy(ab.mcu.dataspace.getEEPROM(), data_, std::min(len, (size_t)A32u4::DataSpace::Consts::eeprom_size));
		}
		};
		case 2: return Hex{"Flash",     ab.mcu.flash.getData(),       A32u4::Flash::sizeMax,                 Hex::Type_Rom,
			[=](addrmcu_t addr, uint8_t val) {
			DU_ASSERT(addr < A32u4::Flash::sizeMax);
			ab.mcu.flash.setByte(addr, val);
		},
			[=](const uint8_t* data_, size_t len) {
			ab.mcu.flash.loadFromMemory(data_, len);
		}
		};
	}
	abort();
}

void ABB::ArduboyConsole::getState(std::ostream& output) {
	ab.getState(output);
}
void ABB::ArduboyConsole::setState(std::istream& input) {
	ab.setState(input);
}

size_t ABB::ArduboyConsole::sizeBytes() const {
	return ab.sizeBytes();
}