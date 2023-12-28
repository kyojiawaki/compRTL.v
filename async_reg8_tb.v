`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/28 13:01:08
// Design Name: 
// Module Name: async_reg8_tb
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


module async_reg8_tb;
    reg[7:0] d;
    reg clk, rst;
    wire[7:0] q;

    async_reg8 a0(.d(d), .clk(clk), .rst(rst), .q(q));

    initial begin
        clk <= 1'b0; rst <= 1'b1; d <= 8'b00000001; #22;
        rst <= ~rst; #56;
        rst <= ~rst; #44;
        d <= 8'b00000000; #56;
        d <= 8'b00000001; #20;
        d <= 8'b00000000; #4;
        d <= 8'b00000001; #20;
        $finish;
    end

    always #20 clk <= ~clk;
endmodule
