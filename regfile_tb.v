`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/28 14:23:53
// Design Name: 
// Module Name: regfile_tb
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


module regfile_tb;
    reg[7:0] d;
    reg[2:0] n;
    reg w, clk, rst;
    wire[7:0] q;

    regfile r0(.d(d), .n(n), .w(w), .clk(clk), .rst(rst), .q(q));

    initial begin
        clk <= 1'b0; rst <= 1'b1; w <= 1'b0; n <= 3'bxxx; d <= 8'bxxxxxxxx; #62;
        rst <= ~rst; #40;
        rst <= ~rst; #40;
        w <= ~w; #40;
        n <= 3'b001; d <= 8'b111111111; #40;
        w <= ~w; #40;
        n <= 3'bxxx; d <= 8'bxxxxxxxx; #40;
        $finish;
    end

    always #20 clk <= ~clk;
endmodule
