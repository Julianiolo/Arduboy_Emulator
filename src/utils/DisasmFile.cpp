#include "DisasmFile.h"

#include <chrono>

#include "StringUtils.h"
#include "DataUtils.h"
#include "LogUtils.h"
#include "DataUtilsSize.h"


#define LU_MODULE "DisasmFile"

size_t ABB::DisasmFile::BranchRoot::addrDist() const {
	return std::max(start,dest) - std::min(start,dest);
}

void ABB::DisasmFile::loadSrc(const char* str, const char* strEnd) {
	if (strEnd == NULL)
		strEnd = str + std::strlen(str);

	content = std::string(str, strEnd);
	processContent();
}

uint16_t ABB::DisasmFile::getAddrFromLine(const char* start, const char* end) {
	if (start + 8 > end || *start != ' ' || start[8] != ':') {
		if (*start == '0' && start[8] == ' ' && isValidHexAddr(start,start+8))
			return Addrs_symbolLabel;
		else
			return Addrs_notAnAddr;
	}

	if(!isValidHexAddr(start,start+8))
		return Addrs_notAnAddr;

	return (uint16_t)StringUtils::hexStrToUIntLen<uint64_t>(start, 8);
}

bool ABB::DisasmFile::isValidHexAddr(const char* start, const char* end) {
	static constexpr char validHexDigits[] = {' ','0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'};
	for(const char* it = start; it < end; it++) {
		char c = *it;
		if(c >= 'A' && c <= 'Z') {
			c += ('a'-'A');
		}
		for(int i = 0; i<17;i++){
			if(c == validHexDigits[i])
				goto continue_outer;
		}
		return false;
	continue_outer:
		;
	}
	if(*(end-1) == ' ')
		return false;
	return true;
}
void ABB::DisasmFile::addAddrToList(const char* start, const char* end, size_t lineInd) {
	bool isProgramLine = end - start > 22 && start[22] == '\t';
	isLineProgram.push_back(isProgramLine);

	uint16_t addr = getAddrFromLine(start, end);
	DU_ASSERT(!isProgramLine || (addr % 2 == 0 || addr == Addrs_notAnAddr || addr == Addrs_symbolLabel)); // addresses should always be round, since they refer to 2*PC
	if(lineInd >= addrs.size()){
		addrs.resize(lineInd);
	}
	addrs[lineInd-1] = addr;

	if (addr == Addrs_symbolLabel) {
		// should never be bigger than 2 bytes
		Console::addrmcu_t symbAddr = (Console::addrmcu_t)StringUtils::hexStrToUIntLen<uint64_t>(start, 8);
		labels[symbAddr] = lineInd-1;
	}
}

