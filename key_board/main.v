`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:39:30 11/30/2021 
// Design Name: 
// Module Name:    main 
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
module main(
    input clk,
    input [5:0] key_in,
	 output[1:0] cpld_en,
    output [3:0] key_out,
    output [6:0] led, 
	 output led_en
    );
	 

	 wire clk2;
	 wire [3:0] key_value;
	 reg [6:0] seg; 
  
	assign led=seg;
	assign cpld_en[1:0]=2'b01;
	assign led_en=1'b0;



	clk_div U1(clk,clk2);//clk2=100khz
	key_scan U2(clk,key_in,key_out,key_value); 
	 

	 
	always@(posedge clk)
    case(key_value)	 
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

	

endmodule
