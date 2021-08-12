#include "hexViewer.h"

#include <cmath>
#include <string>

#include <algorithm>

#include "../Extensions/imguiExt.h"
#include "utils/stringExtras.h"
#include "stringUtils.h"

ABB::utils::HexViewer::Highlight::Highlight() {

}
ABB::utils::HexViewer::Highlight::Highlight(size_t Addr, const ImVec4& col) : Addr(Addr), col(col) {

}
bool ABB::utils::HexViewer::Highlight::operator<(const Highlight& rhs) const {
	return this->Addr < rhs.Addr;
}

ABB::utils::HexViewer::SyntaxColors ABB::utils::HexViewer::syntaxColors = { {1,1,0,1}, {0.6,0.6,0.8,1}, {0.5,0.6,0.5,1} };

bool ABB::utils::HexViewer::isSelected(size_t addr) const {
	return addr >= selectStart && addr < selectEnd;
}

void ABB::utils::HexViewer::addHighlight(size_t addr, const ImVec4& col) {
	if (newHighlights) {
		newHighlights = false;
		highlightCntr = 0;
	}

	if (highlightCntr + 1 >= highlights.size()) {
		highlights.resize(highlightCntr + 10);
	}
	highlights[highlightCntr++] = Highlight(addr, col);
}

void ABB::utils::HexViewer::setSymbolList(SymbolTable::SymbolListPtr list) {
	symbolList = list;
}

void ABB::utils::HexViewer::sameFrame() {
	newFrame = false;
}

ImRect ABB::utils::HexViewer::getNextByteRect(const ImVec2& charSize) const {
	ImVec2 cursorScreenPos = ImGui::GetCursorScreenPos();
	return ImRect(
		{ cursorScreenPos.x + charSize.x , cursorScreenPos.y },
		{ cursorScreenPos.x + charSize.x * 3, cursorScreenPos.y + charSize.y }
	);
}

