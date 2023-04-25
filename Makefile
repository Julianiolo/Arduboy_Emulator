# settings here:

BUILD_MODE ?=DEBUG
PLATFORM:=PLATFORM_DESKTOP

ifeq ($(PLATFORM),PLATFORM_DESKTOP)
    CC?=gcc
    CXX?=g++
endif
ifeq ($(PLATFORM),PLATFORM_WEB)
    CC:=emcc
    CXX:=em++
endif
CFLAGS:=-Wall -Wextra -Wpedantic -Wno-narrowing $(CUSTOM_CFLAGS)
CXXFLAGS:=-Wall -Wextra -Wpedantic -Wno-narrowing $(CUSTOM_CXXFLAGS)
CSTD:=-std=c99
CXXSTD:=-std=c++17
RELEASE_OPTIM?= -O2 -flto

ROOT_DIR:=./
SRC_DIR:=$(ROOT_DIR)src/
BUILD_DIR:=$(ROOT_DIR)build/make/$(PLATFORM)_$(BUILD_MODE)/
OBJ_DIR:=$(BUILD_DIR)objs/
DEPENDENCIES_DIR:=$(ROOT_DIR)dependencies/

SHELL_HTML:=$(SRC_DIR)index.html

OUT_EXT:=
ifeq ($(PLATFORM),PLATFORM_WEB)
	OUT_EXT:=.html
else
	ifeq ($(OS),Windows_NT)
		OUT_EXT:=.exe
	endif
endif

OUT_NAME:=ABemu$(OUT_EXT)
OUT_DIR:=$(BUILD_DIR)ABemu/



# you dont need to worry about this stuff:

# detect OS
ifeq ($(OS),Windows_NT) 
    detected_OS := Windows
else
    detected_OS := $(shell sh -c 'uname 2>/dev/null || echo Unknown')
endif

# get current dir
current_dir :=$(dir $(abspath $(lastword $(MAKEFILE_LIST))))


DEF_FLAGS:=$(addprefix -D,$(PLATFORM))

BUILD_MODE_FLAGS:=
ifeq ($(BUILD_MODE),DEBUG)
	BUILD_MODE_FLAGS +=-g
	DEF_FLAGS += -D_DEBUG
else
	BUILD_MODE_FLAGS +=$(RELEASE_OPTIM)
endif

DEP_FLAGS=-MMD -MF ${@:.o=.d}

OUT_PATH:=$(OUT_DIR)$(OUT_NAME)

SRC_FILES:=$(shell find $(SRC_DIR) -name '*.cpp')
OBJ_FILES:=$(addprefix $(OBJ_DIR),${SRC_FILES:.cpp=.o})
DEP_FILES:=$(patsubst %.o,%.d,$(OBJ_FILES))

DEPENDENCIES_INCLUDE_PATHS:=$(addprefix $(ROOT_DIR)dependencies/,Arduboy_Emulator_HL/src EmuUtils Arduboy_Emulator_HL/dependencies/ATmega32u4_Emulator/src raylib/src imgui ImGuiFD emscripten-browser-clipboard rlImGui Arduboy_Emulator_HL/dependencies/ATmega32u4_Emulator/dependencies/CPP_Utils/src)
DEPENDENCIES_LIBS_DIR:=$(BUILD_DIR)objs/libs/

DEP_LIBS:=raylib imgui Arduboy_Emulator_HL ATmega32u4_Emulator ImGuiFD rlImGui CPP_Utils EmuUtils
DEP_LIBS_PATH:=$(addprefix $(DEPENDENCIES_LIBS_DIR)/,$(DEP_LIBS))

DEP_LIBS_INCLUDE_FLAGS:=$(addprefix -I,$(DEPENDENCIES_INCLUDE_PATHS))
DEP_LIBS_DIR_FLAGS:=$(addprefix -L,$(DEPENDENCIES_LIBS_DIR))

DEP_LIBS_FLAGS:=$(addprefix -l,$(DEP_LIBS))

