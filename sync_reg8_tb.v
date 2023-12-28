`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/26 20:27:07
// Design Name: 
// Module Name: sync_reg8_tb
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


module sync_reg8_tb;
    reg[7:0] d;
    reg clk, rst;
    wire[7:0] q;

    sync_reg8 s0(.d(d), .clk(clk), .rst(rst), .q(q));

    initial begin
        clk <= 1'b0;  rst <= 1'b1; d <= 1'b1; #38;
        rst <= ~rst; #40;
        rst <= ~rst; #44;
        d <= 1'b0; #40;
        d <= 1'b1; #36;
        d <= 1'b0; #4;
        d <= 1'b1; #20;
        $finish;
    end

    always #20 clk <= ~clk;

endmodule
