`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/25 01:49:11
// Design Name: 
// Module Name: cmp
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


module cmp(a, b, gt, lt, eq);
    input[7:0] a, b;
    output reg gt, lt, eq;

    always @(a, b)begin
        if(a == b) begin
            gt <= 1'b0;
            lt <= 1'b0;
            eq <= 1'b1;
        end
        if(a > b) begin
            gt <= 1'b1;
            lt <= 1'b0;
            eq <= 1'b0;
        end
        if(a < b) begin
            gt <= 1'b0;
            lt <= 1'b1;
            eq <= 1'b0;
        end
    end

endmodule