void ABB::DisasmFile::processBranches() {
	maxBranchDisplayDepth = 0;
	branchRoots.clear();
	branchRootInds.clear();

	branchRootInds.resize(lines.size(), -1);

	{
		auto start0 = std::chrono::high_resolution_clock::now();
		std::vector<std::vector<size_t>> passingBranches(lines.size()); // raw representation, that later gets compressed into passingBranchesInds and passingBranchesVec; [lineno] = vector of inds of passing branches
		for (size_t i = 0; i < lines.size(); i++) {
			if (!isLineProgram[i])
				continue;

			Console::addrmcu_t addr = addrs[i];
			if (addr != Addrs_notAnAddr && addr != Addrs_symbolLabel) {
				Console::addrmcu_t dest;
				// get dest address
				{
					const char* lineStart = content.c_str() + lines[i];
					//const char* line_end = content.c_str() + ((i + 1 < lines.size()) ? lines[i] : content.size());

					uint16_t word = ( StringUtils::hexStrToUIntLen<uint16_t>(lineStart+FileConsts::instBytesStart,   2)) |
						( StringUtils::hexStrToUIntLen<uint16_t>(lineStart+FileConsts::instBytesStart+3, 2) << 8);
					uint16_t word2 = 0;
					if(*(lineStart+FileConsts::instBytesStart+3+3) != ' ') {
						word2 =		( StringUtils::hexStrToUIntLen<uint16_t>(lineStart+FileConsts::instBytesStart+3+3,   2)) |
							( StringUtils::hexStrToUIntLen<uint16_t>(lineStart+FileConsts::instBytesStart+3+3+3, 2) << 8);
					}

					Console::pc_t destPC = Console::disassembler_getJumpDests(word,word2,addr/2);
					if (destPC == (Console::pc_t)-1)
						continue; // instruction doesn't jump anywhere
					dest = destPC * 2;
				}

				size_t destLine = getLineIndFromAddr(dest);

				if (destLine == (decltype(destLine))-1 || addrs[destLine]%2 == 1) // for whatever reason, sometimes programs have illegal jumps like negative addresses or odd addresses
					continue;

				DU_ASSERT(addrs[destLine] == dest);

				size_t branchRootInd = branchRoots.size();
				branchRootInds[i] = branchRootInd;

				branchRoots.push_back(BranchRoot());
				BranchRoot& branchRoot = branchRoots.back();
				branchRoot.start = addr;
				branchRoot.dest = dest;
				branchRoot.startLine = i;
				branchRoot.destLine = destLine;



				size_t from = std::min(i, destLine);
				size_t to = std::max(i, destLine);

				for (size_t l = from; l <= to; l++) {
					auto& passing = passingBranches[l];
					passing.push_back(branchRootInd);
				}

				branchRoot.displayDepth = -1;
			}
		}
		auto end0 = std::chrono::high_resolution_clock::now();

		{
			double ms = std::chrono::duration_cast<std::chrono::microseconds>(end0 - start0).count()/1000.0;
			LU_LOGF_(LogUtils::LogLevel_DebugOutput, "branch init took: %f ms", ms);
		}


		// now we compress passingBranches into passingBranchesInds and passingBranchesVec

		auto start1 = std::chrono::high_resolution_clock::now();

		passingBranchesInds.clear();
		passingBranchesVec.clear();
		passingBranchesInds.resize(lines.size(), -1);

		std::vector<size_t>* last = nullptr;
		for (size_t i = 0; i < passingBranches.size(); i++) {
			if (!last || passingBranches[i].size() != last->size() || passingBranches[i] != *last) {
				PassingBranchs pb;
				pb.passing = passingBranches[i];
				pb.startLine = i;
				passingBranchesVec.push_back(pb);
				last = &passingBranches[i];
			}
			passingBranchesInds[i] = passingBranchesVec.size() - 1;
		}

		auto end1 = std::chrono::high_resolution_clock::now();
		{
			double ms = std::chrono::duration_cast<std::chrono::microseconds>(end1 - start1).count()/1000.0;
			LU_LOGF_(LogUtils::LogLevel_DebugOutput, 
				"branch comp took: %f ms; %" CU_PRIuSIZE "=>%" CU_PRIuSIZE " [%" CU_PRIuSIZE " bs,%" CU_PRIuSIZE " lines]", 
				ms, 
				passingBranches.size(), passingBranchesVec.size(),
				branchRoots.size(), lines.size()
			);
		}
	}

#if 1
	{
		auto start = std::chrono::high_resolution_clock::now();
#if 0
		for(size_t i = 0; i<passingBranchesVec.size(); i++) {
			processBranchesRecurse(i);
		}
#else
		for(size_t i = 0; i<branchRoots.size(); i++) {
			processBranchesRecurse(i);
		}
#endif
		auto end = std::chrono::high_resolution_clock::now();
		{
			double ms = std::chrono::duration_cast<std::chrono::microseconds>(end - start).count()/1000.0;
			LU_LOGF_(LogUtils::LogLevel_DebugOutput, "branch recursion took: %f ms", ms);
		}
	}
#else
	{	
		auto start = std::chrono::high_resolution_clock::now();
		std::vector<size_t> branchsSorted(branchRoots.size());
		for(size_t i = 0; i<branchsSorted.size(); i++) {
			branchsSorted[i] = i;
		}

		std::sort(branchsSorted.begin(), branchsSorted.end(), [&](size_t a, size_t b) {
			return branchRoots[a].addrDist() < branchRoots[b].addrDist();
		});

		std::map<addrmcu_t,size_t> destMap;
		for(size_t i = 0; i< branchsSorted.size(); i++) {
			BranchRoot& branchRoot = branchRoots[branchsSorted[i]];

			const size_t from = std::min(branchRoot.startLine, branchRoot.destLine);
			const size_t to = std::max(branchRoot.startLine, branchRoot.destLine);

			const size_t fromInd = passingBranchesInds[from];

			{
				auto res = destMap.find(branchRoot.dest);
				if(res != destMap.end()) {
					branchRoot.displayDepth = res->second;
					goto skip;
				}
			}

			{

				BitArray<PassingBranchs::bitArrSize> occupied;
				size_t toInd = passingBranchesVec.size()-1;
				for (size_t c = fromInd; c < passingBranchesVec.size(); c++) { // go through line chunks
					PassingBranchs& pb = passingBranchesVec[c];

					if (pb.startLine > to) {
						toInd = c+1;
						break;
					}

					occupied |= pb.occupied;
				}

				size_t minFreePlace = occupied.getLBC();
				MCU_ASSERT(minFreePlace != (size_t)-1); // check that not every bit is set already
				branchRoot.displayDepth = minFreePlace;

				destMap[branchRoot.dest] = branchRoot.displayDepth;
			}

		skip:
			for(size_t j = fromInd; j<passingBranchesVec.size(); j++) {
				PassingBranchs& subPb = passingBranchesVec[j];
				if (subPb.startLine > to) {
					break;
				}
				subPb.occupied.setBitTo(branchRoot.displayDepth, true);
			}
		}

		size_t test[512];
		std::memset(test, 0, sizeof(test));
		for(size_t i = 0; i<branchRoots.size(); i++) {
			MCU_ASSERT(branchRoots[i].displayDepth < 512);
			test[branchRoots[i].displayDepth] = branchRoots[i].dest;
		}

		auto end = std::chrono::high_resolution_clock::now();
		{
			double ms = std::chrono::duration_cast<std::chrono::microseconds>(end - start).count()/1000.0;
			MCU_LOG_M(LogUtils::LogLevel_DebugOutput, StringUtils::format("branch calc took: %f ms", ms), "Disassembler");
		}
	}
#endif

	for(size_t i = 0; i<branchRoots.size(); i++) {
		DU_ASSERT(branchRoots[i].displayDepth != (size_t)-1);
		if (branchRoots[i].displayDepth > maxBranchDisplayDepth && branchRoots[i].displayDepth != (size_t)-3)
			maxBranchDisplayDepth = branchRoots[i].displayDepth;
	}

	LU_LOGF_(LogUtils::LogLevel_DebugOutput, "branch max Display Depth is %" CU_PRIuSIZE, maxBranchDisplayDepth);
}
#if 0
const BitArray<256>& ABB::DisasmFile::processBranchesRecurse(size_t ind, size_t depth) {
	PassingBranchs& pb = passingBranchesVec[ind];
	for(size_t i = 0; i<pb.passing.size(); i++) {
		BranchRoot& branch = branchRoots[pb.passing[i]];
		if(branch.displayDepth == (size_t)-1) {
			branch.displayDepth = -2;
			const size_t from = std::min(branch.startLine, branch.destLine);
			const size_t to = std::max(branch.startLine, branch.destLine);
			size_t fromInd = passingBranchesInds[from];

			BitArray<256> occupied;
			size_t toInd = passingBranchesVec.size()-1;
			for(size_t j = fromInd; j<passingBranchesVec.size(); j++) {
				PassingBranchs& subPb = passingBranchesVec[j];
				if (subPb.startLine > to) {
					toInd = j+1;
					break;
				}

				occupied |= processBranchesRecurse(j, depth+1);
			}

			size_t minFreePlace = occupied.getLBC();
			MCU_ASSERT(minFreePlace != (size_t)-1); // check that not every bit is set already
			branch.displayDepth = minFreePlace;

			for(size_t j = fromInd; j<toInd; j++) {
				PassingBranchs& subPb = passingBranchesVec[j];
				subPb.occupied.setBitTo(minFreePlace, true);
			}
		}
	}
	return pb.occupied;
}
#else
size_t ABB::DisasmFile::processBranchesRecurse(size_t ind, size_t depth) {
	auto& branchRoot = branchRoots[ind];
	//if(branchRoot.displayDepth == (size_t)-2) // currently being calculated [we dont need to check that bc the if bolow already does]
	//	return -2;
	if(branchRoot.displayDepth != (size_t)-1) // already calculated or currently beeing calculated
		return branchRoot.displayDepth;

	{
		bool used[256];
		branchRoot.displayDepth = -2;

		std::memset(used, 0, sizeof(used));

		const size_t from = std::min(branchRoot.startLine, branchRoot.destLine);
		const size_t to = std::max(branchRoot.startLine, branchRoot.destLine);

#if 1
		if (to - from > maxBranchShowDist) {
			branchRoot.displayDepth = -3;
			return -3;
		}
#endif

		size_t fromInd = passingBranchesInds[from];

		for (size_t c = fromInd; c < passingBranchesVec.size(); c++) { // go through line chunks
			PassingBranchs& pb = passingBranchesVec[c];

			if (pb.startLine > to)
				break;

			for(size_t i = 0; i< pb.passing.size(); i++) {
				auto& nextBranchRoot = branchRoots[pb.passing[i]];
				if (nextBranchRoot.destLine == branchRoot.destLine || nextBranchRoot.displayDepth == (size_t)-2) {
					continue;
				}

				size_t d;
				if(nextBranchRoot.displayDepth == (size_t)-1){
					d = processBranchesRecurse(pb.passing[i], depth+1);
				}else{
					d = nextBranchRoot.displayDepth;
				}

				if(d == (size_t)-2) // currently being calculated, so we skip it
					continue;
				if (d == (size_t)-3) // ignored branch
					continue;

				DU_ASSERT(d < sizeof(used));

				used[d] = true;
			}
		}

		size_t min = -1;
		for(size_t i = 0; i<sizeof(used); i++) {
			if(!used[i]) {
				min = i;
				break;
			}
		}

		branchRoot.displayDepth = min;

		return branchRoot.displayDepth;
	}
}
#endif

