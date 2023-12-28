`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/28 21:37:59
// Design Name: 
// Module Name: fifo
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


module fifo(d, rd, wr, clk, rst, q, full, empty);
    input[7:0] d;
    input rd, wr, clk, rst;
    output[7:0] q;
    output full, empty;
    reg[7:0] mem[15:0];
    reg[15:0] val;
    reg[3:0] rdc, wrc;
    integer  i;

    always @(posedge clk) begin
        if(rst == 1'b0) begin
            for(i=0; i<16; i=i+1)
                mem[i] <= 8'h00;
            val <= 16'h0000;
            rdc <= 4'h0;
            wrc <= 4'h0;
        end else begin
            if(wr == 1'b1 && full == 1'b1) begin
                mem[wrc] <= d;
                val[wrc] <= 1'b1;
                wrc <= wrc + 1'b1;
            end
            if(rd == 1'b1 && empty == 1'b0) begin
              val[rdc] <= 1'b0;
              rdc <= rdc + 1'b1;
            end
        end        
    end
    
        assign q = mem[rdc];
        assign full = &val;
        assign empty = ~|val;
endmodule
