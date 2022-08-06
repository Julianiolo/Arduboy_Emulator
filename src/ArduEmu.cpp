#include "ArdEmu.h"

#include "utils/byteVisualiser.h"

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

std::vector<ABB::ArduboyBackend*> ArduEmu::instances;

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
	for (auto& i : instances) {
		i->draw();
	}
	drawBenchmark();
	drawMenu();
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
				res = StringUtils::format("%s/%s cycles run in %.4f ms => %.2f frames => %.4ffps; %s cycles\n", std::to_string(mcu.cpu.getTotalCycles()).c_str(), std::to_string(benchCycls).c_str(), ms, frames, fps, std::to_string(cycles).c_str()).get() + res;
			}

			ImGui::TextUnformatted(res.c_str());
		}
		ImGui::End();
	}
}

void ArduEmu::drawMenu() {
	if (ImGui::Begin("Open Game")) {
		if (ImGui::Button("Open")) {
			ImGuiFD::OpenFileDialog("GAME", "*", "");
		}

		if (ImGuiFD::BeginDialog("GAME")) {
			if (ImGuiFD::ActionDone()) {
				if(ImGuiFD::SelectionMade()) {
					std::string path = ImGuiFD::GetSelectionPathString(0);
					std::string name = ImGuiFD::GetSelectionNameString(0);

					ABB::ArduboyBackend& abb = addEmulator(name.c_str());
					abb.load(path.c_str());
					abb.ab.mcu.powerOn();
				}
				ImGuiFD::CloseCurrentDialog();
			}

			ImGuiFD::EndDialog();
		}
	}
	ImGui::End();
}



ABB::ArduboyBackend& ArduEmu::addEmulator(const char* n) {
	ABB::ArduboyBackend* ptr = new ABB::ArduboyBackend(n);
	instances.push_back(ptr);
	return *ptr;
}

ABB::ArduboyBackend& ArduEmu::getInstance(size_t ind) {
	return *instances.at(ind);
}