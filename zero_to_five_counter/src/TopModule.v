`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.04.2025 23:38:33
// Design Name: 
// Module Name: TopModule
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


module TopModule(
    input clk,
    input rst,
    output [6:0] seg,
    output [7:0] an
);

wire [3:0] count;

assign an = 8'b11111110; 

ZeroToFiveCounter counter(
    .clk(clk),
    .rst(rst),
    .count(count)
);

SevenSegmentDisplay display(
    .digit(count),
    .seg(seg)
);

endmodule