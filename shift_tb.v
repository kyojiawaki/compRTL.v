`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/25 10:52:20
// Design Name: 
// Module Name: shift_tb
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


module shift_tb;
    reg[7:0] a;
    reg d;
    reg[2:0] n;
    wire[7:0] x;

    shift s0(.a(a), .d(d), .n(n), .x(x));

    initial begin
        a = 8'b00000000; d = 1'b0; n = 3'b000; #100;
        a = 8'b00010000; d = 1'b1; n = 3'b010; #100;
        a = 8'b00010000; d = 1'b0; n = 3'b010; #100;
        $finish;
    end
endmodule
