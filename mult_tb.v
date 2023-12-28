`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/26 00:39:19
// Design Name: 
// Module Name: mult_tb
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


module mult_tb;
    reg[7:0] a, b;
    wire[15:0] x;
    
    mult m0(.a(a), .b(b), .x(x));
    
    initial begin
        a = 8'b00000000; b = 8'b00000000; #100;
        a = 8'b00000010; b = 8'b00000001; #100; // 2*1=2
        a = 8'b00000010; b = 8'b00000010; #100; // 2*2=4
        a = 8'b11111111; b = 8'b11111111; #100; // ff*ff = ffff
    end
endmodule
