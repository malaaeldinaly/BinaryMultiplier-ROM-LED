# Binary Multiplier using ROM and LED Output

This repository contains a Verilog module that implements a 2-bit by 2-bit binary multiplier using a ROM (Read-Only Memory). The product of the multiplication is displayed in binary format on four LEDs.

## Module Description

The module, named `BinaryMultiplier_ROM_LED`, takes two 2-bit inputs `a` and `b`, and produces a 4-bit output `result`. It utilizes a ROM with pre-stored multiplication values to perform the multiplication operation efficiently.

## ROM Initialization

The ROM is initialized with multiplication values, loaded from the file `product.txt`. This file contains the pre-calculated product of all possible combinations of 2-bit inputs `a` and `b`. The ROM is organized such that it takes the concatenation of `a` and `b` as an address and outputs the corresponding product.

## How the Output is Displayed

The result of the multiplication is stored in the variable `w`, which is the output from the ROM. The lower 4 bits of `w` (i.e., `w[3:0]`) represent the binary form of the product. This 4-bit output `result` is connected to four LEDs, where each LED represents a bit of the product.

## File Contents

- `BinaryMultiplier_ROM_LED.v`: Verilog source code for the binary multiplier module.
- `product.txt`: Text file containing pre-calculated multiplication values for ROM initialization.

## Getting Started

1. Clone this repository to your local machine.
2. Open the Verilog project in your preferred hardware description language (HDL) development tool (e.g., Vivado).
3. Run the synthesis and implementation process to generate the bitstream.
4. Program the bitstream onto your target FPGA board.
5. Connect the 2-bit input `a` and `b` to appropriate switches on the board.
6. Observe the product displayed on the four LEDs.
