#include "ArdEmu.h"

#include "utils/byteVisualiser.h"

#include "imgui.h"
#include <chrono>

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
}

void ArduEmu::drawBenchmark(){
	static bool open = true;
	if(open){
		if(ImGui::Begin("Benchmark",&open)){
			static uint64_t benchCycls = (A32u4::CPU::ClockFreq/60)*10;
			constexpr uint64_t min = 0;
			ImGui::DragScalar("",ImGuiDataType_U64, &benchCycls, 1000, &min);
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
				mcu.powerOn();

				uint8_t execFlags = 0;
				if(debug)
					execFlags |= A32u4::ATmega32u4::ExecFlags_Debug;
				if(analyse)
					execFlags |= A32u4::ATmega32u4::ExecFlags_Analyse;
				auto start = std::chrono::high_resolution_clock::now();
				mcu.execute(benchCycls, execFlags);
				auto end = std::chrono::high_resolution_clock::now();

				auto time = end - start;
				res = StringUtils::format("%s cycles run in %d ms\n", std::to_string(benchCycls).c_str(), time/std::chrono::milliseconds(1)).get() + res;
			}

			ImGui::TextUnformatted(res.c_str());
		}
		ImGui::End();
	}
}

ABB::ArduboyBackend& ArduEmu::addEmulator(const char* n) {
	ABB::ArduboyBackend* ptr = new ABB::ArduboyBackend(n);
	instances.push_back(ptr);
	return *ptr;
}

ABB::ArduboyBackend& ArduEmu::getInstance(size_t ind) {
	return *instances.at(ind);
}