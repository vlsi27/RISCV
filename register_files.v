`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.01.2024 22:54:43
// Design Name: 
// Module Name: register_files
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


module register_files(
input clk,reset,regwrite,
input [19:15] rs1,
input [24:20] rs2,
input [11:7] rd,
input [31:0] writedata,
output [31:0] read_data1,read_data2
    );
    reg [31:0] registers [31:0];
    integer k;
    assign read_data1 = registers[rs1];
    assign read_data2 = registers[rs2];
    
    always @(posedge clk)
    begin
    if(reset)
    begin
    for(k=0;k<32;k=k+1)
    begin
    registers[k] = 32'h1;
    end
    end
    
    end
    
endmodule
