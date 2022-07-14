# Arduboy_Emulator
a currently wip cross platform emulator of the [Arduboy](https://www.arduboy.com/) console written in C++

## Features:
- Debugger
- Disassembler
- Analytics
  - Sleep analysis
  - Stack size
- Ram/Rom/Eeprom Hex Editor
  - Editable as different data types
- Support for visualising data through symbols

## Dependencies:
Arduboy_Emulator runs on a minimum amount of dependencies which are as portable as possible to intern optimise its portability.
Current dependencies are
- Arduboy_Emulator_HL
  - ATmega32u4_Emulator
- Dear ImGui
- ImGuiFD
- raylib

## Building
The currently supported ways of building the source are the following:
- Makefile
- Visual Studio 2019 project
