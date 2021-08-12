#include "stringUtils.h"

#include <fstream>
#include <streambuf>

#include "../backends/LogBackend.h"

void StringUtils::uIntToHexCase(size_t num, uint8_t digits, char* buf, bool upperCase) {
	if(!upperCase)
		StringUtils::uIntToHex<false>(num, digits, buf);
	else
		StringUtils::uIntToHex<true>(num, digits, buf);
}
size_t StringUtils::hexToUInt(const char* str, const char* strEnd){
	if (strEnd == nullptr)
		strEnd = str + std::strlen(str);

	size_t num = 0;
	const char* strPtr = str;
	while (strPtr != strEnd) {
		const char c = *strPtr++;
		uint8_t cNum = -1;
		if (c >= '0' && c <= '9')
			cNum = c - '0';
		else {
			if (c >= 'A' && c <= 'F')
				cNum = c - 'A' + 10;
			else if (c >= 'a' && c <= 'f')
				cNum = c - 'a' + 10;
			else
				return -1;
		}
		num <<= 4;
		num |= cNum;
	}
	return num;
}

std::string StringUtils::loadFileIntoString(const char* path, const char* errorMsg) {
	std::ifstream t(path);
	std::string fileStr;

	if(!t.is_open()){
		if(errorMsg)
			ABB::LogBackend::log(errorMsg, A32u4::ATmega32u4::LogLevel_Error);
		return "";
	}

	fileStr = "";

	t.seekg(0, std::ios::end);   
	fileStr.reserve(t.tellg());
	t.seekg(0, std::ios::beg);

	fileStr.assign(std::istreambuf_iterator<char>(t), std::istreambuf_iterator<char>());
	return fileStr;
}