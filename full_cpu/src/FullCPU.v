module FullCPU(
    input wire clk,
    input wire reset,
    input wire control,
    output wire [31:0] Result,
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
    wire branch, jump;
    wire [31:0] branch_target, jump_target;
    wire [31:0] rd1, rd2;
    wire [31:0] alu_b;
    wire [31:0] alu_result;
    wire alu_zero;
    wire take_branch;
    wire [31:0] write_data;
    
    assign take_branch = branch & alu_zero;
    
    assign write_data = jump ? (pc + 4) : alu_result;
    
    // Instantiate modules
    ProgramCounter pc_inst(
        .clk(clk),
        .reset(reset),
        .control(control),
        .branch(take_branch),
        .jump(jump),
        .branch_target(branch_target),
        .jump_target(jump_target),
        .pc(pc)
    );
    
    InstructionMemory imem_inst(
        .address(pc),
        .instruction(instruction)
    );
    
    InstructionDecoder decoder_inst(
        .instruction(instruction),
        .current_pc(pc),
        .aluop(aluop),
        .rs1(rs1),
        .rs2(rs2),
        .rd(rd),
        .immediate(immediate),
        .reg_write(reg_write),
        .use_immediate(use_immediate),
        .branch(branch),
        .jump(jump),
        .branch_target(branch_target),
        .jump_target(jump_target)
    );
    
    RegisterFile regfile_inst(
        .clk(clk),
        .WE3(reg_write & control),
        .A1(rs1),
        .A2(rs2),
        .A3(rd),
        .WD3(write_data),
        .RD1(rd1),
        .RD2(rd2)
    );
    
    assign alu_b = use_immediate ? immediate : rd2;
    
    ALU alu_inst(
        .A(rd1),
        .B(alu_b),
        .ALUOp(aluop),
        .Result(alu_result),
        .Zero(alu_zero)
    );
    
    // Output the ALU result or write data for display
    assign Result = write_data;
    
    // Seven segment display
    SevenSegDisplay display_inst(
        .clk(clk),
        .data(Result),
        .an(an),
        .seg(seg)
    );
    
endmodule