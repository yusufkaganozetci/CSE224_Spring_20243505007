`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.05.2025 23:57:14
// Design Name: 
// Module Name: InstructionMemory
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


module InstructionMemory(
    input wire [31:0] address,
    output reg [31:0] instruction
);

    always @(*) begin
        case (address)
            // ADDI x10, x0, 10   (reg10 = reg0 + 10)
            32'd0: instruction = 32'b000000001010_00000_000_01010_0010011;
            
            // ADDI x15, x0, 15   (reg15 = reg0 + 15)
            32'd4: instruction = 32'b000000001111_00000_000_01111_0010011;
            
            // ADD x25, x10, x15  (reg25 = reg10 + reg15)
            32'd8: instruction = 32'b0000000_01111_01010_000_11001_0110011;
            
            // ADDI x20, x25, -5  (reg20 = reg25 - 5) using ADDI with negative immediate
            32'd12: instruction = 32'b111111111011_11001_000_10100_0010011;
            
            // ADDI x5, x0, 2     (reg5 = reg0 + 2)
            32'd16: instruction = 32'b000000000010_00000_000_00101_0010011;
            
            // SLLI x30, x25, 2   (reg30 = reg25 << 2) using shift left logical immediate
            32'd20: instruction = 32'b000000000010_11001_001_11110_0010011;
            
             // NOP
            default: instruction = 32'b0;
        endcase
    end
endmodule