void ABB::DisasmFile::processContent() {
	size_t lineInd = 1;
	lines.clear();
	lines.push_back(0);
	addrs.clear();
	isLineProgram.clear();

	const char* str = content.c_str();
	size_t i = 0;
	for(; i < content.size(); i++) {
		if(str[i] == '\n'){
			lines.push_back(i+1);

			addAddrToList(str + lines[lineInd - 1], str + i, lineInd);

			lineInd++;
		}
	}
	addAddrToList(str + lines[lineInd - 1], str + content.size(), lineInd);
	//lineInd++;

	lines.resize(lineInd);
	addrs.resize(lineInd);

	processBranches();

	for (size_t i = 0; i < lines.size(); i++) {
		Console::addrmcu_t addr = addrs[i];
		if (addr != Addrs_notAnAddr && addr != Addrs_symbolLabel) {

		}
	}
}

bool ABB::DisasmFile::addrIsActualAddr(Console::addrmcu_t addr) {
	return addr != Addrs_notAnAddr && addr != Addrs_symbolLabel;
}
bool ABB::DisasmFile::addrIsNotProgram(Console::addrmcu_t addr) {
	return addr == Addrs_notAnAddr;
}
bool ABB::DisasmFile::addrIsSymbol(Console::addrmcu_t addr) {
	return addr == Addrs_symbolLabel;
}

