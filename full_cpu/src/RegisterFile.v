module RegisterFile(
    input wire clk,
    input wire WE3,
    input wire [4:0] A1,
    input wire [4:0] A2,
    input wire [4:0] A3,
    input wire [31:0] WD3,
    output wire [31:0] RD1,
    output wire [31:0] RD2
);
    reg [31:0] registers [31:0];
    
    // Initialize registers
    integer i;
    initial begin
        for (i = 0; i < 32; i = i + 1)
            registers[i] = 32'b0;
    end
    
    // Read operations (asynchronous)
    assign RD1 = (A1 == 5'b0) ? 32'b0 : registers[A1];
    assign RD2 = (A2 == 5'b0) ? 32'b0 : registers[A2];
    
    // Write operation (synchronous)
    always @(posedge clk) begin
        if (WE3 && A3 != 5'b0)
            registers[A3] <= WD3;
    end
endmodule