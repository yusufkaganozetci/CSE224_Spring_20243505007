`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.05.2025 23:57:42
// Design Name: 
// Module Name: InstructionDecoder
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


module InstructionDecoder(
    input wire [31:0] instruction,
    output reg [2:0] aluop,
    output reg [4:0] rs1,
    output reg [4:0] rs2,
    output reg [4:0] rd,
    output reg [31:0] immediate,
    output reg reg_write,
    output reg use_immediate
);
    // RISC-V Instruction fields
    wire [6:0] opcode = instruction[6:0];
    wire [2:0] funct3 = instruction[14:12];
    wire [6:0] funct7 = instruction[31:25];
    
    always @(*) begin
        aluop = 3'b000;  // NOP
        rs1 = instruction[19:15];
        rs2 = instruction[24:20];
        rd = instruction[11:7];
        immediate = 32'b0;
        reg_write = 1'b0;
        use_immediate = 1'b0;
        
        case (opcode)
            7'b0010011: begin // I-type instructions (ADDI, SLLI)
                reg_write = 1'b1;
                use_immediate = 1'b1;
                
                case (funct3)
                    3'b000: begin // ADDI
                        aluop = 3'b110; // ADDI
                        immediate = {{20{instruction[31]}}, instruction[31:20]}; // Sign extend
                    end
                    3'b001: begin // SLLI
                        aluop = 3'b100; // SHIFTL
                        immediate = {27'b0, instruction[24:20]}; // shamt field (shift amount)
                    end
                endcase
            end
            
            7'b0110011: begin // R-type instructions (ADD, SUB)
                reg_write = 1'b1;
                use_immediate = 1'b0;
                
                case ({funct7, funct3})
                    {7'b0000000, 3'b000}: aluop = 3'b010; // ADD
                    {7'b0100000, 3'b000}: aluop = 3'b011; // SUB
                endcase
            end
            
            default: begin
                aluop = 3'b000; // NOP
                reg_write = 1'b0;
                use_immediate = 1'b0;
            end
        endcase
    end
endmodule