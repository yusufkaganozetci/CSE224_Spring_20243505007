`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.04.2025 23:42:52
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


module alu(
    out, A, B, opcode
);
    
input [7:0] A, B;
input [2:0] opcode;
output reg [7:0] out;

always @(*)
    case(opcode)
        3'b000 : out = ~A;
        3'b001 : out = A | B;
        3'b010 : out = A ^ B;
        3'b011 : out = A & B;
        3'b100 : out = A[3:0] * B[3:0]; //multiplying only 4 lsbs
        3'b101 : out = A + B;
        3'b110 : out = A - B;
        default : out = 8'b0;
    endcase    

endmodule