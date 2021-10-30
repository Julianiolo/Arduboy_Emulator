#include "hexViewer.h"

#include <cmath>
#include <string>

#include <algorithm>

#include "../Extensions/imguiExt.h"
#include "utils/StringUtils.h"
#include "byteVisualiser.h"

ABB::utils::HexViewer::Highlight::Highlight() {

}
ABB::utils::HexViewer::Highlight::Highlight(size_t Addr, const ImVec4& col) : Addr(Addr), col(col) {

}
bool ABB::utils::HexViewer::Highlight::operator<(const Highlight& rhs) const {
	return this->Addr < rhs.Addr;
}

ABB::utils::HexViewer::SyntaxColors ABB::utils::HexViewer::syntaxColors = { 
	{1,1,0,1}, {0.7f,0.7f,0.9f,1}, {0.5f,0.6f,0.5f,1} 
};

ABB::utils::HexViewer::HexViewer(const uint8_t* data, size_t dataLen) : data(data), dataLen(dataLen) {

}

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
bool ABB::utils::HexViewer::newSymbol(size_t addr, size_t* symbolPtr, size_t nextSymbolAddrEnd) {
	if (addr >= nextSymbolAddrEnd) {
		if (*symbolPtr == 0 && *symbolPtr + 1 < symbolList->size() && addr > symbolList->operator[](*symbolPtr+1)->addrEnd()) {
			size_t from = *symbolPtr;
			size_t to = symbolList->size() - 1;

			while (from != to) {
				const size_t mid = from + ((to - from) / 2);
				auto symbol = symbolList->operator[](mid);
				if (symbol->addrEnd() <= addr) {
					if(from == mid){ // couldnt find a symbol for the current address so we just select the next
						size_t ind = mid;
						while(symbolList->operator[](ind)->size == 0)
							ind++;
						
						*symbolPtr = ind;
						break;
					}
					from = mid;
				}
				else if (symbol->value > addr) {
					to = mid;
				}
				else { // found Symbol candidate
					size_t ind = mid;
					while (symbol->size == 0) { 
						auto newSymbol = symbolList->operator[](--ind); // go back to seach for symbols with size > 0
						if (newSymbol->value > addr)
							break;
						symbol = newSymbol;
					}
						
					if (symbol->size == 0) {                                // if symbol size is still 0
						ind = mid;                                          // jump back to startingpoint
						while (symbol->size == 0) {
							auto newSymbol = symbolList->operator[](++ind); // step forward to search for symbol with size > 0
							if (newSymbol->addrEnd() <= addr)
								break;
							symbol = newSymbol;
						}
					}

					*symbolPtr = ind;
					break;
				}
			}
		}
		else {
			const SymbolTable::Symbol* nextSymbol;
			do {
				(*symbolPtr)++;

				if (*symbolPtr >= symbolList->size())
					break;
				nextSymbol = symbolList->operator[](*symbolPtr);

			} while (nextSymbol->addrEnd() < addr || nextSymbol->size == 0);
		}
		return true;
	}
	return false;
}
size_t ABB::utils::HexViewer::getBytesPerRow(float widthAvail, const ImVec2& charSize) {
	constexpr int32_t addrWidth = AddrDigits + 1;
	int32_t numCharsFit = (int32_t)(widthAvail / charSize.x) - addrWidth;

	size_t bytesPerRow;
	if (!settings.showTex) {
		if (!settings.showAscii)
			bytesPerRow = numCharsFit / 3;
		else if(settings.showAscii && !settings.showTex)
			bytesPerRow = (numCharsFit - 2) / 4;
	}
	else {
		const float lineHeight = charSize.y + vertSpacing;
		const float texPixWidth = lineHeight / 8;
		const float texPixWidthRel = texPixWidth / charSize.x;

		if(!settings.showAscii)
			bytesPerRow = (numCharsFit-1)     /  (3 + texPixWidthRel);
		else 
			bytesPerRow = (numCharsFit-1 - 2) /  (4 + texPixWidthRel);
	}

	if (bytesPerRow <= 0)
		bytesPerRow = 1;

	return bytesPerRow;
}

