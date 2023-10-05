# 14-Bit Counter with Pin Wiggler

## Introduction
This project, "14-Bit Counter with Pin Wiggler," is a simple Verilog module designed for an Arty S7-25 FPGA development board. It implements a 14-bit counter that counts from 0 to 15 and wraps around. Additionally, it toggles the pins on the Pmod headers JA and JB, creating a "pin wiggling" effect. This project is intended as a basic example for learning FPGA development with the Arty S7-25 board. I used it to test pins on an FPGA to make sure they are passing electrical currents. 

## Project Description
Module Name: bit_counter
Design Name: Bit Counter / Pin Wiggler
Engineer: Xhovani Mali
Create Date: 04/26/2022 11:45:33 AM
Company: Microchip
The bit_counter module takes in a clock signal (clk) and a reset signal (reset). When the reset signal is active, it sets the output led to high. When the reset signal is not active, the module counts from 0 to 15 and wraps around. It also sets pins on the Pmod headers JA and JB based on the binary value of the counter, creating a visual effect.

## Design Overview
The bit_counter module is implemented as follows:

It has a 16-bit wide register out to store the counter value.
The counter increments on the rising edge of the clock signal (clk) and is reset when the reset signal is asserted.
The pins on Pmod Header JA (ja0 to ja7) and Pmod Header JB (jb0 to jb7) are assigned based on the individual bits of the out register, creating the "pin wiggling" effect.
The led output is set high when the reset signal is asserted.
Target Devices
This project is designed for the Arty S7-25 FPGA development board.

## Getting Started
To use this project, follow these steps:

1. Set up your FPGA development environment.
2. Create a new project and add the bit_counter module to your project.
3. Connect the clock signal (clk) and reset signal (reset) to appropriate sources.
4. Assign the output pins to the LEDs and Pmod headers.
5. Compile the project and program it onto your Arty S7-25 board.

Tool Versions
The project was developed using the following tools:

[Specify the tools and their versions used in your project here.]

Contributors
Xhovani Mali
