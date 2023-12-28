`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/25 02:10:35
// Design Name: 
// Module Name: add
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


module add(a, b, ci, co, x);
    input[7:0] a, b;
    input ci;
    output reg[7:0] x;
    output reg co;
    
    always @(a, b, ci) begin
        {co, x} <= a + b + ci;
    end
endmodule
