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
CSTD:=-std=c++17
RELEASE_OPTIM?= -O3 -flto

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

BUILD_MODE_CFLAGS:=
ifeq ($(BUILD_MODE),DEBUG)
	BUILD_MODE_CFLAGS +=-g
else
	BUILD_MODE_CFLAGS +=$(RELEASE_OPTIM)
endif
CDEPFLAGS=-MMD -MF ${@:.o=.d}
CDEFS:=$(addprefix -D,$(PLATFORM))

MAKE_CMD?=make

OUT_PATH:=$(OUT_DIR)$(OUT_NAME)

SRC_FILES:=$(shell find $(SRC_DIR) -name '*.cpp')
OBJ_FILES:=$(addprefix $(OBJ_DIR),${SRC_FILES:.cpp=.o})
DEP_FILES:=$(patsubst %.o,%.d,$(OBJ_FILES))

DEPENDENCIES_INCLUDE_PATHS:=$(addprefix $(ROOT_DIR)dependencies/,Arduboy_Emulator_HL/src Arduboy_Emulator_HL/dependencies/ATmega32u4_Emulator/src raylib/src imgui ImGuiFD Arduboy_Emulator_HL/dependencies/ATmega32u4_Emulator/dependencies/CPP_Utils/src)
DEPENDENCIES_LIBS_DIR:=$(BUILD_DIR)dependencies/libs

DEP_LIBS:=raylib imgui Arduboy_Emulator_HL ATmega32u4_Emulator ImGuiFD CPP_Utils
DEP_LIBS_PATH:=$(addprefix $(DEPENDENCIES_LIBS_DIR)/,$(DEP_LIBS))

DEP_LIBS_INCLUDE_FLAGS:=$(addprefix -I,$(DEPENDENCIES_INCLUDE_PATHS))
DEP_LIBS_DIR_FLAGS:=$(addprefix -L,$(DEPENDENCIES_LIBS_DIR))

DEP_LIBS_FLAGS:=$(addprefix -l,$(DEP_LIBS))

DEP_LIBS_BUILD_DIR:=$(current_dir)$(BUILD_DIR)dependencies/

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
	EXTRA_FLAGS:= -s USE_GLFW=3 --shell-file $(SHELL_HTML)
	CFLAGS += -sEXPORTED_FUNCTIONS=_main,_ArduEmu_loadFile -sEXPORTED_RUNTIME_METHODS=ccall,cwrap
endif


# rules:

.PHONY:all clean

all: $(OUT_PATH)

$(OUT_PATH): $(DEP_LIBS_BUILD_DIR)$(PROJECT_NAME)_depFile.dep $(OBJ_FILES)
	mkdir -p $(OUT_DIR)
	$(CXX) $(CFLAGS) $(CSTD) $(BUILD_MODE_CFLAGS) $(CDEFS) -o $@ $(OBJ_FILES) $(DEP_LIBS_DIR_FLAGS) $(DEP_LIBS_FLAGS) $(EXTRA_FLAGS)
	mkdir -p $(OUT_DIR)resources
	mkdir -p $(OUT_DIR)resources/binutils
	mkdir -p $(OUT_DIR)resources/device
	cp $(ROOT_DIR)resources/software/avr-c++filt.exe  $(OUT_DIR)resources/binutils/
	cp $(ROOT_DIR)resources/device/regSymbs.txt  $(OUT_DIR)resources/device/

$(OBJ_DIR)%.o:%.cpp
	mkdir -p $(dir $@)
	$(CXX) $(CFLAGS) $(CSTD) $(BUILD_MODE_CFLAGS) $(CDEFS) $(DEP_LIBS_INCLUDE_FLAGS) -c $< -o $@ $(CDEPFLAGS)

-include $(DEP_FILES)

# dependencies
$(DEP_LIBS_BUILD_DIR)$(PROJECT_NAME)_depFile.dep:$(DEP_LIBS_DEPS)
	$(MAKE_CMD) -C $(DEPENDENCIES_DIR) PLATFORM=$(PLATFORM) BUILD_MODE=$(BUILD_MODE) CSTD=$(CSTD) BUILD_DIR=$(DEP_LIBS_BUILD_DIR) "CUSTOM_CFLAGS=$(CUSTOM_CFLAGS)"

clean:
	$(MAKE_CMD) -C $(DEPENDENCIES_DIR) clean BUILD_DIR=$(DEP_LIBS_BUILD_DIR)
	rm -rf $(BUILD_DIR)