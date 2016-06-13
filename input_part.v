`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:52:48 03/01/2016 
// Design Name: 
// Module Name:    input_part 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module input_part(
    input clk,
    input [3:0] partA,
    input [3:0] partB,
    input partC,
    output reg[3:0]unsorted_num0,
	 output reg[3:0]unsorted_num1,
	 output reg[3:0]unsorted_num2,
	 output reg[3:0]unsorted_num3
    );

always@(posedge clk)
if(partC)
	if(partA[0])
		unsorted_num0<=partB;
	else if(partA[1])
		unsorted_num1<=partB;
	else if(partA[2])
		unsorted_num2<=partB;
	else if(partA[3])
		unsorted_num3<=partB;
endmodule
