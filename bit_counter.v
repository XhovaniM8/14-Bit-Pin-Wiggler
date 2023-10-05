`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Xhovani Mali
// 
// Create Date: 04/26/2022 11:45:33 AM
// Design Name: Bit Counter / Pin Wiggler
// Module Name: bit_counter
// Project Name: 14bitcounter
// Target Devices: Arty S7- 25
// Tool Versions: 
// Description: 
//////////////////////////////////////////////////////////////////////////////////


module bit_counter(
    input clk, // Declare input port for clock to allow counter to count up
    input reset, // Declare input port fo reset to allow the counter to be reset
    output led,
    
    // Pmod Header JA
    output ja0,
    output ja1,
    output ja2,
    output ja3,
    output ja4,
    output ja5,
    output ja6,
    output ja7,
    
    // Pmod Header JB
    output jb0,
    output jb1,
    output jb2,
    output jb3,
    output jb4,
    output jb5,
    output jb6,
    output jb7
);

    reg[15:0] out;

    // Count from 0 to 15 and wrap around
    always @ (posedge clk, posedge reset) begin
        if (reset)
            out <= 0;
        else
            out <= out + 1;
    end

    // Sets Corresponding Pins to High
    // Use JAs
    assign ja0 = out[0];
    assign ja1 = out[1];
    assign ja2 = out[2];
    assign ja3 = out[3];
    assign ja4 = out[4];
    assign ja5 = out[5];
    assign ja6 = out[6];
    assign ja7 = out[7];
    
    assign jb0 = out[8];
    assign jb1 = out[9];
    assign jb2 = out[10];
    assign jb3 = out[11];
    assign jb4 = out[12];
    assign jb5 = out[13];
    assign jb6 = out[14];
    assign jb7 = out[15];
    
    assign led = reset;

endmodule
