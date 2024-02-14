`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.01.2024 20:25:01
// Design Name: 
// Module Name: instruction_memory
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


module instruction_memory(
input clk,
input [31:0] read_addr,
output  [31:0] instr_out
    );
    integer k;
    reg [31:0] Memory [63:0];
    assign instr_out = Memory[read_addr];
    always @(posedge clk)
    begin
    for(k=0;k<64;k=k+1)
    begin
    Memory[k] = 32'h00000000;
    end
    end
endmodule
