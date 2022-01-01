`timescale 1ns / 1ps

module calendar(
		input clk,
		output [1:0] cpld_en,
		output [6:0] led, 
	   output [7:0] led_en
    );


	assign cpld_en[1:0] = 2'b01; //控制板子显示数码管，而不是led灯
	
	reg [6:0] seg; //控制七段数码管示数
	assign led = seg; 
	
	reg [7:0] seg_en;//控制数码管显示位置
	assign led_en = seg_en;
	
	integer year; //十进制的年
	integer month; //十进制的月
	integer day; //十进制的天
	//初始化年份为2020年1月1日 星期三 闰年
	reg [3:0] year1 = 4'b0010; //初始化年的十位为2
	reg [3:0] year0 = 4'b0000; //初始化年的个位为0  即2020年
	reg [3:0] month1 = 4'b0000; //初始化月的十位为0
	reg [3:0] month0 = 4'b0001; //初始化月的个位为1 即1月
	reg [3:0] day1 = 4'b0000; //初始化天的十位为0
	reg [3:0] day0 = 4'b0000; //初始化天的个位为1 即1天
	reg [3:0] weekday0 = 4'b011; //初始化星期数为3 即星期三
	reg leap = 1; //是闰年还是平年 1为闰年 0为平年
	
	reg clk_new = 0;
	integer counter_reg1 = 0; //分频0.25s
	
	reg clk_new_2 = 0;
	integer counter_reg2 = 0; //分频1ms

   always @(posedge clk)
	begin
		if (counter_reg1==15999999) //100Mhz/(1hz*2)-1	 
		begin 
			clk_new <= ~clk_new;
			counter_reg1 <= 0;
		end else
	   begin
			counter_reg1 <= counter_reg1 + 1;
      end
		
		if (counter_reg2==49999) //100Mhz/(1hz*2)-1	 
		begin 
			clk_new_2 <= ~clk_new_2;
			counter_reg2 <= 0;
		end else
	   begin
			counter_reg2 <= counter_reg2 + 1;
      end
	end
	
	always @(posedge clk)
	//always @(posedge clk_new)
	begin
		//如果是闰年，令leap为1作为标识，否则为0
		if (year % 4 == 0) 
		begin
			leap <= 1;
		end else
		begin
			leap <= 0;
		end
		
		//天数个位随着时钟上升沿+1
		day0 <= day0 + 1;  
	   //如果天数的个位当前为9，且不是2月的29号，下一个时钟令天数个位为0，十位+1
		if (day0 > 4'b1000 & !(month == 2 & day1 == 2'b10))
		begin
			day1 <= day1 + 1;
			day0 <= 0;
		end
		
		//分别计算完整的年份、月份、天数（不分割成个位和十位，方便比较）
		year = 11'b11111010000 + year1 * 10 + year0;
		month = month1 * 10 + month0;
		day = day1 * 10 + day0;
		
		//如果是大月，且到达了31号
		if ((month == 1 | month == 3 | month == 5 | month == 7 | month == 8 | month == 10 | month == 12) & (day > 30))
		begin
			//如果不是12月，月份个位+1
			if (month != 12)
			begin
				month0 <= month0 + 1;	
			end else 
			begin
			//如果是12月，且年份个位小于9，年份个位+1。如果年份个位为9，年份十位+1，个位置0
			//无论年份如何，月份十位置0，个位置1
				year0 <= year0 + 1;
				if (year0 > 4'b1000)
				begin
					year1 <= year1 + 1;
					year0 <= 0;
				end		
				month1 <= 0;
				month0 <= 1;
			end
			//无论如何，天数十位置0，个位置1
			day1 <= 0;
			day0 <= 1;
			
		//如果为2月
		end else if (month == 2)
		begin
			//如果是闰年且当前为29号 或 是平年且当前为28号，令月份十位为0，个位为3，天数十位为0，个位为1
			if ((leap & day > 28) | (!leap & day > 27))
			begin
				month1 <= 0;
				month0 <= 4'b0011;
				day1 <= 0;
				day0 <= 1;
			end
		//如果是小月且当前为30号，月份个位+1，如果月份小于9月，月份个位+1，如果等于9月，月份十位+1，个位置0
		end else if ((month == 4 | month == 6 | month == 9 | month == 11) & day > 29)
		begin
			month0 <= month0 + 1;
			if (month0 > 4'b1000)
			begin
				month1 <= month1 + 1;
				month0 <= 0;
			end		
			//无论如何，天数十位置0，个位置1
			day1 <= 0;
			day0 <= 1;
		end
		
		//星期1到星期7轮换
		if (weekday0 <= 4'b0110) 
		begin
			weekday0 <= weekday0 + 1;
		end else begin
			weekday0 <= 1;
		end
	end

	//下面为数码管显示，不多做说明
	integer flag = 0;
	reg [3:0] num = 0;
	
	always @(posedge clk_new_2)
	begin
		case(num)	 
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
				4'b1011: seg<=7'b1000000;
				default: seg<=7'b0000000;
		 endcase
	end
	
	always @(posedge clk_new_2)
	begin
		if (flag == 1)
		begin 
			seg_en <= 8'b11011111;
			flag <= flag + 1;
			num <= year0; 
		end else if (flag == 2)
		begin
			seg_en <= 8'b11101111; 
			flag <= flag + 1;
			num <= month1; 
		end else if (flag == 3)
		begin
			seg_en <= 8'b11110111;
			flag <= flag + 1;
			num <= month0;
		end else if (flag == 4)
		begin
			seg_en <= 8'b11111011;
			flag <= flag + 1;
			num <= day1;
		end else if (flag == 5)
		begin 
			seg_en <= 8'b11111101;
			flag <= flag + 1;
			num <= day0;
		end else if (flag == 6)
		begin 
			seg_en <= 8'b11111110;
			flag <= flag + 1;
			num <= weekday0;
		end else 
		begin 
			seg_en <= 8'b10111111;
			flag <= 1;
			num <= year1;
		end
	end	
	
endmodule
