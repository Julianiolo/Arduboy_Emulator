# Arduboy_Emulator
a currently wip cross platform emulator of the [Arduboy](https://www.arduboy.com/) console written in C++

## Features
- Debugger
- Disassembler
- Analytics
  - Sleep analysis
  - Stack size
- Ram/Rom/Eeprom Hex Editor
  - Editable as different data types
- Support for visualising data through symbols

## Dependencies
Arduboy_Emulator runs on a minimum amount of dependencies which are as portable as possible to intern optimise its portability.
All dependencies are included as submodules (see /dependencies).
Current dependencies are
- [Arduboy_Emulator_HL](https://github.com/Julianiolo/Arduboy_Emulator_HL)
  - [ATmega32u4_Emulator](https://github.com/Julianiolo/ATmega32u4_Emulator)
    - [CPP_Utils](https://github.com/Julianiolo/CPP_Utils)
- [raylib](https://www.raylib.com/) (Graphics Library)
- [Dear ImGui](https://github.com/ocornut/imgui) (Gui Library)
- [rlImGui](https://github.com/Julianiolo/rlImGui) (ImGui Backend for raylib)
- [ImGuiFD](https://github.com/Julianiolo/ImGuiFD) (File Dialog for Dear ImGui)

## Building
The currently supported ways of building the source are the following:
- Makefile (Native/Web Build)
- Visual Studio 2019 project (Native Build)
