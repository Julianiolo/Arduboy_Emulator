#include "hexViewer.h"

#include <cmath>
#include <string>
#include <cinttypes>
#include <algorithm>

#include "../backends/SymbolBackend.h"

#include "../Extensions/imguiExt.h"
#include "StringUtils.h"
#include "DataUtilsSize.h"

#include "byteVisualiser.h"


ABB::utils::HexViewer::SyntaxColors ABB::utils::HexViewer::syntaxColors;
const ABB::utils::HexViewer::SyntaxColors ABB::utils::HexViewer::defSyntaxColors;
ABB::utils::HexViewer::Settings ABB::utils::HexViewer::settings;

ABB::utils::HexViewer::HexViewer(size_t size, uint8_t dataType) : dataType(dataType), readViz(size, 0), writeViz(size, 0) {

}

bool ABB::utils::HexViewer::isSelected(size_t addr) const {
	return addr >= selectStart && addr < selectEnd;
}
void ABB::utils::HexViewer::setEditCallback(DataUtils::EditMemory::SetValueCallB func, void* userData) {
	eb.setEditCallB(func, userData);
}

ImRect ABB::utils::HexViewer::getNextByteRect(const ImVec2& charSize) const {
	ImVec2 cursorScreenPos = ImGui::GetCursorScreenPos();
	return ImRect(
		{ cursorScreenPos.x + charSize.x , cursorScreenPos.y },
		{ cursorScreenPos.x + charSize.x * 3, cursorScreenPos.y + charSize.y }
	);
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

void ABB::utils::HexViewer::drawHoverInfo(size_t addr, const EmuUtils::SymbolTable::Symbol* symbol, const uint8_t* data) {
	float hSpacing = ImGui::GetStyle().ItemSpacing.y;
	ImGui::PushStyleVar(ImGuiStyleVar_ItemSpacing, ImVec2(0, hSpacing));

	char buf[AddrDigits];
	StringUtils::uIntToHexBufCase(addr, buf, settings.upperCaseHex, AddrDigits);
	ImGuiExt::TextColored(syntaxColors.Addr, buf, buf+AddrDigits);
	ImGui::SameLine();
	ImGui::TextUnformatted(": ");
	ImGui::SameLine();
	ImGui::TextColored(syntaxColors.bytes, "%02x", data[addr]);

	ImGui::PopStyleVar();

	if (symbol)
		SymbolBackend::drawSymbol(symbol, addr, data);
}

void ABB::utils::HexViewer::draw(const uint8_t* data, size_t dataLen, const EmuUtils::SymbolTable* symbolTable, const EmuUtils::SymbolTable::SymbolList* symbolList, const uint64_t* newReads, const uint64_t* newWrites) {
	for (size_t i = 0; i < readViz.size(); i++)
		readViz[i] *= 0.99f;
	for (size_t i = 0; i < writeViz.size(); i++)
		writeViz[i] *= 0.99f;

	if (newReads) {
		for (size_t i = 0; i < readViz.size(); i++) {
			readViz[i] += newReads[i];
		}
	}
	if (newWrites) {
		for (size_t i = 0; i < writeViz.size(); i++) {
			writeViz[i] += newWrites[i];
		}
	}


	if (!ImGui::IsPopupOpen("symbolHoverInfoPopup"))
		popupAddr = -1;

#if 0
	if (newFrame) {
		std::string settingsPopupName = "hexViewerSettings" + std::to_string((size_t)data);

		if (ImGui::Button(" Options ", {0, 25}))
			ImGui::OpenPopup(settingsPopupName.c_str());

		if (ImGui::BeginPopup(settingsPopupName.c_str())) {
			drawSettings();
			ImGui::EndPopup();
		}
	}
#endif

	if (settings.showDiagram && symbolTable && symbolList) {
		float buttonHeight = ImGui::GetItemRectSize().y;
		ImGui::SameLine();
		SymbolBackend::drawSymbolListSizeDiagramm(*symbolTable, *symbolList, dataLen, &settings.diagramScale, data, ImVec2{0, buttonHeight});
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
	const size_t numOfRows = (size_t)std::ceil((float)dataLen / (float)bytesPerRow);

	size_t currHoveredAddr = -1;

	ImDrawList* drawList = ImGui::GetWindowDrawList();
	//const ImVec4 defTexCol = ImGui::GetStyleColorVec4(ImGuiCol_Text);
	ImGui::PushStyleVar(ImGuiStyleVar_ItemSpacing, ImVec2(0, settings.vertSpacing));


	EmuUtils::SymbolTable::SymbolFeeder feeder(symbolTable,symbolList);


	ImGuiListClipper clipper;
	clipper.Begin((int)numOfRows);
	clipper.ItemsHeight = charSize.y;

	while (clipper.Step()) {
		for (int line_no = clipper.DisplayStart; line_no < clipper.DisplayEnd; line_no++) {
			size_t lineAddr = line_no * bytesPerRow;
			char addrBuf[AddrDigits];
			StringUtils::uIntToHexBufCase(lineAddr, addrBuf, settings.upperCaseHex, AddrDigits);
			ImGuiExt::TextColored(syntaxColors.Addr, addrBuf, addrBuf+4);
			ImGui::SameLine();
			ImGui::TextUnformatted(":");

			size_t numOfItemsInRow = bytesPerRow;
			bool fillUp = false;
			if ((size_t)line_no == numOfRows - 1) { // if is last line
				numOfItemsInRow = dataLen % bytesPerRow;
				if (numOfItemsInRow == 0) {
					numOfItemsInRow = bytesPerRow;
				}
				else {
					fillUp = true;
				}
			}
			
			// bytes
			ImGuiExt::PushTextColor(syntaxColors.bytes);
			for (size_t i = 0; i < numOfItemsInRow; i++) {
				const size_t addrOff = lineAddr + i;
				const uint8_t byte = *(data + addrOff);
				ImGui::SameLine();

				const ImRect nextItemRect = getNextByteRect(charSize);

				if (settings.showRWViz) {
					float val = std::max(readViz[addrOff], writeViz[addrOff]);
					float bright = std::logf(val)*0.2f;
					if (bright > 1)
						bright = 1;

					if (bright > 0.05)
						drawList->AddRectFilled(nextItemRect.Min, nextItemRect.Max, ImColor(ImVec4(bright, bright, bright, 1)));
				}

				const EmuUtils::SymbolTable::Symbol* symbol = nullptr;
				if (settings.showSymbols) {
					symbol = feeder.getSymbol(addrOff);
					if (symbol) {
						ImVec2 min = nextItemRect.Min, max = nextItemRect.Max;

						if(i != 0) // check if not first item in row
							if (addrOff == symbol->value)
								min.x -= charSize.x / 2;

						if (i != numOfItemsInRow - 1) { // check if not last item in row
							max.x += charSize.x; // make rect wider to include the ' '
							if (addrOff + 1 == symbol->value + symbol->size)
								max.x -= charSize.x / 2;
						}

						//if (nextSymbolAddrEnd > (lineAddr + bytesPerRow))
							max.y += settings.vertSpacing;
						
						if(!settings.showRWViz)
							drawList->AddRectFilled( min, max, ImColor(SymbolBackend::getSymbolColor(symbol->id)) );
						else
							drawList->AddRect( min, max, ImColor(SymbolBackend::getSymbolColor(symbol->id)), 0, 0, 2);
					}
				}

				// highlight address stack indicators (indicators that bytes in ram are addresses pushed onto stack by instructions e.g. "call")
				/*
				if (dataType == DataType_Ram && symbolTable != nullptr && addrOff >= A32u4::DataSpace::Consts::ISRAM_start && mcu->debugger.getAddressStackIndicators()[addrOff - A32u4::DataSpace::Consts::ISRAM_start]) {
					uint8_t val = mcu->debugger.getAddressStackIndicators()[addrOff - A32u4::DataSpace::Consts::ISRAM_start];
					ImVec2 min = nextItemRect.Min, max = nextItemRect.Max;
					if (val == 1)
						min.x -= charSize.x/2;
					if (val == 2)
						max.x += charSize.x/2;
					drawList->AddRectFilled( min, max, IM_COL32(0,255,50,70) );
				}
				*/

				if (isSelected(addrOff)) {
					ImRect nextItemRect = getNextByteRect(charSize);
					drawList->AddRectFilled( nextItemRect.Min, nextItemRect.Max,IM_COL32(50, 50, 255, 100) );
				}

				char byteStr[3];
				byteStr[0] = ' ';
				StringUtils::uIntToHexBufCase(byte, byteStr + 1, settings.upperCaseHex, 2);
				if (!symbol) {
					ImGui::TextUnformatted(byteStr, byteStr + 3);
				}
				else {
					if (settings.invertTextColOverSymbols) {
						ImVec4 col = SymbolBackend::getSymbolColor(symbol->id);
						ImGuiExt::TextColored({ 1 - col.x, 1 - col.y, 1 - col.z, 1 }, byteStr, byteStr + 3);
					} else {
						ImGuiExt::TextColored({0, 0, 0, 1}, byteStr, byteStr + 3);
					}
				}
					
				/*
				if (mcu != nullptr && mcu->cpu.getPCAddr() == addrOff) {
					drawList->AddRect( nextItemRect.Min, nextItemRect.Max, IM_COL32(255,0,0,255) );
				}
				*/

				if (ImGui::IsItemClicked(ImGuiMouseButton_Left) && ImGui::GetIO().KeyShift) {
						isSelecting = true;
						selectStart = addrOff;
						selectEnd = addrOff + 1;
				}
				else if (ImGui::IsItemClicked(ImGuiMouseButton_Right)) {
					if (eb.canEdit()) {
						eb.openEditPopup(data, dataLen, (MCU::addrmcu_t)addrOff);
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

							drawHoverInfo(addrOff, symbol, data);

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
			
			// byte viz
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
		drawHoverInfo(popupAddr, popupSymbol, data);
		ImGui::EndPopup();
	}

	drawEditPopup();

	// add missing item spacing
	float itemSpacingAmtV = ImGui::GetStyle().ItemSpacing.y;
	ImGui::SetCursorPosY(ImGui::GetCursorPosY() + itemSpacingAmtV);

	hoveredAddr = currHoveredAddr;
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

void ABB::utils::HexViewer::EditBytes::openEditPopup(const uint8_t* data_, size_t dataLen_, MCU::addrmcu_t addr) {
	ImGui::OpenPopup("hexViewEdit");

	data = data_;
	dataLen = dataLen_;

	editAddr = addr;
	loadVal();
}
void ABB::utils::HexViewer::EditBytes::editPopupError(const char* msg) {
	ImGui::OpenPopup("hexViewEditError");
	editErrorStr = msg;
}
void ABB::utils::HexViewer::EditBytes::drawTypeChoose(size_t maxByteLen) {
	const char* lables[] = {"8bit","16bit","32bit","64bit","float","double","string","byte stream"};
	constexpr size_t sizes[] = {1,      2,      4,      8,      4,       8,       1,            1};

	bool reReadVal = false;

	if (sizes[editType] > maxByteLen) editType = DataUtils::EditMemory::EditType_8bit;

	if (ImGui::BeginCombo("Edit as", lables[editType])) {
		for (int i = 0; i < DataUtils::EditMemory::EditType_COUNT; i++)
			if (sizes[i] <= maxByteLen)
				if (ImGui::Selectable(lables[i], i == editType)) {
					if (editType != i)
						reReadVal = true;
					editType = i;
				}
			
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
			if (ImGui::Checkbox("write reversed", &editReversed))
				reReadVal = true;
		}
		else {
			ImGui::SameLine();
			ImGui::PushItemWidth(70);
			const char* lablesEndian[] = {"Little", "Big"};
			if (ImGui::BeginCombo("Endian", lablesEndian[editEndian])) {
				for (int i = 0; i < DataUtils::EditMemory::EditEndian_COUNT; i++)
					if (ImGui::Selectable(lablesEndian[i], i == editEndian)) {
						if (editEndian != i)
							reReadVal = true;
						editEndian = i;
					}
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
				ImGui::SetTooltip("Can't null-terminate the string, because only %" DU_PRIuSIZE " bytes can be written", maxByteLen);
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
		DU_ASSERT(editStr.size() == 0 || editStr[editStr.size() - 1] != 0);
	}

	if (reReadVal)
		loadVal();
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
void ABB::utils::HexViewer::EditBytes::loadVal() {
	editStr = "";
	editValTemp = 0;

	if (editType == DataUtils::EditMemory::EditType_string) {
		size_t i = editAddr;
		if (!editReversed) {
			bool isString = true;
			while (true) {
				char c = data[i];

				if (!c)
					break;

				if (!StringUtils::isprint(c)) {
					isString = false;
					break;
				}

				i++;

				if (i >= dataLen) {
					isString = false;
					break;
				}
			}
			if (isString) {
				editStr = std::string(data + editAddr, data + i);
			}
		}
		else {
			bool isString = true;
			while (true) {
				char c = data[i];

				if (!c)
					break;

				if (!StringUtils::isprint(c)) {
					isString = false;
					break;
				}

				if (i == 0) {
					isString = false;
					break;
				}

				i--;
			}
			if (isString) {
				size_t len = editAddr - i;
				editStr.resize(len);
				for (size_t j = 0; j < len; j++) {
					editStr[j] = data[i + len - j - 1];
				}
			}
		}
	}
	else if (editType == DataUtils::EditMemory::EditType_8bit || editType == DataUtils::EditMemory::EditType_16bit || editType == DataUtils::EditMemory::EditType_32bit || editType == DataUtils::EditMemory::EditType_64bit || editType == DataUtils::EditMemory::EditType_float || editType == DataUtils::EditMemory::EditType_double) {
		editValTemp = DataUtils::EditMemory::readValue(data + editAddr, dataLen - editAddr, editType, editEndian);
	}
}

void ABB::utils::HexViewer::EditBytes::draw() {
	if (!setValueCallB)
		return;

	if (ImGui::BeginPopup("hexViewEdit")) {
		ImGui::Text("Edit Value at 0x%" DU_PRIxSIZE, editAddr);
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

size_t ABB::utils::HexViewer::EditBytes::sizeBytes() const {
	size_t sum = 0;

	sum += sizeof(data);
	sum += sizeof(dataLen);

	sum += sizeof(editAddr);
	sum += sizeof(editValTemp);

	sum += sizeof(editType);
	sum += sizeof(editEndian);
	sum += sizeof(editReversed);
	sum += sizeof(editBase);
	sum += sizeof(editSigned);
	sum += sizeof(editStringTerm);
	sum += DataUtils::approxSizeOf(editStr);

	sum += sizeof(setValueCallB);
	sum += sizeof(setValueUserData);
	sum += DataUtils::approxSizeOf(editErrorStr);

	return sum;
}


void ABB::utils::HexViewer::drawSettings() {
	ImGui::SliderFloat("Vertical Spacing", &settings.vertSpacing, 0, 10);
	ImGui::Checkbox("Show Space Diagram", &settings.showDiagram);
	ImGui::Checkbox("Show Ascii", &settings.showAscii);
	ImGui::Checkbox("Show Texture", &settings.showTex);

	ImGui::Spacing();

	ImGui::Checkbox("Show Symbols", &settings.showSymbols);
		if (!settings.showSymbols) ImGui::BeginDisabled();
		ImGui::Indent();
		ImGui::Checkbox("Invert Text Color", &settings.invertTextColOverSymbols);
		ImGui::Unindent();
		if (!settings.showSymbols) ImGui::EndDisabled();

	ImGui::Checkbox("Show Read/Write", &settings.showRWViz);
	

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

size_t ABB::utils::HexViewer::sizeBytes() const {
	size_t sum = 0;

	sum += sizeof(dataType);

	sum += sizeof(isSelecting);
	sum += sizeof(selectStart);
	sum += sizeof(selectEnd);

	sum += sizeof(isHovered);
	sum += sizeof(hoveredAddr);

	sum += sizeof(popupAddr);
	sum += sizeof(popupSymbol);

	sum += eb.sizeBytes();

	sum += DataUtils::approxSizeOf(readViz);
	sum += DataUtils::approxSizeOf(writeViz);

	return sum;
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