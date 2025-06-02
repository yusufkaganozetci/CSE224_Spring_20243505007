`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2025 22:07:01
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

module alu (
    input wire [31:0] inputA,
    input wire [31:0] inputB,
    input wire [1:0] opcode,
    output reg [31:0] result
);

always @(*) begin
    case (opcode)
      2'b00: result = inputA + inputB;
      2'b01: result = inputA - inputB;
      2'b10: result = inputA << inputB;
      2'b11: result = inputA >> inputB;
      default: result = 32'b0;
    endcase
end
 
endmodule