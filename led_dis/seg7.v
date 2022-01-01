`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:58:00 11/29/2021 
// Design Name: 
// Module Name:    seg7 
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
module seg7(
    output [6:0] led,
    output [1:0] cpld_en,
	 output  [2:0] led_en,
    input clkin
    );
	 
	reg clk_new = 1'b0;
	reg[6:0] seg;
	reg[3:0] num;
	reg[2:0] seg_en;
	integer counter_reg1 = 0;
	integer flag = 0;
	
	assign cpld_en[1:0] = 2'b01;
	assign led = seg;
	assign led_en = seg_en;	
	
	always @(posedge clkin)
	begin
		if (counter_reg1 == 0) //100Mhz/(100hz*2)-1
	  //if (counter_reg1 == 49999) //100Mhz/(100hz*2)-1
		begin 
			clk_new <= ~clk_new;
		   counter_reg1 <= 0;
		end else
	   begin
         counter_reg1 <= counter_reg1 + 1;
      end
	end

   always @(posedge clk_new)
	begin
		case (num)	 
			 4'b0000: seg<=7'b0111111;
			 4'b0001: seg<=7'b0000110;
			 4'b0010: seg<=7'b1011011;
			 4'b0011: seg<=7'b1001111;
			 4'b0100: seg<=7'b1100110;
			 4'b0101: seg<=7'b1101101;
			 4'b0110: seg<=7'b1111101;
			 4'b0111: seg<=7'b0000111;
			 4'b1000: seg<=7'b1111111;
			 4'b1001: seg<=7'b1101111;
			 default: seg<=7'b0000000;
		 endcase
	 end
	 
	 always @(posedge clk_new)
	 begin
		if (flag == 1)
		begin 
			seg_en <= 3'b101;
		   flag <= flag+1;
			num <= 4'b0111;
		end else if (flag == 2)
		begin
			seg_en <= 3'b011;
			flag <= flag+1;
			num <= 4'b0101; 
		end else 
	   begin 
			seg_en<= 3'b110;
			flag <= 1;
			num <= 4'b0011; 
		end
	 end
	 
endmodule