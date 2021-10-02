BUILD_MODE?=DEBUG
PLATFORM:=PLATFORM_DESKTOP

CC:=g++
CFLAGS:=-Wall -Wno-narrowing
CSTD:=-std=c++17
RELEASE_OPTIM?= -O2

BUILD_DIR?=build/

# you dont need to worry about this stuff:

ifeq ($(OS),Windows_NT) 
    detected_OS := Windows
else
    detected_OS := $(shell sh -c 'uname 2>/dev/null || echo Unknown')
endif

# get current dir
current_dir :=$(dir $(abspath $(lastword $(MAKEFILE_LIST))))

BUILD_MODE_CFLAGS:=
ifeq ($(BUILD_MODE),DEBUG)
	BUILD_MODE_CFLAGS += -g
else
	BUILD_MODE_CFLAGS +=$(RELEASE_OPTIM)
endif

MAKE_CMD:=make
ifeq ($(detected_OS),Windows)
	MAKE_CMD:=mingw32-make
	BASH_PREFX:=bash -c 
endif

ifeq ($(BUILD_DIR),build/)
	BUILD_DIR:=$(current_dir)$(BUILD_DIR)
endif

CDEPFLAGS=-MMD -MF ${@:.o=.d}

# raylib:
RAYLIB_DIR:=raylib/
RAYLIB_SRC_DIR:=$(RAYLIB_DIR)src/
RAYLIB_OUTNAME:=libraylib.a
RAYLIB_BUILD_DIR:=$(BUILD_DIR)libs/
RAYLIB_OUTPATH:=$(RAYLIB_BUILD_DIR)$(RAYLIB_OUTNAME)
RAYLIB_DEPS:=$(shell $(BASH_PREFX)"find $(RAYLIB_SRC_DIR) -name *.*")

# imgui:
IMGUI_DIR:=imgui/

IMGUI_BUILD_DIR:=$(BUILD_DIR)libs/
IMGUI_SRC_DIR:=$(IMGUI_DIR)
IMGUI_OBJ_DIR:=$(IMGUI_BUILD_DIR)objs/imgui/

IMGUI_OUTNAME:=imgui.a
IMGUI_OUTPATH:=$(IMGUI_BUILD_DIR)$(IMGUI_OUTNAME)

IMGUI_SRC_FILES:=$(shell $(BASH_PREFX)"cd $(IMGUI_SRC_DIR) && find . -maxdepth 1 -name '*.cpp'")
IMGUI_OBJ_FILES:=$(addprefix $(IMGUI_OBJ_DIR),$(notdir ${IMGUI_SRC_FILES:.cpp=.o}))
IMGUI_DEP_FILES:=$(patsubst %.o,%.d,$(IMGUI_OBJ_FILES))

# Arduboy_Emulator_HL:

ABHL_DIR:=Arduboy_Emulator_HL/

ABHL_BUILD_DIR:=$(BUILD_DIR)libs/
ABHL_SRC_DIR:=$(ABHL_DIR)src/
ABHL_DEP_DIR:=$(ABHL_DIR)dependencies/

ABHL_OUTNAME:=Arduboy_Emulator_HL.a
ABHL_OUTPATH:=$(ABHL_BUILD_DIR)$(ABHL_OUTNAME)
ABHL_DEPS:=$(shell $(BASH_PREFX)"find $(ABHL_SRC_DIR) -name *.*") $(shell $(BASH_PREFX)"find $(ABHL_DEP_DIR) -name *.*")

# rules:

.PHONY:all clean

all:$(RAYLIB_OUTPATH) $(IMGUI_OUTPATH) $(ABHL_OUTPATH)
	$(BASH_PREFX)"touch $(BUILD_DIR)depFile.dep";

# raylib:
$(RAYLIB_OUTPATH):$(RAYLIB_DEPS)
	$(BASH_PREFX)"mkdir -p $(RAYLIB_BUILD_DIR)"
	$(MAKE_CMD) -C "$(RAYLIB_DIR)/src" CC=gcc PLATFORM=PLATFORM_DESKTOP RAYLIB_BUILD_MODE=$(BUILD_MODE) RAYLIB_RELEASE_PATH="$(RAYLIB_BUILD_DIR)"

# imgui:
$(IMGUI_OUTPATH):$(IMGUI_OBJ_FILES)
	$(BASH_PREFX)"mkdir -p $(IMGUI_BUILD_DIR)"
	ar rvs $@ $(IMGUI_OBJ_FILES)

-include $(IMGUI_DEP_FILES)

$(IMGUI_OBJ_DIR)%.o: $(IMGUI_SRC_DIR)%.cpp
	$(BASH_PREFX)"mkdir -p $(dir $@)"
	$(CC) $(CFLAGS) $(CSTD) $(BUILD_MODE_CFLAGS) -c $< -o $@ $(CDEPFLAGS)

# Arduboy_Emulator_HL
$(ABHL_OUTPATH):$(ABHL_DEPS)
	$(BASH_PREFX)"mkdir -p $(ABHL_BUILD_DIR)"
	$(MAKE_CMD) -C "$(ABHL_DIR)" BUILD_MODE=$(BUILD_MODE) BUILD_DIR="$(ABHL_BUILD_DIR)" RELEASE_OPTIM=$(RELEASE_OPTIM)

clean:
	$(MAKE_CMD) -C "$(RAYLIB_DIR)/src" clean
	rm -rf $(BUILD_DIR)