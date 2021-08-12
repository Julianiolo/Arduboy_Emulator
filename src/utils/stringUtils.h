#ifndef _ABB_STRINGUTILS
#define _ABB_STRINGUTILS

#include <stdint.h>
#include <string>
#include <cstring>

namespace StringUtils {
	constexpr char hexDigitsLowerCase[] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
	constexpr char hexDigitsUpperCase[] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

	template<bool upperCase = false>
	void uIntToHex(size_t num, uint8_t digits, char* buf) {
		char* bufPtr = buf + digits;
		while (digits--) {
			*--bufPtr = (upperCase ? hexDigitsUpperCase : hexDigitsLowerCase)[num & 0xF];
			num >>= 4;
		}
	}
	void uIntToHexCase(size_t num, uint8_t digits, char* buf, bool upperCase);
	size_t hexToUInt(const char* str, const char* strEnd = nullptr);

	std::string loadFileIntoString(const char* path, const char* errorMsg = nullptr);
}

#endif