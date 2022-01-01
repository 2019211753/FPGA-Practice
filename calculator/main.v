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
    output [7:0] led, 
	 output [1:0] led_en
    );
	 
	 reg [7:0] num1;
	 reg [7:0] num2;
	 reg [7:0] result;
	 reg select;//2位数码管 
	 reg flag;//0为加号 ，1为减号
	 reg [1:0] status = 2'b00;//状态机
	 wire clk2;
	 wire [3:0] key_value;
	 reg [7:0] seg; 
	 reg [1:0] seg_en;
	 reg [3:0] disp;
	 
  
	assign led = seg;
	assign cpld_en[1:0]=2'b01;
	assign led_en = seg_en;

		
	clk_div U1(clk,clk2);//clk2=100khz
	key_scan U2(clk2,key_in,key_out,key_value); 
	 
	always@(posedge clk2)begin
    case(disp[3:0])	 
	    4'b0000: seg<=8'b00111111;
		 4'b0001: seg<=8'b00000110;
		 4'b0010: seg<=8'b01011011;
		 4'b0011: seg<=8'b01001111;
		 4'b0100: seg<=8'b01100110;
		 4'b0101: seg<=8'b01101101;
		 4'b0110: seg<=8'b01111101;
		 4'b0111: seg<=8'b00000111;
		 4'b1000: seg<=8'b01111111;
		 4'b1001: seg<=8'b01101111;
		 4'b1011: seg<=8'b01000000;
		 default: seg<=8'b00000000;
	 endcase
	 end
	 
	 
	 always@(posedge clk2)begin
		case(select)
		1'b0:begin
			seg_en[1:0] <= 2'b10;
			select = 1;
			disp[3:0] <= result[3:0];
		end
		1'b1:begin
			seg_en[1:0] <= 2'b01;
			select = 0;
			disp[3:0] <= result[7:4];
		end
		endcase
	 end
	 
	 always@(posedge clk2)begin
		case(status)
		2'b00:begin
			if(key_value[3:0] == 4'b1010)begin
				status = status + 1;	//进入下一状态
				flag = 0;
			end
			else if(key_value[3:0] == 4'b1011)begin
				status = status + 1;	//进入下一状态
				flag = 1;
			end
			else begin	//状态不变
				num1[3:0] = key_value[3:0];
				result[3:0] = num1[3:0];
				result[7:4] = 4'b1111;
			end
		end
		2'b01:begin
			if(key_value[3:0] >= 4'b0000 && key_value[3:0] <= 4'b1001)begin	
				status = status + 1;//进入下一状态
				result[3:0] = key_value[3:0];
				result[7:4] = 4'b1111;
				num2[3:0] = key_value[3:0];
			end
		end
		2'b10:begin
			if(key_value[3:0] == 4'b1111)begin	//Enter
				status = status + 1;
				result = cal(num1,num2,flag);
				num2 = 0;
			end
		end
		2'b11:begin
			if(key_value[3:0] <= 4'b1001 && key_value[3:0] >= 4'b0000)begin
				status = status + 1;
			end
		end
		default:begin
			status[1:0] = 2'b00;
			result[7:0] = 8'b11111111;	//异常
		end
		endcase
	end
		
function [7:0] cal;
    input [7:0]num1;
    input [7:0]num2;
	 input [1:0]flag;
	 reg c;
	 begin
	 case(flag)
	 0:begin	//加号
			{c,cal[3:0]} = num1[3:0] + num2[3:0];
			cal[7:4] = 4'b1111;
			if (cal[3:0] > 4'b1001 || c == 1)begin
				cal[3:0] = cal[3:0] + 4'b0110;
				cal[7:4] = 1;
			end
			
	 end
	 1:begin
			if(num1 < num2)begin
				cal[7:4] = 4'b1011;
				cal[3:0] = num2 - num1;
			end
			else begin
				cal[3:0] = num1 - num2;
				cal[7:4] = 4'b1111;
			end
	 end
	 endcase
	 end
endfunction


endmodule

