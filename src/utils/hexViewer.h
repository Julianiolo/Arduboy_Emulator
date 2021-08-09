#ifndef _ABB_UTIL_HEXVIEWER
#define _ABB_UTIL_HEXVIEWER

#include <stdint.h>

namespace ABB {
	namespace utils {
		class HexViewer {
		public:
			struct SyntaxColors{
				ImVec4 Addr;
				ImVec4 bytes;
				ImVec4 ascii;
			};
			static SyntaxColors syntaxColors;

			void draw(const uint8_t* data, size_t dataLen, size_t dataOff, bool showAscii);
		};
	}
}

#endif