`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.04.2025 23:37:32
// Design Name: 
// Module Name: ZeroToFiveCounter
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


module ZeroToFiveCounter(
    input wire clk,
    input wire rst,
    output reg [3:0] count
);

reg [26:0] one_second_counter;
reg one_second_enable;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        one_second_counter <= 0;
        one_second_enable <= 0;
    end else if (one_second_counter >= 100_000_000 - 1) begin
        one_second_counter <= 0;
        one_second_enable <= 1;
    end else begin
        one_second_counter <= one_second_counter + 1;
        one_second_enable <= 0;
    end
end

always @(posedge clk or posedge rst) begin
    if (rst)
        count <= 4'd0;
    else if (one_second_enable) begin
        if (count == 4)
            count <= 4'd0;
        else
            count <= count + 1;
    end
end

endmodule