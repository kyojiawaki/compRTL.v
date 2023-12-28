`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/28 14:19:04
// Design Name: 
// Module Name: regfile
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


module regfile(d, n, w, clk, rst, q);
    input[7:0] d;
    input[2:0] n;
    input w, clk, rst;
    output[7:0] q;
    reg[7:0] regf[0:7];
    integer i;

    always @(posedge clk) begin
        if(rst == 1'b0)
            for(i=0; i<8; i=i+1)
                regf[i] <= 8'b00000000;
        else if(w == 1'b1)
            regf[n] <= d;
    end

    assign q = regf[n];
endmodule
