#ifndef __ARDUBOY_CONSOLE_H__
#define __ARDUBOY_CONSOLE_H__

#include <memory>

#include "../Console.h"

#include "Arduboy.h"

namespace ABB {
	class ArduboyConsole : public Console {
	private:
		static constexpr Consts actual_consts = {
			AB::Display::WIDTH, AB::Display::HEIGHT,

			A32u4::InstHandler::instListLen, A32u4::DataSpace::Consts::GPRs_size,
			A32u4::CPU::ClockFreq,

			A32u4::DataSpace::Consts::data_size,

			0xFFFF,
		};

		Arduboy ab;
	public:
		ArduboyConsole();
		virtual ~ArduboyConsole() override;

		virtual std::unique_ptr<Console> clone() const override;
		virtual void assign(const Console* other) override;

		virtual void reset() override;
		virtual void powerOn() override;

		virtual uint64_t cycsPerFrame() const override;

		virtual void execute(uint64_t amt) override;
		virtual void newFrame() override;

		virtual bool getDebugMode() const override;
		virtual void setDebugMode(bool on) override;
		virtual float getEmuSpeed() const override;
		virtual void setEmuSpeed(float v) override;
		virtual void setButtons(bool up, bool down, bool left, bool right, bool a, bool b) override;

		virtual Color display_getPixel(size_t x, size_t y) const override;

		virtual void setLogCallB(LogUtils::LogCallB callB, void* userData) override;

		virtual uint64_t totalCycles() const override;

		virtual pc_t getPC() const override;
		virtual addrmcu_t getPCAddr() const override;

		virtual std::vector<int8_t> genSoundWave(uint32_t samplesPerSec) override;

		// CPU
		virtual std::pair<const char*, reg_t> getReg(size_t ind) const override;

		virtual const char* getInstName(size_t ind) override;

		// Dataspace
		virtual const uint8_t* dataspace_getData() override;

		// Flash
		virtual bool flash_loadFromMemory(const uint8_t* data, size_t dataLen) override;
		virtual const uint8_t* flash_getData() override;
		virtual size_t flash_size() const override;
		virtual bool flash_isProgramLoaded() const override;
		virtual size_t programSize() const override; // size of Program in PC steps


		// ### Extras ###

		// Disassembler
		virtual pc_t disassembler_getJumpDests(uint16_t word, uint16_t word2, pc_t pc) override;
		virtual std::string disassembler_disassembleRaw(uint16_t word, uint16_t word2) override;
		virtual std::string disassembler_disassembleProg(
			const std::vector<std::pair<uint32_t, std::string>>* srcLines = nullptr,
			const std::vector<std::pair<uint32_t, std::string>>* funcSymbs = nullptr,
			const std::vector<std::tuple<std::string, uint32_t, uint32_t>>* dataSymbs = nullptr,
			const std::vector<uint32_t>* additionalDisasmSeeds = nullptr
		) const override;

		// Debugger
		virtual uint8_t debugger_getBreakpoint(pc_t ind) const override;
		virtual void debugger_setBreakpoint(pc_t ind) override;
		virtual void debugger_clearBreakpoint(pc_t ind) override;
		virtual void debugger_clearAllBreakpoints() override;
		virtual std::unordered_set<pc_t> debugger_getBreakpointList() const override;

		virtual bool debugger_isHalted() const override;
		virtual void debugger_halt() override;
		virtual void debugger_step() override;
		virtual void debugger_continue() override;

		virtual size_t getStackPtr() const override;
		virtual pc_t getStackTo(size_t ind) const override;
		virtual pc_t getStackFrom(size_t ind) const override;

		// Analytics
		virtual sizemcu_t analytics_getMaxSP() const override;
		virtual void analytics_resetMaxSP() override;
		virtual uint64_t analytics_getSleepSum() const override;
		virtual void analytics_setSleepSum(uint64_t val) override;
		virtual void analytics_resetPCHeat() override;
		virtual uint64_t analytics_getPCHeat(pc_t pc) const override;
		virtual uint64_t analytics_getInstHeat(size_t ind) const override;


		virtual ParamInfo getParamInfo(const char* start, const char* end, const char* instStart, const char* instEnd, uint32_t pcAddr) const override;

		virtual void draw_stateInfo() override;

		virtual size_t numHexViewers() const override;
		virtual Hex getHexViewer(size_t ind) override;

		virtual void getState(std::ostream& output) override;
		virtual void setState(std::istream& input) override;

		virtual size_t sizeBytes() const override;
	};
}

#endif