void ABB::utils::HexViewer::draw(const uint8_t* data, size_t dataLen, size_t dataOff) {
	if (newFrame) {
		char nameBuf[9];
		nameBuf[8] = 0;
		StringUtils::uIntToHex((size_t)data, 8, nameBuf);
		ImGuiID id = ImGui::GetID(nameBuf);

		if (ImGui::Button("Options")) {
			ImGui::OpenPopup(id);
		}

		if (ImGui::BeginPopup(nameBuf)) {
			ImGui::Checkbox("Show Ascii", &showAscii);
			ImGui::Checkbox("Show Symbols", &showSymbols);

			ImGui::Spacing();

			ImGui::TextUnformatted("Hex:");
			ImGui::Indent();
				const char* labels[] = { "LowerCase", "UpperCase" };
				upperCaseHex = ImGuiExt::SelectSwitch(labels, 2, upperCaseHex);
			ImGui::Unindent();

			ImGui::EndPopup();
		}

		if (highlights.size() > highlightCntr + 20) {
			highlights.resize(highlightCntr);
		}
		std::sort(highlights.begin(), highlights.begin() + highlightCntr);
	}
	size_t highlightPtr = 0;
	size_t nextHighlightAddr = highlightCntr > 0 ? highlights[highlightPtr].Addr : -1;

	size_t nextSymbolAddr = -1;
	size_t nextSymbolAddrEnd = -1;
	size_t symbolPtr = 0;
	if (showSymbols && symbolList) {
		if (symbolList->size() > 0) {
			const SymbolTable::Symbol* symbol = symbolList->operator[](symbolPtr);
			nextSymbolAddr = symbol->value;
			nextSymbolAddrEnd = symbol->value + symbol->size;
		}
	}

	if (!ImGui::IsMouseDown(0))
		isSelecting = false;

	if (ImGui::IsMouseClicked(1)) {
		isSelecting = false;
		selectStart = 0;
		selectEnd = 0;
	}

	const ImVec2 sizeAvail = ImGui::GetContentRegionAvail();
	const ImVec2 charSize = ImGui::CalcTextSize(" ");

	constexpr size_t AddrDigits = 4;
	int32_t bytesPerRow;
	size_t charsPerLine;
	{
		const int32_t numCharsFit = sizeAvail.x / charSize.x;
		const int32_t addrCharWidth = AddrDigits + 1;

		if (!showAscii)
			bytesPerRow = (numCharsFit - addrCharWidth) / 3;
		else
			bytesPerRow = (numCharsFit - addrCharWidth - 2) / 4;

		if (bytesPerRow <= 0)
			bytesPerRow = 1;

		if (!showAscii)
			charsPerLine = bytesPerRow * 3;
		else
			charsPerLine = bytesPerRow * 3 + bytesPerRow + 2;
	}

	const size_t numOfRows = (size_t)std::ceil((float)dataLen / (float)bytesPerRow);

	ImDrawList* drawList = ImGui::GetWindowDrawList();

	const ImVec4 defTexCol = ImGui::GetStyleColorVec4(ImGuiCol_Text);
	ImGui::PushStyleVar(ImGuiStyleVar_ItemSpacing, ImVec2(0, 0));
	ImGuiListClipper clipper;
	clipper.Begin(numOfRows);
	while (clipper.Step()) {
		

		for (int line_no = clipper.DisplayStart; line_no < clipper.DisplayEnd; line_no++) {
			size_t lineAddr = line_no * bytesPerRow + dataOff;
			char addrBuf[AddrDigits];
			StringUtils::uIntToHexCase(lineAddr, AddrDigits, addrBuf, upperCaseHex);
			ImGuiExt::TextColored(syntaxColors.Addr, addrBuf, addrBuf+4);
			ImGui::SameLine();
			ImGui::TextUnformatted(":");

			size_t numOfItemsInRow = bytesPerRow;
			bool fillUp = false;
			if (line_no == numOfRows - 1) { // if is last line
				numOfItemsInRow = dataLen % bytesPerRow;
				if (numOfItemsInRow == 0)
					numOfItemsInRow = bytesPerRow;
				else
					fillUp = true;
			}
			
			// bytes
			ImGuiExt::PushTextColor(syntaxColors.bytes);
			for (size_t i = 0; i < numOfItemsInRow; i++) {
				const size_t addrOff = lineAddr + i;
				const uint8_t byte = *(data + addrOff);
				ImGui::SameLine();

				if (isSelected(addrOff)) {
					ImRect nextItemRect = getNextByteRect(charSize);
					drawList->AddRectFilled(
						nextItemRect.Min, nextItemRect.Max,
						IM_COL32(50, 50, 255, 100)
					);
				}

				const SymbolTable::Symbol* symbol = nullptr;
				if (showSymbols) {
					if (addrOff >= nextSymbolAddrEnd) {
						symbolPtr++;
						if (symbolPtr < symbolList->size()) {
							const SymbolTable::Symbol* nextSymbol = symbolList->operator[](symbolPtr);
							nextSymbolAddr = nextSymbol->value;
							nextSymbolAddrEnd = nextSymbol->value + nextSymbol->size;
						}
						else {
							nextSymbolAddr = -1;
							nextSymbolAddrEnd = -1;
						}
					}


					if (addrOff >= nextSymbolAddr && addrOff < nextSymbolAddrEnd) {
						symbol = symbolList->operator[](symbolPtr);
						ImRect nextItemRect = getNextByteRect(charSize);
						if (addrOff + 1 != nextSymbolAddrEnd) // make rect wider to include the ' ' if not last
							nextItemRect.Max.x += charSize.x;

						drawList->AddRectFilled(
							nextItemRect.Min, nextItemRect.Max,
							ImColor(symbol->col)
						);
					}
				}

				ImRect nextItemRect;
				if (nextHighlightAddr == addrOff) {
					nextItemRect = getNextByteRect(charSize);
				}

				//std::string byteStr = stringExtras::intToHex(*(data + addrOff), 2);
				//ImGui::TextUnformatted((" " + byteStr).c_str());
				char byteStr[3];
				byteStr[0] = ' ';
				StringUtils::uIntToHexCase(byte, 2, byteStr + 1, upperCaseHex);
				ImGui::TextUnformatted(byteStr, byteStr + 3);

				if (nextHighlightAddr == addrOff) {
					drawList->AddRect(
						nextItemRect.Min, nextItemRect.Max,
						ImColor(highlights[highlightPtr].col)
					);

					highlightPtr++;
					nextHighlightAddr = highlightPtr < highlightCntr ? highlights[highlightPtr].Addr : -1;
				}

				if (ImGui::IsItemClicked()) {
					isSelecting = true;
					selectStart = addrOff;
					selectEnd = addrOff + 1;
				}
				if (ImGui::IsItemHovered()) {
					if (isSelecting) {
						selectEnd = addrOff + 1;
					}
					else {
						ImGui::BeginTooltip();
						ImGui::TextColored(syntaxColors.Addr, stringExtras::intToHex(lineAddr + i, AddrDigits).c_str());
						ImGui::SameLine();
						ImGui::TextColored(defTexCol, ": ");
						ImGui::SameLine();
						ImGuiExt::TextColored(syntaxColors.bytes, byteStr + 1, byteStr + 3);

						if (symbol) {
							ImGui::TextColored(defTexCol, "Part of Symbol: ");
							ImGui::TextColored(symbol->col, symbol->demangled.c_str());
							ImGui::SameLine();
							ImGui::TextColored(defTexCol, " <+");
							ImGui::SameLine();
							char buf[4];
							StringUtils::uIntToHex(addrOff - symbol->value, 4, buf);
							ImGuiExt::TextColored(defTexCol, buf, buf + 4);
							ImGui::SameLine();
							ImGui::TextColored(defTexCol, ">");
						}

						ImGui::EndTooltip();
					}
				}
			}
			ImGuiExt::PopTextColor();

			if (fillUp) {
				ImGui::SameLine();
				ImGui::TextUnformatted(std::string(3 * (bytesPerRow - numOfItemsInRow), ' ').c_str());
			}


			// ascii
			ImGuiExt::PushTextColor(syntaxColors.ascii);
			if (showAscii) {
				ImGui::SameLine();
				ImGui::TextUnformatted("  ");
				for (size_t i = 0; i < numOfItemsInRow; i++) {
					char c = *(data + (lineAddr + i));
					if (!isprint((unsigned char)c))
						c = '.';
					ImGui::SameLine();
					ImGui::TextUnformatted(&c, &c + 1);
				}
			}
			ImGuiExt::PopTextColor();
			

		}

		
	}
	clipper.End();
	ImGui::PopStyleVar();

	// add missing item spacing
	float itemSpacingAmtV = ImGui::GetStyle().ItemSpacing.y;
	ImGui::SetCursorPosY(ImGui::GetCursorPosY() + itemSpacingAmtV);

	newFrame = true;
	newHighlights = true;
}


