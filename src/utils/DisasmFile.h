#ifndef __ABB_DISASMFILE_H__
#define __ABB_DISASMFILE_H__

#include <vector>
#include <array>
#include <string>
#include <map>
#include <set>
#include <functional>
#include <memory>

#include "../mcu.h"

namespace ABB {
	class DisasmFile{
	public:
		struct FileConsts {
			static constexpr size_t addrEnd = 8;
			static constexpr size_t addrEndExt = 10;

			static constexpr size_t instBytesStart = 10;
			static constexpr size_t instBytesEnd = 21;
		};


		std::string content;
		std::vector<size_t> lines; // [linenumber] = start index of line
		std::vector<MCU::addrmcu_t> addrs; // [linenumber] = PC address
		std::vector<bool> isLineProgram; // [linenumber] = true if line is part of the program, false if not (like data, empty...)
		std::map<uint16_t, size_t> labels; // [symbAddress] = linenumber



		struct BranchRoot {
			MCU::addrmcu_t start;
			MCU::addrmcu_t dest;
			size_t startLine;
			size_t destLine;
			size_t displayDepth;

			size_t addrDist() const;
		};

		std::vector<BranchRoot> branchRoots; // list of all branch roots
		std::vector<size_t> branchRootInds; // [linenumber] = ind to branch root object of this line (-1 if line is not a branchroot)
		struct PassingBranchs {
			std::vector<size_t> passing;
			size_t startLine;
			static constexpr size_t bitArrSize = 2048;
			std::array<bool,bitArrSize> occupied;

			size_t sizeBytes() const;
		};
		std::vector<PassingBranchs> passingBranchesVec;
		std::vector<size_t> passingBranchesInds;  // [linenumber] = ind to pass to passingBranchesVec to get: branchRootInd of all branches passing this address/line
		size_t maxBranchDisplayDepth = 0;
		constexpr static size_t maxBranchShowDist = 256;

		
	private:

		static constexpr MCU::addrmcu_t Addrs_notAnAddr = -1;
		static constexpr MCU::addrmcu_t Addrs_symbolLabel = -2;
	public:
		static bool addrIsActualAddr(MCU::addrmcu_t addr);
		static bool addrIsNotProgram(MCU::addrmcu_t addr);
		static bool addrIsSymbol(MCU::addrmcu_t addr);

		
	private:

		// setup stuff like line indexes etc

		static uint16_t getAddrFromLine(const char* start, const char* end);
		static bool isValidHexAddr(const char* start, const char* end);
		void addAddrToList(const char* start, const char* end, size_t lineInd);

		void processBranches();
		size_t processBranchesRecurse(size_t i, size_t depth = 0); //const BitArray<256>&
		void processContent();
	public:


		void loadSrc(const char* str, const char* strEnd = NULL);

		// helpers/utility
		size_t getLineIndFromAddr(MCU::addrmcu_t Addr) const; // if addr not present, returns the index of the pos to insert at
		bool isEmpty() const;
		size_t getNumLines() const;

		MCU::addrmcu_t getPrevActualAddr(size_t line) const;
		MCU::addrmcu_t getNextActualAddr(size_t line) const;

		size_t sizeBytes() const;
	};
}

namespace DataUtils {
	inline size_t approxSizeOf(const ABB::DisasmFile::PassingBranchs& v) {
		return v.sizeBytes();
	}
}


#endif