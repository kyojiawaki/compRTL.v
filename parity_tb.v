`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/26 17:39:31
// Design Name: 
// Module Name: parity_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module parity_tb;
    reg[7:0] a;
    wire x;

    parity p0(.a(a), .x(x));

    initial begin
        a = 8'b00000000; #100;
        a = 8'b00000001; #100;
        a = 8'b00000010; #100;
        a = 8'b00000011; #100;
        a = 8'b00000100; #100;
        a = 8'b00000101; #100;
        a = 8'b00000110; #100;
        a = 8'b00000111; #100;
        a = 8'b00001000; #100;
        a = 8'b00001001; #100;
        a = 8'b00001010; #100;
        a = 8'b00001100; #100;
        a = 8'b00001101; #100;
        a = 8'b00001110; #100;
        a = 8'b00001111; #100;
        a = 8'b00010001; #100;
        a = 8'b00010010; #100;
        a = 8'b00010011; #100;
        a = 8'b00010100; #100;
        $finish;
    end
endmodule