/*

ImGui::BeginGroup();

char* textBuf = nullptr;
		if (drawBulk)
			textBuf = new char[bytesPerRow * 3];

if (!drawBulk) {

else { // bulk draw
ImGuiExt::PushTextColor(syntaxColors.bytes);
ImGuiExt::PopTextColor();
size_t texOff = 0;

for (size_t i = 0; i < numOfItemsInRow; i++) {
const size_t addrOff = lineAddr + i;
const uint8_t byte = *(data + addrOff);

textBuf[texOff++] = ' ';
StringUtils::uIntToHex(byte, 2, textBuf + texOff);
texOff += 2;
}

if (fillUp) {
for (size_t i = 0; i < (3 * (bytesPerRow - numOfItemsInRow)); i++)
textBuf[texOff++] = ' ';
if (texOff > bytesPerRow * 3)
abort();
}
ImGui::SameLine();
ImGuiExt::TextColored(syntaxColors.bytes, textBuf, textBuf + texOff);

texOff = 0;
textBuf[texOff++] = ' ';
textBuf[texOff++] = ' ';
if (showAscii) {
for (size_t i = 0; i < numOfItemsInRow; i++) {
char c = *(data + (lineAddr + i));
if (!isprint((unsigned char)c))
c = '.';
textBuf[texOff++] = c;
}
}

ImGui::SameLine();
ImGuiExt::TextColored(syntaxColors.ascii, textBuf, textBuf + texOff);
}


if (drawBulk)
delete[] textBuf;

ImGui::EndGroup();
isHovered = ImGui::IsItemHovered();
*/