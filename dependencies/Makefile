# settings here:

BUILD_MODE?=DEBUG
PLATFORM?=PLATFORM_DESKTOP

ifeq ($(PLATFORM),PLATFORM_DESKTOP)
    CC:=gcc
    CXX:=g++
	AR:=ar
endif
ifeq ($(PLATFORM),PLATFORM_WEB)
    CC:=emcc
    CXX:=em++
	AR:=emar
endif
CFLAGS:=-Wall -Wextra -Wpedantic -Wno-narrowing $(CUSTOM_CFLAGS)
CXXFLAGS:=-Wall -Wextra -Wpedantic -Wno-narrowing $(CUSTOM_CXXFLAGS)
CSTD:=-std=c99
CXXSTD:=-std=c++17
RELEASE_OPTIM?= -O2

BUILD_DIR?=build/make/$(PLATFORM)_$(BUILD_MODE)/

# you dont need to worry about this stuff:

ifeq ($(OS),Windows_NT) 
    detected_OS := Windows
else
    detected_OS := $(shell sh -c 'uname 2>/dev/null || echo Unknown')
endif

# get current dir
current_dir :=$(dir $(abspath $(lastword $(MAKEFILE_LIST))))

DEF_FLAGS:=

BUILD_MODE_FLAGS:=
ifeq ($(BUILD_MODE),DEBUG)
	BUILD_MODE_FLAGS +=-g
	DEF_FLAGS += -D_DEBUG
else
	BUILD_MODE_FLAGS +=$(RELEASE_OPTIM)
endif

ifeq ($(BUILD_DIR),build/)
	BUILD_DIR:=$(current_dir)$(BUILD_DIR)
endif

DEP_FLAGS=-MMD -MF ${@:.o=.d}

# raylib:
RAYLIB_DIR:=raylib/
RAYLIB_SRC_DIR:=$(RAYLIB_DIR)src/
RAYLIB_OUTNAME:=libraylib.a
RAYLIB_BUILD_DIR:=$(BUILD_DIR)libs/
RAYLIB_OUTPATH:=$(RAYLIB_BUILD_DIR)$(RAYLIB_OUTNAME)
RAYLIB_DEPS:=$(shell find $(RAYLIB_SRC_DIR) -name '*.*')

# imgui:
IMGUI_DIR:=imgui/

IMGUI_BUILD_DIR:=$(BUILD_DIR)libs/
IMGUI_SRC_DIR:=$(IMGUI_DIR)
IMGUI_OBJ_DIR:=$(IMGUI_BUILD_DIR)objs/imgui/

IMGUI_OUTNAME:=libimgui.a
IMGUI_OUTPATH:=$(IMGUI_BUILD_DIR)$(IMGUI_OUTNAME)

IMGUI_SRC_FILES:=$(shell cd $(IMGUI_SRC_DIR) && find . -maxdepth 1 -name '*.cpp')
IMGUI_OBJ_FILES:=$(addprefix $(IMGUI_OBJ_DIR),$(notdir ${IMGUI_SRC_FILES:.cpp=.o}))
IMGUI_DEP_FILES:=$(patsubst %.o,%.d,$(IMGUI_OBJ_FILES))

# Arduboy_Emulator_HL:

ABHL_DIR:=Arduboy_Emulator_HL/

ABHL_BUILD_DIR:=$(BUILD_DIR)libs/
ABHL_SRC_DIR:=$(ABHL_DIR)src/
ABHL_DEP_DIR:=$(ABHL_DIR)dependencies/

ABHL_OUTNAME:=libArduboy_Emulator_HL.a
ABHL_OUTPATH:=$(ABHL_BUILD_DIR)$(ABHL_OUTNAME)
ABHL_DEPS:=$(shell find $(ABHL_SRC_DIR) -name '*.*') $(shell find $(ABHL_DEP_DIR) -name '*.*')

# ImGuiFD

IMGUIFD_DIR:=ImGuiFD/

IMGUIFD_BUILD_DIR:=$(BUILD_DIR)libs/
IMGUIFD_SRC_DIR:=$(IMGUIFD_DIR)
IMGUIFD_OBJ_DIR:=$(IMGUIFD_BUILD_DIR)objs/ImGuiFD/

IMGUIFD_INCLUDE_DIRS:=$(addprefix -I,./imgui)

IMGUIFD_OUTNAME:=libImGuiFD.a
IMGUIFD_OUTPATH:=$(IMGUIFD_BUILD_DIR)$(IMGUIFD_OUTNAME)

IMGUIFD_CXXSTD:=-std=gnu++17

IMGUIFD_SRC_FILES:=$(shell cd $(IMGUIFD_SRC_DIR) && find . -maxdepth 1 -name '*.cpp')
IMGUIFD_OBJ_FILES:=$(addprefix $(IMGUIFD_OBJ_DIR),$(notdir ${IMGUIFD_SRC_FILES:.cpp=.o}))
IMGUIFD_DEP_FILES:=$(patsubst %.o,%.d,$(IMGUIFD_OBJ_FILES))

