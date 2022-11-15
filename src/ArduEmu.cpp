#include "ArdEmu.h"



#include "ImGuiFD.h"

#include "imgui.h"
#include <chrono>
#ifndef __EMSCRIPTEN__
#ifdef _WIN32
	#include <intrin.h> // for __rdtsc()
#else
	#include <x86intrin.h>
#endif
#endif

#ifdef __EMSCRIPTEN__
#include "emscripten.h"
#endif

#include "utils/byteVisualiser.h"
#include "utils/asmViewer.h"
#include "Extensions/imguiExt.h"
#include "StringUtils.h"

std::vector<ABB::ArduboyBackend*> ArduEmu::instances;
size_t ArduEmu::idCounter = 0;
size_t ArduEmu::lastOpenDialogId = -1;


#if defined(__EMSCRIPTEN__)
bool ArduEmu::isSimpleLoadDialogOpen = false;
bool ArduEmu::simpleLoadDialogIsCurrentlyLoading = false;
std::string ArduEmu::simpleLoadDialogInputStr = "";
std::vector<uint8_t> ArduEmu::simpleLoadDialogLoadedData;
#endif

void ArduEmu::init() {
	ABB::utils::ByteVisualiser::init();
}

void ArduEmu::destroy() {
	for (auto& i : instances) {
		delete i;
	}
	ABB::utils::ByteVisualiser::destroy();
}

void ArduEmu::draw() {
	drawLoadProgramDialog();

	for (auto it = instances.begin(); it != instances.end();) {
		auto& i = *it;
		if (i->_wantsToBeClosed()) {
			delete i;
			it = instances.erase(it);
		}
		else {
			i->draw();
			it++;
		}
	}
	drawBenchmark();
	drawMenu();
	drawStyleSettings();
}

void ArduEmu::drawBenchmark(){
	static bool open = true;
	if(open){
		if(ImGui::Begin("Benchmark",&open)){
			static uint64_t benchCycls = (A32u4::CPU::ClockFreq/60)*1000;
			constexpr uint64_t min = 0;
			ImGui::DragScalar("##cycs",ImGuiDataType_U64, &benchCycls, 1000, &min);
			ImGui::SameLine();
			if(ImGui::SmallButton("*10"))
				benchCycls *= 10;
			ImGui::SameLine();
			if(ImGui::SmallButton("/10"))
				benchCycls /= 10;
			
			ImGui::TextUnformatted("Run Flags:");
				ImGui::Indent();
				static bool debug = false, analyse = false;
				ImGui::Checkbox("Debug",&debug);
				ImGui::Checkbox("Analyze", &analyse);
			ImGui::Unindent();

			static std::string res = "";
			if(ImGui::Button("Do Benchmark")){
				A32u4::ATmega32u4 mcu;
				mcu.flash.loadFromHexFile("C:/Users/korma/Desktop/Julian/dateien/scriipts/cpp/Arduboy/ArduboyWorks-master/_hexs/hollow_v0.32.hex");
				//mcu.flash.loadFromHexFile("C:/Users/Julian/Desktop/Dateien/scriipts/cpp/Arduboy/ArduboyWorks-master/_hexs/hollow_v0.32.hex");
				mcu.powerOn();

				uint8_t execFlags = 0;
				if(debug)
					execFlags |= A32u4::ATmega32u4::ExecFlags_Debug;
				if(analyse)
					execFlags |= A32u4::ATmega32u4::ExecFlags_Analyse;

				auto start = std::chrono::high_resolution_clock::now();
				#ifndef __EMSCRIPTEN__
				uint64_t cpu_start = __rdtsc();
				#endif
				mcu.execute(benchCycls, execFlags);
				#ifndef __EMSCRIPTEN__
				uint64_t cpu_end = __rdtsc();
				#endif
				auto end = std::chrono::high_resolution_clock::now();

				auto time = end - start;

				#ifndef __EMSCRIPTEN__
				uint64_t cycles = cpu_end - cpu_start;
				#else
				uint64_t cycles = 0;
				#endif
				double ms = (double)(time/std::chrono::microseconds(1))/1000.0;
				double frames = (double)benchCycls/(A32u4::CPU::ClockFreq/60);
				double fps = 1000/(ms/frames);
				res = StringUtils::format("%s/%s cycles run in %.4f ms => %.2f frames => %.4ffps; %s cycles\n", std::to_string(mcu.cpu.getTotalCycles()).c_str(), std::to_string(benchCycls).c_str(), ms, frames, fps, std::to_string(cycles).c_str()) + res;
			}

			ImGui::TextUnformatted(res.c_str());
		}
		ImGui::End();
	}
}

void ArduEmu::drawMenu() {
	if (ImGui::Begin("Open Game")) {
		if (ImGui::Button("Open")) {
			openLoadProgramDialog(-1);
		}
	}
	ImGui::End();
}



ABB::ArduboyBackend& ArduEmu::addEmulator(const char* n) {
	ABB::ArduboyBackend* ptr = new ABB::ArduboyBackend(n, idCounter++);
	instances.push_back(ptr);
	return *ptr;
}

