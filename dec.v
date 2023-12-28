`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/23 19:19:01
// Design Name: 
// Module Name: dec
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


module dec( a, x);
    input[2:0] a;
    output reg[7:0] x;

    always @(a) begin
      case(a)
       3'b000: x <= 8'b00000001;
       3'b001: x <= 8'b00000010;
       3'b010: x <= 8'b00000100;
       3'b011: x <= 8'b00001000;
       3'b100: x <= 8'b00010000;
       3'b101: x <= 8'b00100000;
       3'b110: x <= 8'b01000000;
       3'b111: x <= 8'b10000000;
      endcase
    end
endmodule
