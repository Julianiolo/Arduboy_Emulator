#ifndef __EM_MCU_H__
#define __EM_MCU_H__

#include <memory>
#include <string>
#include <cstdint>
#include <cinttypes>
#include <set>
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
	class MCU {
	public:
		typedef uint8_t regind_t;
		typedef uint8_t reg_t;
		typedef uint16_t addrmcu_t;
		typedef uint16_t pc_t;
		typedef uint16_t sizemcu_t;
		typedef uint16_t sizesymb_t;

		static constexpr size_t addrmcu_t_MAX = 0xFFFF;

		static constexpr size_t numInsts = 111;
		static constexpr size_t DISPLAY_WIDTH = 128;
		static constexpr size_t DISPLAY_HEIGHT = 64;
	private:
		void* data;
	public:

		MCU();
		MCU(const MCU& src);
		~MCU();

		MCU& operator=(const MCU& other);

		void reset();
		void powerOn();

		uint64_t clockFreq() const;
		uint64_t cycsPerFrame() const;
		void newFrame();
		bool getDebugMode() const;
		void setDebugMode(bool on);
		float getEmuSpeed() const;
		void setEmuSpeed(float v);
		void setButtons(bool up, bool down, bool left, bool right, bool a, bool b);

		Color display_getPixel(size_t x, size_t y) const;
		
		void activateLog() const;
		void setLogCallB(LogUtils::LogCallB callB, void* userData);

		uint64_t totalCycles() const;

		pc_t getPC() const;
		addrmcu_t getPCAddr() const;

		// CPU
		static size_t getRegNum();
		std::pair<const char*, reg_t> getReg(size_t ind) const;

		static const char* getInstName(size_t ind);

		// Dataspace
		const uint8_t* dataspace_getData();
		static size_t dataspace_dataSize();

		// Flash
		bool flash_loadFromMemory(const uint8_t* data, size_t dataLen);
		const uint8_t* flash_getData();
		size_t flash_size() const;
		bool flash_isProgramLoaded() const;
		size_t programSize() const; // size of Program in PC steps


		// ### Extras ###

		// Disassembler
		static pc_t disassembler_getJumpDests(uint16_t word, uint16_t word2, pc_t pc);
		static std::string disassembler_disassembleRaw(uint16_t word, uint16_t word2);
		std::string disassembler_disassembleProg(
			const std::vector<std::pair<uint32_t, std::string>>* srcLines = nullptr,
			const std::vector<std::pair<uint32_t, std::string>>* funcSymbs = nullptr,
			const std::vector<std::tuple<std::string, uint32_t, uint32_t>>* dataSymbs = nullptr,
			const std::vector<uint32_t>* additionalDisasmSeeds = nullptr
		) const;

		// Debugger
		uint8_t debugger_getBreakpoint(sizemcu_t ind) const;
		void debugger_setBreakpoint(sizemcu_t ind);
		void debugger_clearBreakpoint(sizemcu_t ind);
		void debugger_clearAllBreakpoints();
		std::set<pc_t> debugger_getBreakpointList() const;

		bool debugger_isHalted() const;
		void debugger_halt();
		void debugger_step();
		void debugger_continue();

		size_t getStackPtr() const;
		pc_t getStackTo(size_t ind) const;
		pc_t getStackFrom(size_t ind) const;



		// Analytics
		sizemcu_t analytics_getMaxSP() const;
		void analytics_resetMaxSP();
		uint64_t analytics_getSleepSum() const;
		void analytics_setSleepSum(uint64_t val);
		void analytics_resetPCHeat();
		uint64_t analytics_getPCHeat(pc_t pc) const;
		uint64_t analytics_getInstHeat(size_t ind) const;

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
		ParamInfo getParamInfo(const char* start, const char* end, const char* instStart, const char* instEnd, uint32_t pcAddr) const;

		void draw_stateInfo() const;

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
		size_t numHexViewers() const;
		Hex getHexViewer(size_t ind) const;

		void getState(std::ostream& output) const;
		void setState(std::istream& input);

		size_t sizeBytes() const;
	};
}

#endif