void ABB::utils::HexViewer::drawHoverInfo(size_t addr, const SymbolTable::Symbol* symbol) {
	float hSpacing = ImGui::GetStyle().ItemSpacing.y;
	ImGui::PushStyleVar(ImGuiStyleVar_ItemSpacing, ImVec2(0, hSpacing));

	char buf[AddrDigits];
	StringUtils::uIntToHexBufCase(addr, AddrDigits, buf, settings.upperCaseHex);
	ImGuiExt::TextColored(syntaxColors.Addr, buf, buf+AddrDigits);
	ImGui::SameLine();
	ImGui::TextUnformatted(": ");
	ImGui::SameLine();
	ImGui::TextColored(syntaxColors.bytes, "%02x", data[addr]);

	ImGui::PopStyleVar();

	if (symbol)
		symbol->draw(addr, data);
}

void ABB::utils::HexViewer::draw(size_t dataAmt, size_t dataOff) {
	if (dataAmt == (size_t)-1)
		dataAmt = dataLen;

	if (!ImGui::IsPopupOpen("symbolHoverInfoPopup"))
		popupAddr = -1;

	if (newFrame) {
		std::string settingsPopupName = "hexViewerSettings" + std::to_string((size_t)data);

		if (ImGui::Button(" Options ", {0, 25}))
			ImGui::OpenPopup(settingsPopupName.c_str());

		if (settings.showDiagram && symbolList) {
			float buttonHeight = ImGui::GetItemRectSize().y;
			ImGui::SameLine();
			SymbolTable::drawSymbolListSizeDiagramm(symbolList, dataLen, &settings.diagramScale, data, ImVec2{0, buttonHeight});
		}

		if (ImGui::BeginPopup(settingsPopupName.c_str())) {
			drawSettings();
			ImGui::EndPopup();
		}

		if (highlights.size() > highlightCntr + 20)
			highlights.resize(highlightCntr);
		std::sort(highlights.begin(), highlights.begin() + highlightCntr);
	}
	size_t highlightPtr = 0;
	size_t nextHighlightAddr = highlightCntr > 0 ? highlights[highlightPtr].Addr : -1;

	size_t nextSymbolAddr = -1, nextSymbolAddrEnd = -1;
	size_t symbolPtr = 0;
	if (settings.showSymbols && symbolList) {
		if (symbolList->size() > 0) {
			const SymbolTable::Symbol* symbol;
			while (true) {
				symbol = symbolList->operator[](symbolPtr);
				if (symbol->size > 0 || symbolPtr >= symbolList->size())
					break;
				symbolPtr++;
			}
			nextSymbolAddr = symbol->value;
			nextSymbolAddrEnd = symbol->value + symbol->size;
		}
	}

	if (!ImGui::IsMouseDown(ImGuiMouseButton_Left))
		isSelecting = false;
	if (ImGui::IsMouseClicked(ImGuiMouseButton_Right)) {
		isSelecting = false;
		selectStart = 0;
		selectEnd = 0;
	}

	const ImVec2 sizeAvail = ImGui::GetContentRegionAvail();
	const ImVec2 charSize = ImGui::CalcTextSize(" ");

	int32_t bytesPerRow = getBytesPerRow(sizeAvail.x, charSize);
	const size_t numOfRows = (size_t)std::ceil((float)dataAmt / (float)bytesPerRow);

	size_t currHoveredAddr = -1;

	ImDrawList* drawList = ImGui::GetWindowDrawList();
	const ImVec4 defTexCol = ImGui::GetStyleColorVec4(ImGuiCol_Text);
	ImGui::PushStyleVar(ImGuiStyleVar_ItemSpacing, ImVec2(0, vertSpacing));

	ImGuiListClipper clipper;
	clipper.Begin(numOfRows);
	clipper.ItemsHeight = charSize.y;

	while (clipper.Step()) {
		for (int line_no = clipper.DisplayStart; line_no < clipper.DisplayEnd; line_no++) {
			size_t lineAddr = line_no * bytesPerRow + dataOff;
			char addrBuf[AddrDigits];
			StringUtils::uIntToHexBufCase(lineAddr, AddrDigits, addrBuf, settings.upperCaseHex);
			ImGuiExt::TextColored(syntaxColors.Addr, addrBuf, addrBuf+4);
			ImGui::SameLine();
			ImGui::TextUnformatted(":");

			size_t numOfItemsInRow = bytesPerRow;
			bool fillUp = false;
			if ((size_t)line_no == numOfRows - 1) { // if is last line
				numOfItemsInRow = dataAmt % bytesPerRow;
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

				const SymbolTable::Symbol* symbol = nullptr;
				if (settings.showSymbols && symbolList) {
					if (newSymbol(addrOff, &symbolPtr, nextSymbolAddrEnd)) {
						if (symbolPtr < symbolList->size()) {
							auto newSymbol = symbolList->operator[](symbolPtr);
							nextSymbolAddr = newSymbol->value;
							nextSymbolAddrEnd = newSymbol->addrEnd();
						}
						else
							nextSymbolAddr = nextSymbolAddrEnd = -1;
					}
					if (addrOff >= nextSymbolAddr && addrOff < nextSymbolAddrEnd) {
						symbol = symbolList->operator[](symbolPtr);
						ImRect nextItemRect = getNextByteRect(charSize);

						if(i != 0) // check if not first item in row
							if (addrOff == nextSymbolAddr)
								nextItemRect.Min.x -= charSize.x / 2;

						if (i != numOfItemsInRow - 1) { // check if not last item in row
							nextItemRect.Max.x += charSize.x; // make rect wider to include the ' '
							if (addrOff + 1 == nextSymbolAddrEnd)
								nextItemRect.Max.x -= charSize.x / 2;
						}

						//if (nextSymbolAddrEnd > (lineAddr + bytesPerRow))
							nextItemRect.Max.y += vertSpacing;
						
						drawList->AddRectFilled( nextItemRect.Min, nextItemRect.Max, ImColor(symbol->col) );
					}
				}

				if (isSelected(addrOff)) {
					ImRect nextItemRect = getNextByteRect(charSize);
					drawList->AddRectFilled( nextItemRect.Min, nextItemRect.Max,IM_COL32(50, 50, 255, 100) );
				}
				
				ImRect nextItemRect;
				if (nextHighlightAddr == addrOff) {
					nextItemRect = getNextByteRect(charSize);
				}

				//std::string byteStr = stringExtras::intToHex(*(data + addrOff), 2);
				//ImGui::TextUnformatted((" " + byteStr).c_str());
				char byteStr[3];
				byteStr[0] = ' ';
				StringUtils::uIntToHexBufCase(byte, 2, byteStr + 1, settings.upperCaseHex);
				if (!symbol)
					ImGui::TextUnformatted(byteStr, byteStr + 3);
				else {
					if (settings.invertTextColOverSymbols)
						ImGuiExt::TextColored({ 1 - symbol->col.x, 1 - symbol->col.y, 1 - symbol->col.z, 1 }, byteStr, byteStr + 3);
					else {
						ImGuiExt::TextColored({0, 0, 0, 1}, byteStr, byteStr + 3);
					}
				}
					

				if (nextHighlightAddr == addrOff) {
					drawList->AddRect( nextItemRect.Min, nextItemRect.Max, ImColor(highlights[highlightPtr].col) );

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
						currHoveredAddr = hoveredAddr = addrOff;

						if (symbol && ImGui::IsItemClicked(ImGuiMouseButton_Right)) {
							ImGui::OpenPopup("symbolHoverInfoPopup");
							
							popupSymbol = symbol;
							popupAddr = addrOff;
						}
						else {
							ImGui::BeginTooltip();
							ImGui::PopStyleVar();
							ImGuiExt::PopTextColor();

							drawHoverInfo(addrOff, symbol);

							ImGuiExt::PushTextColor(syntaxColors.bytes);
							ImGui::PushStyleVar(ImGuiStyleVar_ItemSpacing, ImVec2(0, vertSpacing));
							ImGui::EndTooltip();
						}
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
			if (settings.showAscii) {
				ImGui::SameLine();
				ImGui::TextUnformatted("  ");
				for (size_t i = 0; i < numOfItemsInRow; i++) {
					const size_t addrOff = lineAddr + i;
					
					char c = *(data + addrOff);
					if (!isprint((unsigned char)c))
						c = '.';

					ImGui::SameLine();
					if (addrOff == hoveredAddr)
						drawList->AddRectFilled(
							ImGui::GetCursorScreenPos(),
							{ ImGui::GetCursorScreenPos().x + charSize.x, ImGui::GetCursorScreenPos().y + charSize.y },
							ImColor(ImVec4{0.1f,0.1f,0.5f,1})
						);
					ImGui::TextUnformatted(&c, &c + 1);
					if (ImGui::IsItemHovered())
						currHoveredAddr = addrOff;
				}
			}
			if (fillUp) {
				ImGui::SameLine();
				ImGui::TextUnformatted(std::string(bytesPerRow - numOfItemsInRow, ' ').c_str());
			}
			ImGuiExt::PopTextColor();
			
			if (settings.showTex) {
				ImGui::SameLine();
				ImGui::TextUnformatted(" ");
				for (size_t i = 0; i < numOfItemsInRow; i++) {
					const size_t addrOff = lineAddr + i;
					uint8_t byte = *(data + addrOff);
					ImGui::SameLine();
					ByteVisualiser::DrawByte(byte,charSize.y / 8, charSize.y);
				}
			}
		}
	}
	clipper.End();
	ImGui::PopStyleVar();

	if (popupAddr != (size_t)-1 && ImGui::BeginPopup("symbolHoverInfoPopup")) {
		drawHoverInfo(popupAddr, popupSymbol);
		ImGui::EndPopup();
	}

	// add missing item spacing
	float itemSpacingAmtV = ImGui::GetStyle().ItemSpacing.y;
	ImGui::SetCursorPosY(ImGui::GetCursorPosY() + itemSpacingAmtV);

	hoveredAddr = currHoveredAddr;

	newFrame = true;
	newHighlights = true;
}

void ABB::utils::HexViewer::drawSettings() {
	ImGui::Checkbox("Show Space Diagram", &settings.showDiagram);
	ImGui::Checkbox("Show Ascii", &settings.showAscii);
	ImGui::Checkbox("Show Symbols", &settings.showSymbols);
		if (!settings.showSymbols) ImGui::PushDisabled();
		ImGui::Indent();
		ImGui::Checkbox("Invert Text Color", &settings.invertTextColOverSymbols);
		ImGui::Unindent();
		if (!settings.showSymbols) ImGui::PopDisabled();

	ImGui::Checkbox("Show Texture", &settings.showTex);

	ImGui::Spacing();

	ImGui::TextUnformatted("Hex:");
	ImGui::Indent();
	const char* labels[] = { "LowerCase", "UpperCase" };
	settings.upperCaseHex = ImGuiExt::SelectSwitch(labels, 2, settings.upperCaseHex);
	ImGui::Unindent();
}

/*

//size_t charsPerLine = bytesPerRow * 3;
//if(showAscii) charsPerLine += bytesPerRow + 2; // width of ascii part


ImGui::TextColored(defTexCol, "Part of Symbol: ");
ImGui::TextColored(symbol->col, symbol->demangled.c_str());
ImGui::SameLine();
ImGui::TextColored(defTexCol, " <+");
ImGui::SameLine();
char buf[4];
StringUtils::uIntToHexBuf(addrOff - symbol->value, 4, buf);
ImGuiExt::TextColored(defTexCol, buf, buf + 4);
ImGui::SameLine();
ImGui::TextColored(defTexCol, ">");



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