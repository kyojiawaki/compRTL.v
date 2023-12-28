`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/24 12:08:47
// Design Name: 
// Module Name: dec_tb
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


module dec_tb;
    reg[2:0] a;
    wire[7:0] x;

    dec d0(.a(a), .x(x));

    initial begin
        a = 3'b000; #100;
        a = 3'b001; #100;
        a = 3'b010; #100;
        a = 3'b011; #100;
        a = 3'b100; #100;
        a = 3'b101; #100;
        a = 3'b110; #100;
        a = 3'b111; #100;
        $finish;
    end
endmodule
