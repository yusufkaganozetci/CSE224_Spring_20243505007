module EdgeDetector(
    input wire clk,
    input wire reset,
    input wire signal_in,
    output wire edge_out
);
    reg signal_reg;
    
    always @(posedge clk or posedge reset) begin
        if (reset)
            signal_reg <= 1'b0;
        else
            signal_reg <= signal_in;
    end
    
    assign edge_out = signal_in & ~signal_reg;
endmodule