size_t ABB::DisasmFile::getLineIndFromAddr(Console::addrmcu_t Addr) const{
	if(isEmpty())
		return -1;

	size_t from = 0;
	size_t to = lines.size()-1;
	while (to > 0 && (addrs[to] == Addrs_notAnAddr || addrs[to] == Addrs_symbolLabel))
		to--;
	if (addrs[to] < Addr || to == (decltype(to))-1)
		return -1;

	while(from != to){
		const size_t mid_orig = from + ((to-from)/2);
		size_t mid = mid_orig;

		uint16_t lineAddr = addrs[mid];
		//while((lineAddr = addrs[mid]) == Addrs_notAnAddr || lineAddr == Addrs_symbolLabel)
		//	mid++;

		while (!addrIsActualAddr(lineAddr)) {
			if (mid >= to) {
				return -1;
			}

			if (mid <= mid_orig) {
				mid = mid_orig + (mid_orig - mid) + 1;
			}
			else {
				if (mid - mid_orig <= mid_orig) {
					mid = mid_orig - (mid - mid_orig);
				}
				else {
					mid++;
				}
			}
			// + (cnt/2>mid_orig ? (cnt-mid_orig/2) : ((cnt % 2) ? -(ptrdiff_t)cnt / 2 : cnt / 2));
			lineAddr = addrs[mid];
		}

		if(lineAddr == Addr){
			return mid;
		}
		else {
			if (lineAddr < Addr) {
				if (mid == from) {
					if (addrs[to] == Addr) {
						return to;
					}
					else {
						return -1;
					}
				}

				from = mid;
			}else{
				if (mid == to) {
					if (mid_orig == to)
						return from;
					else
						to = mid_orig;
				}
				else {
					to = mid;
				}
			}
		}
	}
	return from;
}
bool ABB::DisasmFile::isEmpty() const {
	return content.size() == 0;
}
size_t ABB::DisasmFile::getNumLines() const {
	return lines.size();
}



