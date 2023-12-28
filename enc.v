`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/24 12:32:52
// Design Name: 
// Module Name: enc
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


module enc( a, x);
    input[7:0] a;
    output reg[3:0] x;

    always @(a) begin
        casex(a)
         8'b???????1 : x <= 4'b1000;
         8'b??????10 : x <= 4'b1001;
         8'b?????100 : x <= 4'b1010;
         8'b????1000 : x <= 4'b1011;
         8'b???10000 : x <= 4'b1100;
         8'b??100000 : x <= 4'b1101;
         8'b?1000000 : x <= 4'b1110;
         8'b10000000 : x <= 4'b1111;
         default    : x <= 4'b0000;
        endcase
    end
endmodule
