`timescale 1ns / 1ps

module testbench;

    // inputs
    reg clk = 0;
    reg reset = 0;

    // outputs           
    wire led;
    
    wire ja0;
    wire ja1;
    wire ja2;
    wire ja3;
    wire ja4;
    wire ja5;
    wire ja6;
    wire ja7;
    
    wire jb0;
    wire jb1;
    wire jb2;
    wire jb3;
    wire jb4;
    wire jb5;
    wire jb6;
    wire jb7;

    // Unit under test (UUT)
    bit_counter uut (
        .clk (clk),
        .reset (reset),
        .led (led),
        
        .ja0 (ja0),
        .ja1 (ja1),
        .ja2 (ja2),
        .ja3 (ja3),
        .ja4 (ja4),
        .ja5 (ja5),
        .ja6 (ja6),
        .ja7 (ja7),
        
        .jb0 (jb0),
        .jb1 (jb1),
        .jb2 (jb2),
        .jb3 (jb3),
        .jb4 (jb4),
        .jb5 (jb5),
        .jb6 (jb6),
        .jb7 (jb7)
    );

    // bit_counter uut
    initial
        begin
            clk = 0;
    
            reset = 1;
            #10
            reset = 0;
    
            $finish;
        end
    
    always
        #5 clk = ~clk;

endmodule