ABB::ArduboyBackend* ArduEmu::getInstance(size_t ind) {
	return instances.at(ind);
}
ABB::ArduboyBackend* ArduEmu::getInstanceById(size_t id) {
	for (size_t i = 0; i < instances.size(); i++) {
		if (instances.at(i)->id == id) {
			return instances.at(i);
		}
	}
	return nullptr;
}

void ArduEmu::drawLoadProgramDialog() {
#if !defined(__EMSCRIPTEN__)
	if (ImGuiFD::BeginDialog("LoadProgramDialog")) {
		if (ImGuiFD::ActionDone()) {
			if(ImGuiFD::SelectionMade()) {
				std::string path = ImGuiFD::GetSelectionPathString(0);
				std::string name = ImGuiFD::GetSelectionNameString(0);

				ABB::ArduboyBackend* abb = nullptr;
				if (lastOpenDialogId != (size_t)-1) {
					abb = getInstanceById(lastOpenDialogId);
					MCU_ASSERT(abb != nullptr); // couldnt find id
				}

				if (abb == nullptr) { // also a failsafe, if it couldnt find the given id, dunno if thats smart
					abb = &addEmulator(name.c_str());
				}

				abb->loadFile(path.c_str());
				abb->ab.mcu.powerOn();
			}
			ImGuiFD::CloseCurrentDialog();
		}

		ImGuiFD::EndDialog();
	}
#else

#if 0
	if(simpleLoadDialogLoadedData.size() > 0) {
		ABB::ArduboyBackend* abb = nullptr;
		if (lastOpenDialogId != (size_t)-1) {
			abb = getInstanceById(lastOpenDialogId);
			MCU_ASSERT(abb != nullptr); // couldnt find id
		}

		if (abb == nullptr) { // also a failsafe, if it couldnt find the given id, dunno if thats smart
			char buf[9];
			StringUtils::uIntToHexBuf(rand(), 8, buf);
			abb = &addEmulator(buf);
		}

		abb->load(&simpleLoadDialogLoadedData[0], simpleLoadDialogLoadedData.size());
		abb->ab.mcu.powerOn();

		simpleLoadDialogLoadedData.clear();
		isSimpleLoadDialogOpen = false;
	}

	if (isSimpleLoadDialogOpen) {
		bool wantToBeOpen = true;
		if (ImGui::Begin("Simple Load Program Dialog", &wantToBeOpen)) {
			if (simpleLoadDialogIsCurrentlyLoading) ImGui::BeginDisabled();

			ImGuiExt::InputTextString("Url to file", "Enter the url of the file you want to load", &simpleLoadDialogInputStr);
			if (ImGui::Button("Load")) {
				simpleLoadDialogIsCurrentlyLoading = true;
				emscripten_async_wget_data(simpleLoadDialogInputStr.c_str(), NULL, 
				[](void* userData,void* data, int len) {
					ArduEmu::simpleLoadDialogLoadedData.assign((uint8_t*)data, (uint8_t*)data+len);
				},
				[](void* userData) {
					simpleLoadDialogIsCurrentlyLoading = false;
				});
			}

			if (simpleLoadDialogIsCurrentlyLoading) ImGui::EndDisabled();

			if (simpleLoadDialogIsCurrentlyLoading) {
				ImGui::Text("Loading...");
			}
		}
		ImGui::End();

		if(!wantToBeOpen && !simpleLoadDialogIsCurrentlyLoading) {
			isSimpleLoadDialogOpen = false;
		}
	}
#endif
	if (isSimpleLoadDialogOpen) {
		if (ImGui::Begin("Simple Load Program Dialog",&isSimpleLoadDialogOpen)) {
			ImGui::Text("Use the input field below to load from a url");
		}
		ImGui::End();
	}
#endif
}

void ArduEmu::openLoadProgramDialog(size_t ownId) {
	lastOpenDialogId = ownId;
#if !defined(__EMSCRIPTEN__)
	ImGuiFD::OpenFileDialog("LoadProgramDialog", "*", "");
#else
	isSimpleLoadDialogOpen = true;
#endif
}

#ifdef __EMSCRIPTEN__
extern "C" {
__attribute__((used)) void ArduEmu_loadFile(const char* name, const uint8_t* data, size_t size) {
	ABB::ArduboyBackend* abb = &ArduEmu::addEmulator(name);
	abb->load(data, size);
	abb->ab.mcu.powerOn();
}
}
#endif





void ArduEmu::drawStyleSettings() {
	if(ImGui::Begin("Syle Settings")) {
		if(ImGui::TreeNode("AsmViewer")){
			ImGui::SliderFloat("Branch Width", &ABB::utils::AsmViewer::branchWidth, 0, 10);
			ImGui::SliderFloat("Branch Spacing", &ABB::utils::AsmViewer::branchSpacing, 0, 10);
			ImGui::TreePop();
		}
	}
	ImGui::End();
}