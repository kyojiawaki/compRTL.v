`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/25 10:58:58
// Design Name: 
// Module Name: shift
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


module shift(a, d, n, x);
    input[7:0] a;
    input      d;
    input[2:0] n;
    output reg[7:0] x;

    always @(a or d or n)begin
        if(d == 1'b0) // right
            x <= a >> n;
        else // left
            x <= a << n;
    end
endmodule
