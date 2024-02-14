`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.01.2024 20:21:32
// Design Name: 
// Module Name: program_counter
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


module program_counter(
input clk,reset,
input [31:0] PC_in,
output reg [31:0] PC_out
    );
    always @(posedge clk , negedge reset)
    begin
    if(!reset)
    PC_out <= 32'h0;
    else
    PC_out <= PC_in;
    end
endmodule
