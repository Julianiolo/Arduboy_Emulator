#ifndef __EM_MCU_H__
#define __EM_MCU_H__

#include <memory>
#include <string>
#include <cstdint>
#include <cinttypes>
#include <unordered_set>
#include <functional>

#include "raylib.h"
#include "LogUtils.h"

#define MCU_PRIuSIZEMCU PRIu16
#define MCU_PRIxSIZEMCU PRIx16
#define MCU_PRIuADDR PRIu16
#define MCU_PRIxADDR PRIx16
#define MCU_PRIuPC PRIu16
#define MCU_PRIxPC PRIx16

namespace ABB {
	class Console {
	public:
		typedef uint8_t regind_t;
		typedef uint8_t reg_t;
		typedef uint16_t addrmcu_t;
		typedef uint16_t pc_t;
		typedef uint16_t sizemcu_t;
		typedef uint16_t sizesymb_t;

		struct Consts {
			size_t DISPLAY_WIDTH;
			size_t DISPLAY_HEIGHT;

			size_t numInsts;
			size_t numRegs;
			uint64_t clockFreq;

			size_t dataspaceDataSize;

			size_t addrmcu_t_MAX;
		};

		const Consts consts;
	public:

		inline Console(const Consts& consts) : consts(consts) {}
		virtual ~Console() = default;

		virtual std::unique_ptr<Console> clone() const = 0;
		virtual void assign(const Console* other) = 0;

		virtual void reset() = 0;
		virtual void powerOn() = 0;

		virtual uint64_t cycsPerFrame() const = 0;
		
		virtual void execute(uint64_t amt) = 0;
		virtual void newFrame() = 0;

		virtual bool getDebugMode() const = 0;
		virtual void setDebugMode(bool on) = 0;
		virtual float getEmuSpeed() const = 0;
		virtual void setEmuSpeed(float v) = 0;
		virtual void setButtons(bool up, bool down, bool left, bool right, bool a, bool b) = 0;

		virtual Color display_getPixel(size_t x, size_t y) const = 0;
		
		virtual void setLogCallB(LogUtils::LogCallB callB, void* userData) = 0;

		virtual uint64_t totalCycles() const = 0;

		virtual pc_t getPC() const = 0;
		virtual addrmcu_t getPCAddr() const = 0;

		virtual std::vector<int8_t> genSoundWave(uint32_t samplesPerSec) = 0;

		// CPU
		virtual std::pair<const char*, reg_t> getReg(size_t ind) const = 0;

		virtual const char* getInstName(size_t ind) = 0;

		// Dataspace
		virtual const uint8_t* dataspace_getData() = 0;

		// Flash
		virtual bool flash_loadFromMemory(const uint8_t* data, size_t dataLen) = 0;
		virtual const uint8_t* flash_getData() = 0;
		virtual size_t flash_size() const = 0;
		virtual bool flash_isProgramLoaded() const = 0;
		virtual size_t programSize() const = 0; // size of Program in PC steps


		// ### Extras ###

		// Disassembler
		virtual pc_t disassembler_getJumpDests(uint16_t word, uint16_t word2, pc_t pc) = 0;
		virtual std::string disassembler_disassembleRaw(uint16_t word, uint16_t word2) = 0;
		virtual std::string disassembler_disassembleProg(
			const std::vector<std::pair<uint32_t, std::string>>* srcLines = nullptr,
			const std::vector<std::pair<uint32_t, std::string>>* funcSymbs = nullptr,
			const std::vector<std::tuple<std::string, uint32_t, uint32_t>>* dataSymbs = nullptr,
			const std::vector<uint32_t>* additionalDisasmSeeds = nullptr
		) const = 0;

		// Debugger
		virtual uint8_t debugger_getBreakpoint(pc_t ind) const = 0;
		virtual void debugger_setBreakpoint(pc_t ind) = 0;
		virtual void debugger_clearBreakpoint(pc_t ind) = 0;
		virtual void debugger_clearAllBreakpoints() = 0;
		virtual std::unordered_set<pc_t> debugger_getBreakpointList() const = 0;

		virtual bool debugger_isHalted() const = 0;
		virtual void debugger_halt() = 0;
		virtual void debugger_step() = 0;
		virtual void debugger_continue() = 0;

		virtual size_t getStackPtr() const = 0;
		virtual pc_t getStackTo(size_t ind) const = 0;
		virtual pc_t getStackFrom(size_t ind) const = 0;



		// Analytics
		virtual sizemcu_t analytics_getMaxSP() const = 0;
		virtual void analytics_resetMaxSP() = 0;
		virtual uint64_t analytics_getSleepSum() const = 0;
		virtual void analytics_setSleepSum(uint64_t val) = 0;
		virtual void analytics_resetPCHeat() = 0;
		virtual uint64_t analytics_getPCHeat(pc_t pc) const = 0;
		virtual uint64_t analytics_getInstHeat(size_t ind) const = 0;


		enum {
			ParamType_None = 0,
			ParamType_Register,
			ParamType_RamAddrRegister,
			ParamType_RomAddrRegister,
			ParamType_Literal,
			ParamType_RomAddr,
			ParamType_RamAddr,
			ParamType_COUNT
		};
		struct ParamInfo {
			uint8_t type;
			uint32_t val;
		};
		virtual ParamInfo getParamInfo(const char* start, const char* end, const char* instStart, const char* instEnd, uint32_t pcAddr) const = 0;

		virtual void draw_stateInfo() = 0;

		struct Hex {
			const char* name;
			const uint8_t* data;
			size_t dataLen;

			enum {
				Type_None = 0,
				Type_Ram,
				Type_Rom
			};
			uint8_t type;

			std::function<void(addrmcu_t addr, uint8_t val)> setData = nullptr;
			std::function<void(const uint8_t* data, size_t len)> setDataAll = nullptr;

			const uint64_t* readCnt = nullptr;
			const uint64_t* writeCnt = nullptr;
			std::function<void()> resetRWAnalytics = nullptr;
		};
		virtual size_t numHexViewers() const = 0;
		virtual Hex getHexViewer(size_t ind) = 0;

		virtual void getState(std::ostream& output) = 0;
		virtual void setState(std::istream& input) = 0;

		virtual size_t sizeBytes() const = 0;
	};
}

#endif