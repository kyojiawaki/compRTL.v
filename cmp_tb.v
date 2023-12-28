`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/24 22:33:32
// Design Name: 
// Module Name: cmp_tb
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


module cmp_tb;
    reg[7:0] a, b;
    wire gt, lt, eq;

    cmp c0(.a(a), .b(b), .gt(gt), .lt(lt), .eq(eq));

    initial begin
        a = 8'b00000000; b = 8'b00000001; #100;
        a = 8'b00000001; b = 8'b00000000; #100;
        a = 8'b00000001; b = 8'b00000001; #100;
        $finish;
    end
endmodule
