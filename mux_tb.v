`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/24 17:53:15
// Design Name: 
// Module Name: mux_tb
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


module mux_tb;
    reg[7:0] a, b;
    reg s;
    wire[7:0] x;

    mux m0(.a(a), .b(b), .s(s), .x(x));

    initial begin
        a = 8'b00000000; b = 8'b11111111; s = 1'b0; #100;
        a = 8'b00000000; b = 8'b11111111; s = 1'b1; #100;
        a = 8'b00000000; b = 8'b11111111; s = 1'b0; #100;
        $finish;
    end
endmodule
