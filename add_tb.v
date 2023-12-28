`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/25 02:26:53
// Design Name: 
// Module Name: add_tb
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


module add_tb;
    reg[7:0] a, b;
    reg ci;
    wire[7:0] x;
    wire co;

    add a0(.a(a), .b(b), .ci(ci), .x(x), .co(co));

    initial begin
        a = 8'b00000000; b = 8'b00000000; ci = 8'b00000000; #100; // x = 0, co = 0
        a = 8'b00000001; b = 8'b00000001; ci = 8'b00000001; #100; // x = 3, co = 0
        a = 8'b11111111; b = 8'b00000001; ci = 8'b00000000; #100; // x = 0, co = 1
        a = 8'b00001111; b = 8'b11110000; ci = 8'b00000000; #100; // x = ff, co = 0
        $finish;
    end
endmodule
