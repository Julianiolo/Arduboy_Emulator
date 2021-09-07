#include "ArdEmu.h"

#include "utils/byteVisualiser.h"

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
}

ABB::ArduboyBackend& ArduEmu::addEmulator(const char* n) {
	ABB::ArduboyBackend* ptr = new ABB::ArduboyBackend(n);
	instances.push_back(ptr);
	return *ptr;
}

ABB::ArduboyBackend& ArduEmu::getInstance(size_t ind) {
	return *instances.at(ind);
}