#include "hexViewer.h"

#include <cmath>
#include <string>
#include <cinttypes>

#include <algorithm>

#include "../Extensions/imguiExt.h"
#include "utils/StringUtils.h"
#include "byteVisualiser.h"

ABB::utils::HexViewer::SyntaxColors ABB::utils::HexViewer::syntaxColors = { 
	{1,1,0,1}, {0.7f,0.7f,0.9f,1}, {0.5f,0.6f,0.5f,1} 
};

ABB::utils::HexViewer::HexViewer(const uint8_t* data, size_t dataLen, const A32u4::ATmega32u4* mcu) : mcu(mcu), data(data), dataLen(dataLen) {

}

bool ABB::utils::HexViewer::isSelected(size_t addr) const {
	return addr >= selectStart && addr < selectEnd;
}
void ABB::utils::HexViewer::setSymbolList(SymbolTable::SymbolListPtr list) {
	symbolList = list;
}
void ABB::utils::HexViewer::setEditCallback(SetValueCallB func, void* userData) {
	eb.setValueCallB = func;
	eb.setValueUserData = userData;
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
bool ABB::utils::HexViewer::newSymbol(SymbolTable::symb_size_t addr, size_t* symbolPtr, SymbolTable::symb_size_t nextSymbolAddrEnd) {
	if (addr >= nextSymbolAddrEnd) {
		if (*symbolPtr == 0 && *symbolPtr + 1 < symbolList->size() && addr > symbolList->operator[]((size_t)( *symbolPtr + 1 ))->addrEnd()) {
			size_t from = (size_t)*symbolPtr;
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
			bytesPerRow = (size_t)((numCharsFit-1)     /  (3 + texPixWidthRel));
		else 
			bytesPerRow = (size_t)((numCharsFit-1 - 2) /  (4 + texPixWidthRel));
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
	}

	SymbolTable::symb_size_t nextSymbolAddr = -1, nextSymbolAddrEnd = -1;
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

	int32_t bytesPerRow = (int32_t)getBytesPerRow(sizeAvail.x, charSize);
	const size_t numOfRows = (size_t)std::ceil((float)dataAmt / (float)bytesPerRow);

	size_t currHoveredAddr = -1;

	ImDrawList* drawList = ImGui::GetWindowDrawList();
	const ImVec4 defTexCol = ImGui::GetStyleColorVec4(ImGuiCol_Text);
	ImGui::PushStyleVar(ImGuiStyleVar_ItemSpacing, ImVec2(0, vertSpacing));

	ImGuiListClipper clipper;
	clipper.Begin((int)numOfRows);
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

				const ImRect nextItemRect = getNextByteRect(charSize);

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
						ImVec2 min = nextItemRect.Min, max = nextItemRect.Max;

						if(i != 0) // check if not first item in row
							if (addrOff == nextSymbolAddr)
								min.x -= charSize.x / 2;

						if (i != numOfItemsInRow - 1) { // check if not last item in row
							max.x += charSize.x; // make rect wider to include the ' '
							if (addrOff + 1 == nextSymbolAddrEnd)
								max.x -= charSize.x / 2;
						}

						//if (nextSymbolAddrEnd > (lineAddr + bytesPerRow))
							max.y += vertSpacing;
						
						drawList->AddRectFilled( min, max, ImColor(symbol->col) );
					}
				}

				// highlight address stack indicators (indicators that bytes in ram are addresses pushed onto stack by instructions e.g. "call")
				if (mcu != nullptr && addrOff >= A32u4::DataSpace::Consts::ISRAM_start && mcu->debugger.getAddressStackIndicators()[addrOff - A32u4::DataSpace::Consts::ISRAM_start]) {
					uint8_t val = mcu->debugger.getAddressStackIndicators()[addrOff - A32u4::DataSpace::Consts::ISRAM_start];
					ImVec2 min = nextItemRect.Min, max = nextItemRect.Max;
					if (val == 1)
						min.x -= charSize.x/2;
					if (val == 2)
						max.x += charSize.x/2;
					drawList->AddRectFilled( min, max, IM_COL32(0,255,50,70) );
				}

				if (isSelected(addrOff)) {
					ImRect nextItemRect = getNextByteRect(charSize);
					drawList->AddRectFilled( nextItemRect.Min, nextItemRect.Max,IM_COL32(50, 50, 255, 100) );
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
					

				if (mcu != nullptr && mcu->cpu.getPCAddr() == addrOff) {
					drawList->AddRect( nextItemRect.Min, nextItemRect.Max, IM_COL32(255,0,0,255) );
				}

				if (ImGui::IsItemClicked(ImGuiMouseButton_Left) && ImGui::GetIO().KeyShift) {
						isSelecting = true;
						selectStart = addrOff;
						selectEnd = addrOff + 1;
				}
				else if (ImGui::IsItemClicked(ImGuiMouseButton_Right)) {
					if (eb.setValueCallB != nullptr) {
						eb.openEditPopup((addrmcu_t)addrOff);
					}
				}

				if (ImGui::IsItemHovered()) {
					if (isSelecting) {
						selectEnd = addrOff + 1;
					}
					else {
						currHoveredAddr = hoveredAddr = addrOff;

						if (symbol && ImGui::IsItemClicked(ImGuiMouseButton_Left) && !ImGui::GetIO().KeyShift) {
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

	drawEditPopup();

	// add missing item spacing
	float itemSpacingAmtV = ImGui::GetStyle().ItemSpacing.y;
	ImGui::SetCursorPosY(ImGui::GetCursorPosY() + itemSpacingAmtV);

	hoveredAddr = currHoveredAddr;

	newFrame = true;
}

void ABB::utils::HexViewer::drawSettings() {
	ImGui::Checkbox("Show Space Diagram", &settings.showDiagram);
	ImGui::Checkbox("Show Ascii", &settings.showAscii);
	ImGui::Checkbox("Show Symbols", &settings.showSymbols);
		if (!settings.showSymbols) ImGui::BeginDisabled();
		ImGui::Indent();
		ImGui::Checkbox("Invert Text Color", &settings.invertTextColOverSymbols);
		ImGui::Unindent();
		if (!settings.showSymbols) ImGui::EndDisabled();

	ImGui::Checkbox("Show Texture", &settings.showTex);

	ImGui::Spacing();

	ImGui::TextUnformatted("Hex:");
	ImGui::Indent();
	const char* labels[] = { "LowerCase", "UpperCase" };
	settings.upperCaseHex = ImGuiExt::SelectSwitch(labels, 2, settings.upperCaseHex);
	ImGui::Unindent();
}
void ABB::utils::HexViewer::drawEditPopup() {
	eb.draw();
}

void ABB::utils::HexViewer::EditBytes::openEditPopup(addrmcu_t addr) {
	ImGui::OpenPopup("hexViewEdit");
	editAddr = addr;
	editStr = "";
}
void ABB::utils::HexViewer::EditBytes::editPopupError(const char* msg) {
	ImGui::OpenPopup("hexViewEditError");
	editErrorStr = msg;
}
void ABB::utils::HexViewer::EditBytes::drawTypeChoose() {
	const char* lables[] = {"8bit","16bit","32bit","64bit","float","double","string","byte stream"};
	if (ImGui::BeginCombo("Edit as", lables[editType])) {
		for (int i = 0; i < EditType_COUNT; i++)
			if (ImGui::Selectable(lables[i], i == editType))
				editType = i;
		ImGui::EndCombo();
	}
}
uint64_t ABB::utils::HexViewer::EditBytes::readValue(const uint8_t* data, size_t dataLen, uint8_t editType, uint8_t editEndian) {
	uint64_t res = 0;
	uint16_t bytesToCopy = 0;
	switch (editType) {
		case EditType_8bit:
			res = *data;
			break;
		case EditType_16bit:
			bytesToCopy = 2;
			goto read_multi;
		case EditType_32bit:
		case EditType_float:
			bytesToCopy = 4;
			goto read_multi;
		case EditType_64bit:
		case EditType_double:
			bytesToCopy = 8;
			goto read_multi;

		read_multi:
			for (addrmcu_t i = 0; i < bytesToCopy; i++) {
				addrmcu_t offset = editEndian == EditEndian_Big ? (addrmcu_t)i : (bytesToCopy - (addrmcu_t)i - 1);
				res <<= 8;
				res |= data[offset];
			}
			break;
	}
	return res;
}
void ABB::utils::HexViewer::EditBytes::writeValue(uint64_t val) {
	uint16_t bytesToCopy = 0;
	switch (editType) {
		case EditType_8bit:
			setValueCallB((addrmcu_t)editAddr, (reg_t)val, setValueUserData);
			break;

		case EditType_16bit:
			bytesToCopy = 2;
			goto edit_cpy_tmpval;
		case EditType_32bit:
			bytesToCopy = 4;
			goto edit_cpy_tmpval;
		case EditType_64bit:
			bytesToCopy = 8;
			goto edit_cpy_tmpval;

		case EditType_float:
			val = StringUtils::stof(editStr.c_str(), editStr.c_str() + editStr.size(), 8, 23);
			bytesToCopy = 4;
			goto edit_cpy_tmpval;
		case EditType_double:
			val = StringUtils::stof(editStr.c_str(), editStr.c_str() + editStr.size(), 11, 52);
			bytesToCopy = 8;
			goto edit_cpy_tmpval;

		edit_cpy_tmpval:
			for (addrmcu_t i = 0; i < bytesToCopy; i++) {
				addrmcu_t offset = editEndian == EditEndian_Big ? (addrmcu_t)i : (bytesToCopy - (addrmcu_t)i - 1);
				setValueCallB((addrmcu_t)editAddr+offset, (reg_t)((val>>(i*8)) & 0xFF), setValueUserData);
			}
			break;

		case EditType_string:
			{
				const char* str = editStr.c_str();
				size_t len = editStr.length();
				if (len > 0 && !editStringTerm)
					len--;

				for (size_t i = 0; i < len; i++) {
					addrmcu_t offset = editEndian == EditEndian_Big ? (addrmcu_t)i : (bytesToCopy - (addrmcu_t)i - 1);
					setValueCallB((addrmcu_t)editAddr+offset, (reg_t)str[i], setValueUserData);
				}
				break;
			}
		

		case EditType_bytestream:
			if (editStr.size() % 2 != 1) {
				editPopupError("bytestream invalid, must be of even length!");
				break;
			}
			for (size_t i = 0; i < editStr.length()/2; i++) {
				addrmcu_t offset = editEndian == EditEndian_Big ? (addrmcu_t)i : (bytesToCopy - (addrmcu_t)i - 1);
				reg_t byte = StringUtils::hexStrToUIntLen<reg_t>(editStr.c_str() + i * 2, 2);
				setValueCallB((addrmcu_t)editAddr+offset, byte, setValueUserData);
			}
			break;
	}
}
void ABB::utils::HexViewer::EditBytes::draw() {
	if (!setValueCallB)
		return;

	if (ImGui::BeginPopup("hexViewEdit")) {
		ImGui::Text("Edit Value at 0x%" MCU_PRIxSIZE, editAddr);
		ImGui::Separator();

		drawTypeChoose();

		// edit data type is not float or double
		bool useInteger = editType == EditType_8bit || editType == EditType_16bit || editType == EditType_32bit || editType == EditType_64bit;	

		bool useSigned = (editBase == EditBase_10) && editSigned;
		const ImGuiDataType types[] = {
			useSigned ? ImGuiDataType_S8 : ImGuiDataType_U8,
			useSigned ? ImGuiDataType_S16 : ImGuiDataType_U16,
			useSigned ? ImGuiDataType_S32 : ImGuiDataType_U32,
			useSigned ? ImGuiDataType_S64 : ImGuiDataType_U64,
			ImGuiDataType_Float, ImGuiDataType_Double
		};


		// select Base
		const char* format = 0;
		if (useInteger) {
			ImGui::PushItemWidth(70);
			const char* lablesBase[] = {"Bin", "Dec", "Hex"};
			if (ImGui::BeginCombo("Base", lablesBase[editBase])) {
				for (int i = 0; i < EditBase_COUNT; i++)
					if (ImGui::Selectable(lablesBase[i], i == editBase))
						editBase = i;
				ImGui::EndCombo();
			}
			ImGui::PopItemWidth();

			const char* formatsBase16[] = {
				"%02x", "%04x", "%08x", "%016x"
			};
			switch (editBase) {
			case EditBase_2:
			case EditBase_10:
				format = 0;
				break;
			case EditBase_16:
				format = formatsBase16[editType];
				break;
			}
		}

		if (editType != EditType_8bit) {
			ImGui::SameLine();
			ImGui::PushItemWidth(100);
			const char* lablesEndian[] = {"Little", "Big"};
			if (ImGui::BeginCombo("Endian", lablesEndian[editEndian])) {
				for (int i = 0; i < EditEndian_COUNT; i++)
					if (ImGui::Selectable(lablesEndian[i], i == editEndian))
						editEndian = i;
				ImGui::EndCombo();
			}
			ImGui::PopItemWidth();
		}

		// only use Signed Box when editing in base 10 and editing an integer
		if (editBase == EditBase_10 && useInteger) {
			ImGui::SameLine();
			ImGui::Checkbox("Signed", &editSigned);
		}

		if (editType == EditType_string) {
			ImGui::Checkbox("Null Terminated", &editStringTerm);
		}


		if (editType != EditType_string && editType != EditType_bytestream) {
			ImGuiInputTextFlags flags = ImGuiInputTextFlags_None;
			if (editBase == EditBase_16)
				flags |= ImGuiInputTextFlags_CharsHexadecimal;
			ImGui::InputScalar("hexViewEditInput", types[editType], &editValTemp, 0, 0, format, flags);
		}
		else {
			ImGuiExt::InputTextString("hexViewEditInputStr", 0, &editStr);
		}


		if (ImGui::Button("OK")) {
			writeValue(editValTemp);
			editValTemp = 0;
			ImGui::CloseCurrentPopup();
		}
		ImGui::SameLine();
		if(ImGui::Button("Cancel")) {
			ImGui::CloseCurrentPopup();
		}


		ImGui::EndPopup();
	}

	if (ImGui::BeginPopup("hexViewEditError")) {
		ImGui::TextUnformatted(editErrorStr.c_str());
		if (ImGui::Button("OK", { ImGui::GetContentRegionAvail().x, 0 })) {
			editErrorStr = "";
			ImGui::CloseCurrentPopup();
		}
		ImGui::EndPopup();
	}
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