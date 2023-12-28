`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/28 20:58:28
// Design Name: 
// Module Name: count8_ld
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


module count8_ld(d, ci, clk, rst, ld, co, q);
    input[7:0] d;
    input ci, clk, rst, ld;
    output co;
    output reg[7:0] q;

    always @(posedge clk) begin
        if(rst == 1'b0)
            q <= 8'b00000000;
        else if(ld == 1'b1)
            q <= d;
        else
            q <= q + ci;
    end

    assign co = &{q, ci};
endmodule
