module register_file (
    input wire CLK,
    input wire WE3,
    input wire [4:0] A1,
    input wire [4:0] A2,
    input wire [4:0] A3,
    input wire [31:0] WD3,
    output reg [31:0] RD1,
    output reg [31:0] RD2
);

reg [31:0] registers [31:0];

always @(posedge CLK) begin
    if (WE3)
        registers[A3] <= WD3;
end

  always @(*) begin
    RD1 = registers[A1];
    RD2 = registers[A2];
  end

endmodule