DEP_LIBS_BUILD_DIR:=$(current_dir)$(BUILD_DIR)objs/

DEP_LIBS_DEPS:=dependencies/Makefile $(shell find $(ROOT_DIR)dependencies/ -name '*h' -o -name '*.c' -o -name '*.cpp')

ifeq ($(PLATFORM),PLATFORM_DESKTOP)
	ifeq ($(detected_OS),Windows)
		EXTRA_FLAGS:=-lopengl32 -lgdi32 -lwinmm -static -static-libgcc -static-libstdc++
		
		ifeq ($(BUILD_MODE), RELEASE)
	#		EXTRA_FLAGS += -Wl,--subsystem,windows
		endif
	else
		EXTRA_FLAGS:= -no-pie -Wl,--no-as-needed -ldl -lpthread
	endif
endif
ifeq ($(PLATFORM),PLATFORM_WEB)
	EXTRA_FLAGS:= -s USE_GLFW=3 --shell-file $(SHELL_HTML) --preload-file ./resources/device/regSymbs.txt
	CFLAGS += -fexceptions -sALLOW_MEMORY_GROWTH -sEXPORTED_FUNCTIONS=_main -sEXPORTED_RUNTIME_METHODS=ccall,cwrap
	CXXFLAGS += -fexceptions -sALLOW_MEMORY_GROWTH -sEXPORTED_FUNCTIONS=_main -sEXPORTED_RUNTIME_METHODS=ccall,cwrap
endif

CFLAGS += $(BUILD_MODE_FLAGS)
CXXFLAGS += $(BUILD_MODE_FLAGS)

# rules:

.PHONY:all clean clean_raylib

all: $(OUT_PATH)

$(OUT_PATH): $(DEP_LIBS_BUILD_DIR)$(PROJECT_NAME)_depFile.dep $(OBJ_FILES)
	mkdir -p $(OUT_DIR)
	$(CXX) $(CXXFLAGS) $(CXXSTD) $(DEF_FLAGS) -o $@ $(OBJ_FILES) $(DEP_LIBS_DIR_FLAGS) $(DEP_LIBS_FLAGS) $(EXTRA_FLAGS)
	mkdir -p $(OUT_DIR)resources
	mkdir -p $(OUT_DIR)resources/binutils
	mkdir -p $(OUT_DIR)resources/device
	cp $(ROOT_DIR)resources/software/avr-c++filt.exe  $(OUT_DIR)resources/binutils/
	cp $(ROOT_DIR)resources/device/regSymbs.txt  $(OUT_DIR)resources/device/

$(OBJ_DIR)%.o:%.cpp
	mkdir -p $(dir $@)
	$(CXX) $(CXXFLAGS) $(CXXSTD) $(DEF_FLAGS) $(DEP_LIBS_INCLUDE_FLAGS) -c $< -o $@ $(DEP_FLAGS)

-include $(DEP_FILES)

# dependencies
$(DEP_LIBS_BUILD_DIR)$(PROJECT_NAME)_depFile.dep:$(DEP_LIBS_DEPS)
	$(MAKE) -C $(DEPENDENCIES_DIR) PLATFORM=$(PLATFORM) BUILD_MODE=$(BUILD_MODE) BUILD_DIR=$(DEP_LIBS_BUILD_DIR) CUSTOM_CFLAGS="$(CUSTOM_CFLAGS)" "RELEASE_OPTIM=$(RELEASE_OPTIM)" CUSTOM_CXXFLAGS="$(CUSTOM_CXXFLAGS)" CSTD="$(CSTD)" CXXSTD="$(CXXSTD)"

clean:
	$(MAKE) -C $(DEPENDENCIES_DIR) clean BUILD_DIR=$(DEP_LIBS_BUILD_DIR)
	rm -rf $(BUILD_DIR)

clean_raylib:
	$(MAKE) -C $(DEPENDENCIES_DIR) clean_raylib BUILD_DIR=$(DEP_LIBS_BUILD_DIR)