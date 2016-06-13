`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:02:53 03/01/2016 
// Design Name: 
// Module Name:    sorting_part 
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
module sorting_part(
    input clk,
    input partD,
    input[3:0]unsorted_num0,
	 input[3:0]unsorted_num1,
	 input[3:0]unsorted_num2,
	 input[3:0]unsorted_num3,
    output reg[3:0]sorted_num0,
	 output reg[3:0]sorted_num1,
	 output reg[3:0]sorted_num2,
	 output reg[3:0]sorted_num3,
	 output start_display
    );

reg[3:0]B1;
reg[3:0]B2;
reg[3:0]S1;
reg[3:0]S2;
reg[3:0]M1;
reg[3:0]M2;
reg[3:0]cnt;
reg start;
assign start_display = ~cnt[2]&~cnt[1]&~cnt[0];
always@(posedge clk)
if(partD)
	begin
		start<=1;
		cnt<=0;
	end 
else
if(start)
	case(cnt)
		0:begin
			  cnt<=cnt+1;
			  if(unsorted_num0>unsorted_num1)
				 begin
					B1<=unsorted_num0;
					S1<=unsorted_num1;
				 end
			  else
				 begin
					B1<=unsorted_num1;
					S1<=unsorted_num0;
				 end
			  if(unsorted_num2>unsorted_num3)
				 begin
					B2<=unsorted_num2;
					S2<=unsorted_num3;
				 end
			  else
				 begin
					B2<=unsorted_num3;
					S2<=unsorted_num2;
				 end
		  end
		1:begin
			  cnt<=cnt+1;
			  if(B1>B2)
				 begin
					sorted_num3<=B1;
					M1<=B2;
				 end
			  else
				 begin
					sorted_num3<=B2;
					M1<=B1;
				 end
			  if(S1<S2)
				 begin
					sorted_num0<=S1;
					M2<=S2;
				 end
			  else
				 begin
					sorted_num0<=S2;
					M2<=S1;
				 end
			end
		2:begin
			  cnt<=0;
			  start<=0;
			  if(M1>M2)
				 begin
					sorted_num2<=M1;
					sorted_num1<=M2;
				 end
			  else
				 begin
					sorted_num2<=M2;
					sorted_num1<=M1;
				 end
			end
	endcase
endmodule
