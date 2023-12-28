`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/24 12:40:19
// Design Name: 
// Module Name: enc_tb
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


module enc_tb;
    reg[7:0] a;
    wire[3:0] x;

    enc e0(.a(a), .x(x));

    initial begin
        a = 8'b00000001; # 100;
        a = 8'b00000010; # 100;
        a = 8'b00000100; # 100;
        a = 8'b00001000; # 100;
        a = 8'b00010000; # 100;
        a = 8'b00100000; # 100;
        a = 8'b01000000; # 100;
        a = 8'b10000000; # 100;
        a = 8'b00000000; # 100;
        $finish;
    end
endmodule
