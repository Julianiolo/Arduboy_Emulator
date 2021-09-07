#ifndef _ABB_BINTOOLS_H
#define _ABB_BINTOOLS_H

#include <vector>
#include <string>

namespace BinTools {
	bool canDemangle();
	std::vector<std::string> demangleList(const char** strs, size_t num);
}

#endif