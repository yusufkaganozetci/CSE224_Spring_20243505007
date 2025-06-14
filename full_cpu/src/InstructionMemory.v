module InstructionMemory(
    input wire [31:0] address,
    output reg [31:0] instruction
);

    always @(*) begin
        case (address)
            // 1. ADDI x10, x0, 10   (reg10 = reg0 + 10)
            32'd0: instruction = 32'b00000000101000000000010100010011;
            
            // 2. ADDI x15, x0, 15   (reg15 = reg0 + 15)
            32'd4: instruction = 32'b00000000111100000000011110010011;
            
            // 3. ADD x25, x10, x15  (reg25 = reg10 + reg15)
            32'd8: instruction = 32'b00000000111101010000110010110011;
            
            // 4. ADDI x20, x25, -5  (reg20 = reg25 - 5)
            32'd12: instruction = 32'b11111111101111001000101000010011;
            
            // 5. ADDI x21, x0, 2    (reg21 = reg0 + 2)
            32'd16: instruction = 32'b00000000001000000000101010010011;
            
            // 6. JAL x0, 12         (J 12) - Jump to word address 12 (PC = 48)
            32'd20: instruction = 32'b00000001100000000000_00000_1101111;
            
            // 7. SLLI x30, x7, 2    (reg30 = reg7 << 2) - This will be skipped initially
            32'd24: instruction = 32'b00000000001000111001111100010011;
            
            // 8-11. NOP instructions (addresses 28, 32, 36, 40, 44)
            32'd28: instruction = 32'b00000000000000000000000000010011; // ADDI x0, x0, 0 (NOP)
            32'd32: instruction = 32'b00000000000000000000000000010011;
            32'd36: instruction = 32'b00000000000000000000000000010011;
            32'd40: instruction = 32'b00000000000000000000000000010011;
            32'd44: instruction = 32'b00000000000000000000000000010011;
            
            // 12. ADDI x4, x0, 4    (reg4 = reg0 + 4) - Address 48
            32'd48: instruction = 32'b00000000010000000000001000010011;
            
            // 13. ADD x5, x0, x0    (reg5 = reg0 + reg0 = 0) - Address 52
            32'd52: instruction = 32'b00000000000000000000001010110011;
            
            // 14. BEQ x4, x5, 7     (if reg4 == reg5, PC = 28) - Address 56
            32'd56: instruction = 32'b11111100010100100000111001100011;
            
            // 15. ADDI x6, x0, 1    (reg6 = reg0 + 1) - Address 60
            32'd60: instruction = 32'b00000000000100000000001100010011;
            
            // 16. ADDI x7, x0, 1    (reg7 = reg0 + 1) - Address 64
            32'd64: instruction = 32'b00000000000100000000001110010011;
            
            // 17. ADD x8, x6, x7    (reg8 = reg6 + reg7) - Address 68
            32'd68: instruction = 32'b00000000011100110000010000110011;
            
            // 18. ADD x6, x7, x0    (reg6 = reg7 + reg0) - Address 72
            32'd72: instruction = 32'b00000000000000111000001100110011;
            
            // 19. ADD x7, x8, x0    (reg7 = reg8 + reg0) - Address 76
            32'd76: instruction = 32'b00000000000001000000001110110011;
            
            // 20. ADDI x5, x5, 1    (reg5 = reg5 + 1) - Address 80
            32'd80: instruction = 32'b00000000000100101000001010010011;
            
            // 21. JAL x0, 14        (J 14) - Jump to word address 14 (PC = 56) - Address 84
            32'd84: instruction = 32'b11111100100000000000000001101111;
            
            default: instruction = 32'b00000000000000000000000000010011; // NOP
        endcase
    end
endmodule