`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/28 12:57:53
// Design Name: 
// Module Name: async_reg8
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


module async_reg8(d, clk, rst, q);
    input[7:0] d;
    input clk, rst;
    output reg[7:0] q;

    always @(posedge clk or negedge rst) begin
        if(rst == 1'b0)
            q <= 8'b00000000;
        else
            q <= d;
    end
endmodule
