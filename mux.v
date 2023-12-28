`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/24 17:41:59
// Design Name: 
// Module Name: mux
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


module mux(a, b, s, x);
    input[7:0] a, b;
    input s;
    output reg[7:0] x;
    
    always @(a or b or s) begin
        if(s == 1'b1)
            x <= a;
        else
            x <= b;
    end
endmodule
