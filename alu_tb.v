`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/26 17:25:35
// Design Name: 
// Module Name: alu_tb
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


module alu_tb;
    reg [7:0] accum, data;
    reg [2:0] opcode;
    wire[7:0] alu_out;

    alu a0(.alu_out(alu_out), .accum(accum), .data(data), .opcode(opcode));

    initial begin
        accum = 8'b00001111; data = 8'b11110000; opcode = 3'bxxx; #100;
        accum = 8'b00001111; data = 8'b11110000; opcode = 3'b000; #100; // AND
        accum = 8'b00001111; data = 8'b11110000; opcode = 3'b001; #100; // OR
        accum = 8'b00001111; data = 8'b11110000; opcode = 3'b010; #100; // NOT
        accum = 8'b00001111; data = 8'b11110000; opcode = 3'b011; #100; // XOR
        accum = 8'b00001111; data = 8'b11110000; opcode = 3'b100; #100; // ADD
        accum = 8'b00001111; data = 8'b11110000; opcode = 3'b101; #100; // SUB
        accum = 8'b00001111; data = 8'b11110000; opcode = 3'b110; #100; // ACC
        accum = 8'b00001111; data = 8'b11110000; opcode = 3'b111; #100; // DAT
        $finish;
    end
endmodule
