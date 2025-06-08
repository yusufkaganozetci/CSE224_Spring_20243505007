`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.05.2025 23:58:26
// Design Name: 
// Module Name: RegisterFile
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
    assign RD1 = (A1 == 5'b0) ? 32'b0 : registers[A1]; // x0 is hardwired to 0 in RISC-V
    assign RD2 = (A2 == 5'b0) ? 32'b0 : registers[A2];
    
    // Write operation (synchronous)
    always @(posedge clk) begin
        if (WE3 && A3 != 5'b0) // x0 cannot be written to
            registers[A3] <= WD3;
    end
endmodule