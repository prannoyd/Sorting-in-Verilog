`timescale 1ns / 1ps

module project1(
	input clk,
	input [3:0] partA,
	input [3:0] partB,
	input partC,
	input partD,	
	output [3:0] partE
);

	wire [3:0] unsorted_num [3:0];
	wire [3:0] sorted_num [3:0];
	wire start_display;

	// input_part
	input_part ip(clk, partA, partB, partC,
	unsorted_num[0], unsorted_num[1], unsorted_num[2], unsorted_num[3]);

	// sorting_part
	sorting_part sp(clk, partD, 
	unsorted_num[0], unsorted_num[1], unsorted_num[2], unsorted_num[3],
	sorted_num[0], sorted_num[1], sorted_num[2], sorted_num[3], start_display); 
	
	// output_part
	output_part op(clk, sorted_num[0], sorted_num[1], sorted_num[2], sorted_num[3], start_display, partE);

endmodule