# rlImGui

RLIMGUI_DIR:=rlImGui/

RLIMGUI_BUILD_DIR:=$(BUILD_DIR)libs/
RLIMGUI_SRC_DIR:=$(RLIMGUI_DIR)
RLIMGUI_OBJ_DIR:=$(RLIMGUI_BUILD_DIR)objs/rlImGui/

RLIMGUI_INCLUDE_DIRS:=$(addprefix -I,./imgui ./raylib/src/)

RLIMGUI_OUTNAME:=librlImGui.a
RLIMGUI_OUTPATH:=$(RLIMGUI_BUILD_DIR)$(RLIMGUI_OUTNAME)


RLIMGUI_SRC_FILES:=$(shell cd $(RLIMGUI_SRC_DIR) && find . -maxdepth 1 -name '*.cpp')
RLIMGUI_OBJ_FILES:=$(addprefix $(RLIMGUI_OBJ_DIR),$(notdir ${RLIMGUI_SRC_FILES:.cpp=.o}))
RLIMGUI_DEP_FILES:=$(patsubst %.o,%.d,$(RLIMGUI_OBJ_FILES))

CFLAGS += $(BUILD_MODE_FLAGS)
CXXFLAGS += $(BUILD_MODE_FLAGS)

# rules:

.PHONY:all clean

all:$(RAYLIB_OUTPATH) $(IMGUI_OUTPATH) $(ABHL_OUTPATH) $(IMGUIFD_OUTPATH) $(RLIMGUI_OUTPATH)
	touch $(BUILD_DIR)Arduboy_Emulator_depFile.dep

# raylib:
$(RAYLIB_OUTPATH):$(RAYLIB_DEPS)
	mkdir -p $(RAYLIB_BUILD_DIR)
	$(MAKE) -C "$(RAYLIB_DIR)/src" CUSTOM_CFLAGS="$(BUILD_MODE_FLAGS) $(CUSTOM_CFLAGS)" PLATFORM=$(PLATFORM) RAYLIB_BUILD_MODE=$(BUILD_MODE) RAYLIB_RELEASE_PATH="$(RAYLIB_BUILD_DIR)"

# imgui:
$(IMGUI_OUTPATH):$(IMGUI_OBJ_FILES)
	mkdir -p $(IMGUI_BUILD_DIR)
	$(AR) rvs $@ $(IMGUI_OBJ_FILES)

-include $(IMGUI_DEP_FILES)

$(IMGUI_OBJ_DIR)%.o: $(IMGUI_SRC_DIR)%.cpp
	mkdir -p $(dir $@)
	$(CXX) $(CXXFLAGS) $(CXXSTD) $(DEF_FLAGS) -c $< -o $@ $(DEP_FLAGS)

# Arduboy_Emulator_HL
$(ABHL_OUTPATH):$(ABHL_DEPS)
	mkdir -p $(ABHL_BUILD_DIR)
	$(MAKE) -C "$(ABHL_DIR)" PLATFORM=$(PLATFORM) BUILD_MODE=$(BUILD_MODE) BUILD_DIR="$(ABHL_BUILD_DIR)" "RELEASE_OPTIM=$(RELEASE_OPTIM)" CUSTOM_CFLAGS="$(CUSTOM_CFLAGS)" CUSTOM_CXXFLAGS="$(CUSTOM_CXXFLAGS)" CSTD="$(CSTD)" CXXSTD="$(CXXSTD)"


# ImGuiFD:
$(IMGUIFD_OUTPATH):$(IMGUIFD_OBJ_FILES)
	mkdir -p $(IMGUIFD_BUILD_DIR)
	$(AR) rvs $@ $(IMGUIFD_OBJ_FILES)

-include $(IMGUIFD_DEP_FILES)

$(IMGUIFD_OBJ_DIR)%.o: $(IMGUIFD_SRC_DIR)%.cpp
	mkdir -p $(dir $@)
	$(CXX) $(CXXFLAGS) $(IMGUIFD_CXXSTD) $(DEF_FLAGS) $(IMGUIFD_INCLUDE_DIRS) -c $< -o $@ $(DEP_FLAGS)

# rlImGui:
$(RLIMGUI_OUTPATH):$(RLIMGUI_OBJ_FILES)
	mkdir -p $(RLIMGUI_BUILD_DIR)
	$(AR) rvs $@ $(RLIMGUI_OBJ_FILES)

-include $(RLIMGUI_DEP_FILES)

$(RLIMGUI_OBJ_DIR)%.o: $(RLIMGUI_SRC_DIR)%.cpp
	mkdir -p $(dir $@)
	$(CXX) $(CXXFLAGS) $(CXXSTD) $(DEF_FLAGS) $(RLIMGUI_INCLUDE_DIRS) -c $< -o $@ $(DEP_FLAGS)

clean:
	$(MAKE) -C "$(RAYLIB_DIR)/src" clean
	rm -rf $(BUILD_DIR)