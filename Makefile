# settings here:

BUILD_MODE ?=DEBUG
PLATFORM:=PLATFORM_DESKTOP

CC:=g++
CFLAGS:=-Wall -Wextra -Wpedantic -Wno-narrowing
CSTD:=-std=c++17
RELEASE_OPTIM?= -Ofast

ROOT_DIR:=./
SRC_DIR:=$(ROOT_DIR)src/
BUILD_DIR:=$(ROOT_DIR)build/make/$(BUILD_MODE)/
OBJ_DIR:=$(BUILD_DIR)objs/
DEPENDENCIES_DIR:=$(ROOT_DIR)dependencies/

OUT_NAME:=ABemu.exe
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

MAKE:=make
ifeq ($(detected_OS),Windows)
	MAKE_CMD:=mingw32-make
	BASH_PREFX:=bash -c 
endif

OUT_PATH:=$(OUT_DIR)$(OUT_NAME)

SRC_FILES:=$(shell $(BASH_PREFX)"find $(SRC_DIR) -name '*.cpp'")
OBJ_FILES:=$(addprefix $(OBJ_DIR),${SRC_FILES:.cpp=.o})
DEP_FILES:=$(patsubst %.o,%.d,$(OBJ_FILES))

DEPENDENCIES_INCLUDE_PATHS:=$(addprefix dependencies/,Arduboy_Emulator_HL/src Arduboy_Emulator_HL/dependencies/ATmega32u4_Emulator/src raylib/src imgui)
DEPENDENCIES_LIBS_DIR:=$(BUILD_DIR)dependencies/libs

DEP_LIBS:=libraylib.a imgui.a Arduboy_Emulator_HL.a ATmega32u4_Emulator.a
DEP_LIBS_PATH:=$(addprefix $(DEPENDENCIES_LIBS_DIR)/,$(DEP_LIBS))

DEP_LIBS_INCLUDE_FLAGS:=$(addprefix -I,$(DEPENDENCIES_INCLUDE_PATHS))
DEP_LIBS_DIR_FLAGS:=$(addprefix -L,$(DEPENDENCIES_LIBS_DIR))
DEP_LIBS_FLAGS:=$(addprefix -l:,$(DEP_LIBS))

DEP_LIBS_BUILD_DIR:=$(current_dir)$(BUILD_DIR)dependencies/

DEP_LIBS_DEPS:=dependencies/Makefile $(shell $(BASH_PREFX)"find dependencies/ -name '*h' -o -name '*.c' -o -name '*.cpp'")

ifeq ($(detected_OS),Windows)
	EXTRA_FLAGS:=-lopengl32 -lgdi32 -lwinmm -static -static-libgcc -static-libstdc++
	
	ifeq ($(BUILD_MODE), RELEASE)
#		EXTRA_FLAGS += -Wl,--subsystem,windows
	endif
else
	EXTRA_FLAGS:= -no-pie -Wl,--no-as-needed -ldl -lpthread
endif

# rules:

.PHONY:all clean

all: $(OUT_PATH)

$(OUT_PATH): $(DEP_LIBS_BUILD_DIR)depFile.dep $(OBJ_FILES)
	$(BASH_PREFX)"mkdir -p $(OUT_DIR)"
	$(CC) $(CFLAGS) $(CSTD) $(BUILD_MODE_CFLAGS) $(DEP_LIBS_DIR_FLAGS) $(CDEFS) -o $@ $(OBJ_FILES) $(CDEPFLAGS) $(DEP_LIBS_FLAGS) $(EXTRA_FLAGS)
	$(BASH_PREFX)"mkdir -p $(OUT_DIR)resources"
	$(BASH_PREFX)"mkdir -p $(OUT_DIR)resources/binutils"
	$(BASH_PREFX)"mkdir -p $(OUT_DIR)resources/device"
	$(BASH_PREFX)"cp $(ROOT_DIR)resources/software/avr-c++filt.exe  $(OUT_DIR)resources/binutils/"
	$(BASH_PREFX)"cp $(ROOT_DIR)resources/device/regSymbs.txt  $(OUT_DIR)resources/device/"

$(OBJ_DIR)%.o:%.cpp
	$(BASH_PREFX)"mkdir -p $(dir $@)"
	$(CC) $(CFLAGS) $(CSTD) $(BUILD_MODE_CFLAGS) $(CDEFS) $(DEP_LIBS_INCLUDE_FLAGS) -c $< -o $@ $(CDEPFLAGS)

-include $(DEP_FILES)

# dependencies
$(DEP_LIBS_BUILD_DIR)depFile.dep:$(DEP_LIBS_DEPS)
	$(MAKE_CMD) -C $(DEPENDENCIES_DIR) BUILD_MODE=$(BUILD_MODE) CC=$(CC) CFLAGS="$(CFLAGS)" CSTD=$(CSTD) BUILD_DIR=$(DEP_LIBS_BUILD_DIR)

clean:
	$(MAKE_CMD) -C $(DEPENDENCIES_DIR) clean BUILD_DIR=$(DEP_LIBS_BUILD_DIR)
	rm -rf $(BUILD_DIR)