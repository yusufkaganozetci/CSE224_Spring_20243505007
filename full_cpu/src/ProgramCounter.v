module ProgramCounter(
    input wire clk,
    input wire reset,
    input wire control,
    input wire branch,
    input wire jump,
    input wire [31:0] branch_target,
    input wire [31:0] jump_target,
    output reg [31:0] pc
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            pc <= 32'b0;
        else if (control) begin
            if (jump)
                pc <= jump_target; 
            else if (branch)
                pc <= branch_target; 
            else
                pc <= pc + 4;
        end
    end
endmodule