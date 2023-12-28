`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/28 20:35:16
// Design Name: 
// Module Name: shift_reg8_tb
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


module shift_reg8_tb;
    reg[7:0] d;
    reg si, clk, rst, ld;
    wire so;
    wire[7:0] q;

    shift_reg8 s0(.d(d), .si(si), .clk(clk), .rst(rst), .ld(ld), .so(so), .q(q));

    initial begin
        clk <= 1'b0; rst <= 1'b1; ld <= 1'b0; d <= 8'b10110101; si <= 1'b1; #15;
        si <= ~si; #7;
        rst <= ~rst; #56;
        rst <= ~rst; #20;
        ld <= ~ld; #20;
        ld <= ~ld; #302;
        $finish;
    end

    always #20 clk <= ~clk;
endmodule
