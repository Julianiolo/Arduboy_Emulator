#include "hexViewer.h"

#include <cmath>
#include <string>
#include <cinttypes>
#include <algorithm>

#include "../backends/SymbolBackend.h"

#include "../Extensions/imguiExt.h"
#include "StringUtils.h"
#include "byteVisualiser.h"

ABB::utils::HexViewer::SyntaxColors ABB::utils::HexViewer::syntaxColors;
ABB::utils::HexViewer::Settings ABB::utils::HexViewer::settings;

ABB::utils::HexViewer::HexViewer(const uint8_t* data, size_t dataLen, const A32u4::ATmega32u4* mcu, uint8_t dataType) : mcu(mcu), data(data), dataLen(dataLen), dataType(dataType) {

}

bool ABB::utils::HexViewer::isSelected(size_t addr) const {
	return addr >= selectStart && addr < selectEnd;
}
void ABB::utils::HexViewer::setSymbolList(const A32u4::SymbolTable::SymbolList& list) {
	symbolList = &list;
}
void ABB::utils::HexViewer::setEditCallback(DataUtils::EditMemory::SetValueCallB func, void* userData) {
	eb.setEditCallB(func, userData);
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
bool ABB::utils::HexViewer::newSymbol(A32u4::SymbolTable::symb_size_t addr, size_t* symbolPtr, A32u4::SymbolTable::symb_size_t nextSymbolAddrEnd) {
	if (addr >= nextSymbolAddrEnd) {
		if (*symbolPtr == 0 && *symbolPtr + 1 < symbolList->size() && addr > mcu->symbolTable.getSymbol(*symbolList,(size_t)( *symbolPtr + 1 ))->addrEnd()) {
			size_t from = (size_t)*symbolPtr;
			size_t to = symbolList->size() - 1;

			while (from != to) {
				const size_t mid = from + ((to - from) / 2);
				auto symbol = mcu->symbolTable.getSymbol(*symbolList,mid);
				if (symbol->addrEnd() <= addr) {
					if(from == mid){ // couldnt find a symbol for the current address so we just select the next
						size_t ind = mid;
						while(mcu->symbolTable.getSymbol(*symbolList,ind)->size == 0)
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
						auto newSymbol = mcu->symbolTable.getSymbol(*symbolList,--ind); // go back to seach for symbols with size > 0
						if (newSymbol->value > addr)
							break;
						symbol = newSymbol;
					}
						
					if (symbol->size == 0) {                                // if symbol size is still 0
						ind = mid;                                          // jump back to startingpoint
						while (symbol->size == 0) {
							auto newSymbol = mcu->symbolTable.getSymbol(*symbolList,++ind); // step forward to search for symbol with size > 0
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
			const A32u4::SymbolTable::Symbol* nextSymbol;
			do {
				(*symbolPtr)++;

				if (*symbolPtr >= symbolList->size())
					break;
				nextSymbol = mcu->symbolTable.getSymbol(*symbolList,*symbolPtr);

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
		else
			bytesPerRow = (numCharsFit - 2) / 4;
	}
	else {
		const float lineHeight = charSize.y + settings.vertSpacing;
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

void ABB::utils::HexViewer::drawHoverInfo(size_t addr, const A32u4::SymbolTable::Symbol* symbol) {
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
		SymbolBackend::drawSymbol(symbol, addr, data);
}

void ABB::utils::HexViewer::draw(size_t dataAmt, size_t dataOff) {
	if (dataAmt == (size_t)-1)
		dataAmt = dataLen;

	if (!ImGui::IsPopupOpen("symbolHoverInfoPopup"))
		popupAddr = -1;

	if (newFrame) {
#if 0
		std::string settingsPopupName = "hexViewerSettings" + std::to_string((size_t)data);

		if (ImGui::Button(" Options ", {0, 25}))
			ImGui::OpenPopup(settingsPopupName.c_str());
#endif

		if (settings.showDiagram && symbolList && mcu) {
			float buttonHeight = ImGui::GetItemRectSize().y;
			ImGui::SameLine();
			SymbolBackend::drawSymbolListSizeDiagramm(mcu->symbolTable, *symbolList, dataLen, &settings.diagramScale, data, ImVec2{0, buttonHeight});
		}

#if 0
		if (ImGui::BeginPopup(settingsPopupName.c_str())) {
			drawSettings();
			ImGui::EndPopup();
		}
#endif
	}

	A32u4::SymbolTable::symb_size_t nextSymbolAddr = -1, nextSymbolAddrEnd = -1;
	size_t symbolPtr = 0;
	if (settings.showSymbols && symbolList && mcu) {
		if (symbolList->size() > 0) {
			const A32u4::SymbolTable::Symbol* symbol;
			while (true) {
				symbol = mcu->symbolTable.getSymbol(*symbolList,symbolPtr);
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
	//const ImVec4 defTexCol = ImGui::GetStyleColorVec4(ImGuiCol_Text);
	ImGui::PushStyleVar(ImGuiStyleVar_ItemSpacing, ImVec2(0, settings.vertSpacing));

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

				const A32u4::SymbolTable::Symbol* symbol = nullptr;
				if (settings.showSymbols && symbolList) {
					if (newSymbol(addrOff, &symbolPtr, nextSymbolAddrEnd)) {
						if (symbolPtr < symbolList->size()) {
							auto newSymbol = mcu->symbolTable.getSymbol(*symbolList,symbolPtr);
							nextSymbolAddr = newSymbol->value;
							nextSymbolAddrEnd = newSymbol->addrEnd();
						}
						else
							nextSymbolAddr = nextSymbolAddrEnd = -1;
					}
					if (addrOff >= nextSymbolAddr && addrOff < nextSymbolAddrEnd) {
						symbol = mcu->symbolTable.getSymbol(*symbolList,symbolPtr);
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
							max.y += settings.vertSpacing;
						
						drawList->AddRectFilled( min, max, ImColor(*SymbolBackend::getSymbolColor(symbol)) );
					}
				}

				// highlight address stack indicators (indicators that bytes in ram are addresses pushed onto stack by instructions e.g. "call")
				if (dataType == DataType_Ram && mcu != nullptr && addrOff >= A32u4::DataSpace::Consts::ISRAM_start && mcu->debugger.getAddressStackIndicators()[addrOff - A32u4::DataSpace::Consts::ISRAM_start]) {
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
					if (settings.invertTextColOverSymbols) {
						ImVec4* col = SymbolBackend::getSymbolColor(symbol);
						ImGuiExt::TextColored({ 1 - col->x, 1 - col->y, 1 - col->z, 1 }, byteStr, byteStr + 3);
					} else {
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
					if (eb.canEdit()) {
						eb.openEditPopup(data, dataLen, (addrmcu_t)addrOff);
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
							ImGui::PushStyleVar(ImGuiStyleVar_ItemSpacing, ImVec2(0, settings.vertSpacing));
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

void ABB::utils::HexViewer::drawEditPopup() {
	eb.draw();
}

void ABB::utils::HexViewer::EditBytes::setEditCallB(DataUtils::EditMemory::SetValueCallB callB, void* userData) {
	setValueCallB = callB;
	setValueUserData = userData;
}
bool ABB::utils::HexViewer::EditBytes::canEdit() const {
	return setValueCallB != nullptr;
}

void ABB::utils::HexViewer::EditBytes::openEditPopup(const uint8_t* data_, size_t dataLen_, addrmcu_t addr) {
	ImGui::OpenPopup("hexViewEdit");

	data = data_;
	dataLen = dataLen_;

	editAddr = addr;
	editStr = "";
	editValTemp = DataUtils::EditMemory::readValue(data + addr, dataLen - addr, editType, editEndian);
}
void ABB::utils::HexViewer::EditBytes::editPopupError(const char* msg) {
	ImGui::OpenPopup("hexViewEditError");
	editErrorStr = msg;
}
void ABB::utils::HexViewer::EditBytes::drawTypeChoose(size_t maxByteLen) {
	const char* lables[] = {"8bit","16bit","32bit","64bit","float","double","string","byte stream"};
	constexpr size_t sizes[] = {1,      2,      4,      8,      4,       8,       1,            1};

	if (sizes[editType] > maxByteLen) editType = DataUtils::EditMemory::EditType_8bit;

	if (ImGui::BeginCombo("Edit as", lables[editType])) {
		for (int i = 0; i < DataUtils::EditMemory::EditType_COUNT; i++)
			if (sizes[i] <= maxByteLen)
				if (ImGui::Selectable(lables[i], i == editType))
					editType = i;
			
		ImGui::EndCombo();
	}

	// edit data type is not float or double (or string/stream)
	bool useInteger =
		editType == DataUtils::EditMemory::EditType_8bit ||
		editType == DataUtils::EditMemory::EditType_16bit ||
		editType == DataUtils::EditMemory::EditType_32bit ||
		editType == DataUtils::EditMemory::EditType_64bit;

	bool useSigned = (editBase == DataUtils::EditMemory::EditBase_10) && editSigned;
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
			for (int i = 0; i < DataUtils::EditMemory::EditBase_COUNT; i++)
				if (ImGui::Selectable(lablesBase[i], i == editBase))
					editBase = i;
			ImGui::EndCombo();
		}
		ImGui::PopItemWidth();

		const char* formatsBase16[] = {
			"%02x", "%04x", "%08x", "%016x"
		};
		switch (editBase) {
			case DataUtils::EditMemory::EditBase_2:
			case DataUtils::EditMemory::EditBase_10:
				format = 0;
				break;
			case DataUtils::EditMemory::EditBase_16:
				format = formatsBase16[editType];
				break;
		}
	}

	if (editType != DataUtils::EditMemory::EditType_8bit) {
		if (editType == DataUtils::EditMemory::EditType_string || editType == DataUtils::EditMemory::EditType_bytestream) {
			ImGui::SameLine();
			ImGui::Checkbox("write reversed", &editReversed);
		}
		else {
			ImGui::SameLine();
			ImGui::PushItemWidth(100);
			const char* lablesEndian[] = {"Little", "Big"};
			if (ImGui::BeginCombo("Endian", lablesEndian[editEndian])) {
				for (int i = 0; i < DataUtils::EditMemory::EditEndian_COUNT; i++)
					if (ImGui::Selectable(lablesEndian[i], i == editEndian))
						editEndian = i;
				ImGui::EndCombo();
			}
			ImGui::PopItemWidth();
		}
	}

	// only use Signed Box when editing in base 10 and editing an integer
	if (editBase == DataUtils::EditMemory::EditBase_10 && useInteger) {
		ImGui::SameLine();
		ImGui::Checkbox("Signed", &editSigned);
	}

	if (editType == DataUtils::EditMemory::EditType_string) {
		bool enabled = maxByteLen > 1;
		if (!enabled) ImGui::BeginDisabled();

		ImGui::Checkbox("Null Terminated", &editStringTerm);

		if (!enabled) {
			ImGui::EndDisabled();
			if (ImGui::IsItemHovered()) {
				ImGui::SetTooltip("Can't null-terminate the string, because only %" MCU_PRIuSIZE " bytes can be written", maxByteLen);
			}
		}
	}


	if (editType != DataUtils::EditMemory::EditType_string && editType != DataUtils::EditMemory::EditType_bytestream) {
		ImGuiInputTextFlags flags = ImGuiInputTextFlags_None;
		if (editBase == DataUtils::EditMemory::EditBase_16)
			flags |= ImGuiInputTextFlags_CharsHexadecimal;
		ImGui::InputScalar("hexViewEditInput", types[editType], &editValTemp, 0, 0, format, flags);
	}
	else {
		if (ImGuiExt::InputTextString("hexViewEditInputStr", 0, &editStr)) {
			if (editType == DataUtils::EditMemory::EditType_string && (editStr.size() + (editStringTerm ? 1 : 0)) > maxByteLen)
				editStr = editStr.substr(0, maxByteLen-(editStringTerm ? 1 : 0));
			if (editType == DataUtils::EditMemory::EditType_bytestream && (editStr.size() + 1) / 2 > maxByteLen) 
				editStr = editStr.substr(0, maxByteLen * 2);
		}
		MCU_ASSERT(editStr.size() == 0 || editStr[editStr.size() - 1] != 0);
	}
}


void ABB::utils::HexViewer::EditBytes::writeVal() {
	if (editType == DataUtils::EditMemory::EditType_bytestream) {
		if (editStr.size() % 2 == 1) {
			editPopupError("bytestream invalid, must be of even length!");
			return;
		}
	}
	bool success = DataUtils::EditMemory::writeValue(editAddr, editValTemp, editStr, setValueCallB, setValueUserData, dataLen, editStringTerm, editReversed, editType, editEndian);
	if (!success) {
		editPopupError("Couldn't Edit Value due to an unexpected error");
	}
}

void ABB::utils::HexViewer::EditBytes::draw() {
	if (!setValueCallB)
		return;

	if (ImGui::BeginPopup("hexViewEdit")) {
		ImGui::Text("Edit Value at 0x%" MCU_PRIxSIZE, editAddr);
		ImGui::Separator();

		drawTypeChoose(dataLen-editAddr);

		if (ImGui::Button("OK")) {
			writeVal();
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


void ABB::utils::HexViewer::drawSettings() {
	ImGui::SliderFloat("Vertical Spacing", &settings.vertSpacing, 0, 10);
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
	{
		const char* labels[] = { "LowerCase", "UpperCase" };
		size_t val = settings.upperCaseHex;
		ImGuiExt::SelectSwitch(labels, 2, &val);
		settings.upperCaseHex = val;
	}
	ImGui::Unindent();

	ImGui::Separator();
	if(ImGui::TreeNode("Syntax colors")){
		const float resetBtnWidth = ImGui::CalcTextSize("Reset").x + ImGui::GetStyle().FramePadding.x * 2;
#define COLOR_MACRO(str,_x_)	ImGui::ColorEdit3(str, (float*)&syntaxColors. _x_, ImGuiColorEditFlags_NoInputs | ImGuiColorEditFlags_NoAlpha); \
								ImGui::SameLine(); \
								ImGui::SetCursorPosX(ImGui::GetCursorPosX() + (ImGui::GetContentRegionAvail().x-resetBtnWidth)); \
								if(ImGui::Button("Reset"))syntaxColors. _x_ = defSyntaxColors. _x_;

		COLOR_MACRO("Addr", Addr);
		COLOR_MACRO("Bytes", bytes);
		COLOR_MACRO("Ascii", ascii);
#undef COLOR_MACRO
		ImGui::TreePop();
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