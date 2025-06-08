`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.05.2025 23:58:53
// Design Name: 
// Module Name: ALU
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


module ALU(
    input wire [31:0] A,
    input wire [31:0] B,
    input wire [2:0] ALUOp,
    output reg [31:0] Result
);
    
    always @(*) begin
        case (ALUOp)
            3'b000, 3'b001: Result = 32'b0; // NOP
            3'b010, 3'b110: Result = A + B; // ADD, ADDI
            3'b011, 3'b111: Result = A - B; // SUB, SUBI
            3'b100: Result = A << B[4:0]; // SHIFTL
            3'b101: Result = A >> B[4:0]; // SHIFTR
            default: Result = 32'b0;
        endcase
    end
endmodule