ABB::Console::addrmcu_t ABB::DisasmFile::getPrevActualAddr(size_t line) const {
	if (addrs.size() == 0)
		return 0;

	if (line >= addrs.size())
		line = addrs.size() - 1;

	while (true) {
		if (addrIsActualAddr(addrs[line]))
			return addrs[line];

		if (line == 0)
			break;
		line--;
	}
	return 0;
}
ABB::Console::addrmcu_t ABB::DisasmFile::getNextActualAddr(size_t line) const {
	const size_t line_orig = line;
	while (line < lines.size()) {
		if (addrIsActualAddr(addrs[line]))
			return addrs[line];

		line++;
	}
	// we didnt find anything, so now we search before the given line
	return getPrevActualAddr(line_orig);
}

size_t ABB::DisasmFile::PassingBranchs::sizeBytes() const {
	size_t sum = 0;

	sum += DataUtils::approxSizeOf(passing);
	sum += sizeof(startLine);
	sum += DataUtils::approxSizeOf(occupied);

	return sum;
}

size_t ABB::DisasmFile::sizeBytes() const {
	size_t sum = 0;

	sum += DataUtils::approxSizeOf(content);
	sum += DataUtils::approxSizeOf(lines);
	sum += DataUtils::approxSizeOf(addrs);
	sum += DataUtils::approxSizeOf(isLineProgram); // [linenumber] = true if line is part of the program, false if not (like data, empty...)
	sum += DataUtils::approxSizeOf(labels); // [symbAddress] = linenumber

	sum += DataUtils::approxSizeOf(branchRoots, [](const BranchRoot& v) { CU_UNUSED(v); return sizeof(BranchRoot); });
	sum += DataUtils::approxSizeOf(branchRootInds); // [linenumber] = ind to branch root object of this line (-1 if line is not a branchroot)

	sum += DataUtils::approxSizeOf(passingBranchesVec[0]);

	sum += DataUtils::approxSizeOf(passingBranchesVec);
	sum += DataUtils::approxSizeOf(passingBranchesInds);  // [linenumber] = ind to pass to passingBranchesVec to get: branchRootInd of all branches passing this address/line
	sum += sizeof(maxBranchDisplayDepth);

	return sum;
}