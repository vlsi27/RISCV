`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.01.2024 20:37:49
// Design Name: 
// Module Name: RISCV_TOP
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


module RISCV_TOP(PC_in);
input [31:0] PC_in;
wire [31:0] instructionTop ,instruction_out;

program_counter pc (.clk(clk),.reset(reset),
.PC_in(PC_in),
.PC_out(instructionTop));

instruction_memory im (.clk(clk),
.read_addr(instructionTop),
 .instr_out(instruction_out));
 
register_files rf (.clk(clk),.reset(reset),.regwrite(),
  .rs1(instruction_out),
  .rs2(instruction_out),
  .rd(instruction_out),
  .writedata(),
 .read_data1(),.read_data2()); 
 
endmodule
