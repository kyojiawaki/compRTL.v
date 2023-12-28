`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/28 21:11:52
// Design Name: 
// Module Name: count8_ld_tb
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


module count8_ld_tb;
    reg[7:0] d;
    reg ci, clk, rst, ld;
    wire co;
    wire[7:0] q;

    count8_ld c0(.d(d), .ci(ci), .clk(clk), .rst(rst), .ld(ld), .co(co), .q(q));

    initial begin
        clk <= 1'b0; rst <= 1'b1; ci <= 1'b0; ld <= 1'b0; d <= 8'b11111110; #22;
        rst <= ~rst; #16;
        ci <= ~ci; #24;
        rst <= ~rst; #80;
        ci <= ~ci; #36;
        ld <= ~ld; #64;
        ci <= ~ci; #6;
        ld <= ~ld; #162;
        $finish;
    end

    always #20 clk <= ~clk;
endmodule
