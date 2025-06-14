module InstructionDecoder(
    input wire [31:0] instruction,
    input wire [31:0] current_pc,
    output reg [2:0] aluop,
    output reg [4:0] rs1,
    output reg [4:0] rs2,
    output reg [4:0] rd,
    output reg [31:0] immediate,
    output reg reg_write,
    output reg use_immediate,
    output reg branch,
    output reg jump,
    output reg [31:0] branch_target,
    output reg [31:0] jump_target
);
    // RISC-V Instruction fields
    wire [6:0] opcode = instruction[6:0];
    wire [2:0] funct3 = instruction[14:12];
    wire [6:0] funct7 = instruction[31:25];
    
    // Immediate value extraction
    wire [31:0] i_imm = {{20{instruction[31]}}, instruction[31:20]};
    wire [31:0] b_imm = {{19{instruction[31]}}, instruction[31], instruction[7], 
                        instruction[30:25], instruction[11:8], 1'b0};
    wire [31:0] j_imm = {{11{instruction[31]}}, instruction[31], instruction[19:12], 
                        instruction[20], instruction[30:21], 1'b0};
    
    always @(*) begin
        // Default values
        aluop = 3'b000;  // NOP
        rs1 = instruction[19:15];
        rs2 = instruction[24:20];
        rd = instruction[11:7];
        immediate = 32'b0;
        reg_write = 1'b0;
        use_immediate = 1'b0;
        branch = 1'b0;
        jump = 1'b0;
        branch_target = 32'b0;
        jump_target = 32'b0;
        
        case (opcode)
            7'b0010011: begin // I-type instructions (ADDI, SLLI)
                reg_write = 1'b1;
                use_immediate = 1'b1;
                immediate = i_imm;
                
                case (funct3)
                    3'b000: aluop = 3'b110; // ADDI
                    3'b001: begin // SLLI
                        aluop = 3'b100; // SHIFTL
                        immediate = {27'b0, instruction[24:20]}; // shamt field
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
            
            7'b1100011: begin // B-type instructions (BEQ)
                case (funct3)
                    3'b000: begin // BEQ
                        branch = 1'b1;
                        aluop = 3'b011; // SUB for comparison
                        use_immediate = 1'b0;
                        // Calculate branch target: PC + immediate
                        branch_target = current_pc + b_imm;
                    end
                endcase
            end
            
            7'b1101111: begin // J-type instructions (JAL)
                jump = 1'b1;
                reg_write = (rd != 5'b0) ? 1'b1 : 1'b0; // Write to rd if not x0
                // Calculate jump target: PC + immediate
                jump_target = current_pc + j_imm;
            end
            
            default: begin
                aluop = 3'b000; // NOP
                reg_write = 1'b0;
                use_immediate = 1'b0;
                branch = 1'b0;
                jump = 1'b0;
            end
        endcase
    end
endmodule