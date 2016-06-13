`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:53:21 03/01/2016 
// Design Name: 
// Module Name:    output_part 
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
module output_part(
    input clk,
    output [3:0] sorted_num0,
    output [3:0] sorted_num1,
    output [3:0] sorted_num2,
    output [3:0] sorted_num3,
    input start_display,
    output [3:0]partE
    );
reg[15:0]cnt;
reg[1:0]sel;
reg enbl_cnt;
assign partE=(sel==3)?sorted_num3:
             (sel==2)?sorted_num2:
				 (sel==1)?sorted_num1:
				  sorted_num0;
always@(posedge clk)
if(enbl_cnt)
   if(cnt==40)
		begin
			sel<=sel+1;
			cnt<=0;
		end
	else
	   cnt<=cnt+1;
else
	begin
		sel<=0;
		cnt<=0;
	end
always@(posedge clk)
	if(start_display && cnt==0)
		enbl_cnt<=1;
	else if(cnt==40 && sel==3)
		enbl_cnt<=0;
endmodule
