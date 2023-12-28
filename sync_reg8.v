`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/26 20:23:03
// Design Name: 
// Module Name: sync_reg8
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


module sync_reg8(d, clk, rst, q);
    input[7:0] d;
    input clk, rst;
    output reg[7:0] q;

    always @(posedge clk) begin
        if(rst == 1'b0)
            q <= 8'b00000000;
        else
            q <= d;
    end
endmodule
