module CPU_TOP(
    input wire clk,    
    input wire res,   
    input wire control,         
    output wire [3:0] an,    
    output wire [6:0] seg    
);
    
    // Internal signals
    wire reset;
    wire control_edge;
    wire [31:0] cpu_result;
    
    assign reset = ~res;
    
    EdgeDetector edge_det(
        .clk(clk),
        .reset(reset),
        .signal_in(control),
        .edge_out(control_edge)
    );
    
    // Main CPU instance
    FullCPU cpu_inst(
        .clk(clk),
        .reset(reset),
        .control(control_edge),
        .Result(cpu_result),
        .an(an),
        .seg(seg)
    );
    
endmodule
