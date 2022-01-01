`timescale 1ns / 1ps

module main(
    input clk,
    input [5:0] key_in,
	 output [1:0] cpld_en,
    output [3:0] key_out,
    output [7:0] led, 
	 output [3:0] led_en
    );

	assign cpld_en[1:0] = 2'b01;
	
	clock U1(clk,clk2);//clk2=100khz
	
	reg clk_new2 = 0;
	integer counter_reg2 = 0;
	
	always@(posedge clk)
	begin
     	if (counter_reg2 == 499999) //100Mhz/(100khz*2)-1	 
		begin
			clk_new2 <= ~clk_new2;
			counter_reg2 <= 0;
		end else
		begin
			counter_reg2 <= counter_reg2+1;
		end
	end

	reg [7:0] seg; 
	assign led = seg;
	
	reg [3:0] seg_en;
	assign led_en = seg_en;
	
	wire [3:0] a1;
	wire [3:0] op;
	wire [3:0] a2;
	wire ready;
	
	keyboard U2(clk2,key_in,key_out,a1,op,a2,ready); 
	
	wire [3:0] sum;
	wire carry;
	assign ready_1 = ready;
	bcdop U3 (a1,op,a2,ready_1,sum,carry);

	integer flag = 0;
	reg [3:0] num;

	always@(posedge clk_new2)
	begin
	   if (ready == 1)
		begin
			case(num)
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
	end
	
	always@(posedge clk_new2)
	begin
		if (ready == 1)
		begin
			if (flag == 1)
			begin 
				seg_en<=4'b0100; 
				flag<=flag+1;
				num<=a2; 
			end else if (flag == 2)
			begin
				seg_en<=4'b0010; 
				flag<=flag+1;
				num<=carry; 
			end else if (flag == 3)
			begin
				seg_en<=4'b0001;
				flag<=flag+1;
				num<=sum;
			end else 
			begin 
				seg_en<=4'b1000;
				flag<=1;
				num<=a1;
			end
		end
	end	

endmodule
