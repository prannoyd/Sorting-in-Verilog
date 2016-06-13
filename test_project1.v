`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:07:28 02/26/2015
// Design Name:   project1
// Module Name:   
// Project Name:  project1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: project1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_project1;

	// Inputs
	reg clk;
	reg [3:0] partA;
	reg [3:0] partB;
	reg partC;
	reg partD;
	
	// Outputs
	wire [3:0] partE;

	// Instantiate the Unit Under Test (UUT)
	project1 uut (
		.clk(clk), 
		.partA(partA), 
		.partB(partB), 
		.partC(partC),
		.partD(partD), 		
		.partE(partE)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		partD = 0;
		partA = 0;
		partB = 0;
		partC = 0;

		#100;
		partA = 4'b0001;
		partB = 4'b1010;
		partC = 1;
		
		#50;
		partC = 0;
 
		#100;
		partA = 4'b0010;
		partB = 4'b0101;
		partC = 1;
		
		#50;
		partC = 0;

		#100;
		partA = 4'b0100;
		partB = 4'b1110;
		partC = 1;
		
		#50;
		partC = 0;

		#100;
		partA = 4'b1000;
		partB = 4'b0110;
		partC = 1;
		
		#50;
		partC = 0;
		
		#100;
		partD = 1;
		
		#50;
		partD = 0;
		
		#3000;
		// Add stimulus here

	end
	
	always 
	#5 clk = ~clk;
      
endmodule

