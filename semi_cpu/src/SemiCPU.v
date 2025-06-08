`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.05.2025 23:59:56
// Design Name: 
// Module Name: SemiCPU
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


module SemiCPU(
    input wire clk,
    input wire reset,
    input wire control,
    output wire [3:0] an,
    output wire [6:0] seg
);
    // Internal signals
    wire [31:0] pc;
    wire [31:0] instruction;
    wire [2:0] aluop;
    wire [4:0] rs1, rs2, rd;
    wire [31:0] immediate;
    wire reg_write, use_immediate;
    wire [31:0] rd1, rd2;
    wire [31:0] alu_b;
    wire [31:0] alu_result;
    
    // Instantiate modules
    ProgramCounter pc_inst(
        .clk(clk),
        .reset(reset),
        .control(control),
        .pc(pc)
    );
    
    InstructionMemory imem_inst(
        .address(pc),
        .instruction(instruction)
    );
    
    InstructionDecoder decoder_inst(
        .instruction(control ? instruction : 32'b0),
        .aluop(aluop),
        .rs1(rs1),
        .rs2(rs2),
        .rd(rd),
        .immediate(immediate),
        .reg_write(reg_write),
        .use_immediate(use_immediate)
    );
    
    RegisterFile regfile_inst(
        .clk(clk),
        .WE3(reg_write),
        .A1(rs1),
        .A2(rs2),
        .A3(rd),
        .WD3(alu_result),
        .RD1(rd1),
        .RD2(rd2)
    );
    
    // ALU B input mux
    assign alu_b = use_immediate ? immediate : rd2;
    
    ALU alu_inst(
        .A(rd1),
        .B(alu_b),
        .ALUOp(aluop),
        .Result(alu_result)
    );
    
    // Seven segment display
    SevenSegDisplay display_inst(
        .clk(clk),
        .data(alu_result),
        .an(an),
        .seg(seg)
    );
    
endmodule