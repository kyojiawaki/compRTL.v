`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/28 20:29:45
// Design Name: 
// Module Name: shift_reg8
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


module shift_reg8(d, si, clk, rst, ld, so, q);
    input[7:0] d;
    input si, clk, rst, ld;
    output so;
    output reg[7:0] q;

    always @(posedge clk) begin
        if(rst == 1'b0)
            q <= 8'b00000000;
        else if(ld == 1'b1)
            q <= d;
        else
            q <= {q[6:0], si};
    end

    assign so = q[7];
endmodule
