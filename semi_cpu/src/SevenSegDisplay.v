`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.05.2025 23:59:23
// Design Name: 
// Module Name: SevenSegDisplay
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


module SevenSegDisplay(
    input wire clk,
    input wire [31:0] data,
    output reg [3:0] an,
    output reg [6:0] seg
);
    reg [1:0] digit_select;
    reg [3:0] current_digit;
    reg [19:0] counter; 
    
    always @(posedge clk) begin
        counter <= counter + 1;
        if (counter == 20'd100000) begin 
            counter <= 20'd0;
            digit_select <= digit_select + 1;
        end
    end
    
    always @(*) begin
        case (digit_select)
            2'b00: begin
                an = 4'b1110;
                current_digit = data[3:0];
            end
            2'b01: begin
                an = 4'b1101;
                current_digit = data[7:4];
            end
            2'b10: begin
                an = 4'b1011;
                current_digit = data[11:8];
            end
            2'b11: begin
                an = 4'b0111;
                current_digit = data[15:12];
            end
        endcase
    end
    
    // Seven segment decoder
    always @(*) begin
        case (current_digit)
            4'h0: seg = 7'b1000000; // 0
            4'h1: seg = 7'b1111001; // 1
            4'h2: seg = 7'b0100100; // 2
            4'h3: seg = 7'b0110000; // 3
            4'h4: seg = 7'b0011001; // 4
            4'h5: seg = 7'b0010010; // 5
            4'h6: seg = 7'b0000010; // 6
            4'h7: seg = 7'b1111000; // 7
            4'h8: seg = 7'b0000000; // 8
            4'h9: seg = 7'b0010000; // 9
            4'hA: seg = 7'b0001000; // A
            4'hB: seg = 7'b0000011; // B
            4'hC: seg = 7'b1000110; // C
            4'hD: seg = 7'b0100001; // D
            4'hE: seg = 7'b0000110; // E
            4'hF: seg = 7'b0001110; // F
            default: seg = 7'b1111111; // Blank
        endcase
    end
endmodule