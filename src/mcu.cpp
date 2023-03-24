#include "mcu.h"

#include "Arduboy.h"
#include "extras/Disassembler.h"

#include "imgui.h"

#include "DataUtils.h"

#define ARDUBOY ((Arduboy*)data.get())

ABB::MCU::MCU() : data(std::make_unique<Arduboy>()) {
	ARDUBOY->mcu.debugger.debugOutputMode = A32u4::Debugger::OutputMode_Passthrough;
	activateLog();
	setDebugMode(true);
}
ABB::MCU::~MCU() {
	
}

void ABB::MCU::reset() {
	ARDUBOY->reset();
}
void ABB::MCU::powerOn() {
	ARDUBOY->mcu.powerOn();
}

uint64_t ABB::MCU::clockFreq() const {
	return A32u4::CPU::ClockFreq;
}
uint64_t ABB::MCU::cycsPerFrame() const {
	return ARDUBOY->cycsPerFrame();
}
void ABB::MCU::newFrame() {
	ARDUBOY->newFrame();
}
bool ABB::MCU::getDebugMode() const {
	return !!(ARDUBOY->execFlags & A32u4::ATmega32u4::ExecFlags_Debug | A32u4::ATmega32u4::ExecFlags_Analyse);
}
void ABB::MCU::setDebugMode(bool on) {
	if (on) {
		ARDUBOY->execFlags |= A32u4::ATmega32u4::ExecFlags_Debug | A32u4::ATmega32u4::ExecFlags_Analyse;
	}
	else {
		ARDUBOY->execFlags &= ~(A32u4::ATmega32u4::ExecFlags_Debug | A32u4::ATmega32u4::ExecFlags_Analyse);
	}
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
	return ARDUBOY->display.getPixel(x, y) ? WHITE : BLACK;
}


void ABB::MCU::activateLog() const {
	ARDUBOY->mcu.activateLog();
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

	return {names[ind], ARDUBOY->mcu.dataspace.getGPReg(ind)};
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
	const std::vector<addrmcu_t>* additionalDisasmSeeds
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
	return ARDUBOY->mcu.debugger.getStackPCAt(ind);
}
pc_t ABB::MCU::getStackFrom(size_t ind) const {
	return ARDUBOY->mcu.debugger.getStackFromPCAt(ind);
}

sizemcu_t ABB::MCU::analytics_getMaxSP() const {
	return ARDUBOY->mcu.analytics.maxSP;
}
void ABB::MCU::analytics_setMaxSP(sizemcu_t val) {
	ARDUBOY->mcu.analytics.maxSP = val;
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

void ABB::MCU::draw_asmLiteral(const char* instStart, const char* instEnd, const char* start, const char* end) const {
	size_t len = end-start;

	if (len == 0)
		return;

	switch (start[0]) {
		case 'R':
		case 'r': {
			uint8_t regInd = (uint8_t)StringUtils::numBaseStrToUIntT<10,uint8_t>(start + 1, start + len);
			if (regInd < A32u4::DataSpace::Consts::GPRs_size) {
				uint8_t regVal = ARDUBOY->mcu.dataspace.getGPReg(regInd);
				ImGui::SetTooltip("r%d: 0x%02x => %d (%d)", regInd, regVal, regVal, (int8_t)regVal);
			}
		} break;

		case 'X':
		case 'Y':
		case 'Z':
		{
			uint16_t regVal = -1;
			switch (start[0]) {
				case 'X':
					regVal = ARDUBOY->mcu.dataspace.getX();
					break;
				case 'Y':
					regVal = ARDUBOY->mcu.dataspace.getY();
					break;
				case 'Z':
					regVal = ARDUBOY->mcu.dataspace.getZ();
					break;
			}

			ImGui::SetTooltip("%c: 0x%04x => %d", start[0], regVal, regVal);
		} break;

		case '0': {
			if(len > 1 && start[1] == 'x'){
				if(len >= 2+4) {
					ImGui::BeginTooltip();

					addrmcu_t addr = StringUtils::hexStrToUIntLen<decltype(addr)>(start + 2, 4);

					ImGui::Text("0x%04x => %u", addr, addr);

					/*
					size_t symbolID = symboltable_getSymbolIdByValue(addr, 1);
					if(symbolID != (size_t)-1) {
						ImGui::Separator();
						draw_symbol(symbolID, addr);
					}
					*/

					ImGui::EndTooltip();
				}
			}
		} break;
	}
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
		case 0: return Hex{"Dataspace", ARDUBOY->mcu.dataspace.getData(), A32u4::DataSpace::Consts::data_size};
		case 1: return Hex{"Eeprom",    ARDUBOY->mcu.dataspace.getEEPROM(), A32u4::DataSpace::Consts::eeprom_size};
		case 2: return Hex{"Flash",     ARDUBOY->mcu.flash.getData(), A32u4::Flash::sizeMax};
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

