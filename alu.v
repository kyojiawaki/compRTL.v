`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/26 17:16:20
// Design Name: 
// Module Name: alu
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

`define AND 3'b000
`define OR  3'b001
`define NOT 3'b010
`define XOR 3'b011
`define ADD 3'b100
`define SUB 3'b101
`define ACC 3'b110
`define DAT 3'b111

module alu(alu_out, accum, data, opcode);
    input[7:0] accum, data;
    input[2:0] opcode;
    output reg[7:0] alu_out;

    always @(accum or data or opcode) begin
        case (opcode)
            `AND :alu_out <= accum & data;
            `OR  :alu_out <= accum | data;
            `NOT :alu_out <= ~accum;
            `XOR :alu_out <= accum ^ data;
            `ADD :alu_out <= accum + data;
            `SUB :alu_out <= accum - data;
            `ACC :alu_out <= accum;
            `DAT :alu_out <= data;
            default: alu_out <= 8'bxxxxxxxx;
        endcase
    end
endmodule
