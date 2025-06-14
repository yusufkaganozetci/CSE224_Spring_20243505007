module TopModule (
    input wire CLK,
    input wire WE3,
    
    input wire [4:0] A1,
    input wire [4:0] A2, 
    input wire [4:0] A3,
    input wire [31:0] WD3,
    
    input wire [1:0] alu_opcode,
    
    output wire [31:0] RD1,
    output wire [31:0] RD2,
    output wire [31:0] alu_result
);

register_file rf (
    .CLK(CLK),
    .WE3(WE3),
    .A1(A1),
    .A2(A2),
    .A3(A3),
    .WD3(WD3),
    .RD1(RD1),
    .RD2(RD2)
);

alu my_alu (
    .inputA(RD1),
    .inputB(RD2),
    .opcode(alu_opcode),
    .result(alu_result)
);

endmodule