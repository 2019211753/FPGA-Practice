`timescale 1ns / 1ps

module calendar(
		input clk,
		output [1:0] cpld_en,
		output [6:0] led, 
	   output [7:0] led_en
    );


	assign cpld_en[1:0] = 2'b01; //���ư�����ʾ����ܣ�������led��
	
	reg [6:0] seg; //�����߶������ʾ��
	assign led = seg; 
	
	reg [7:0] seg_en;//�����������ʾλ��
	assign led_en = seg_en;
	
	integer year; //ʮ���Ƶ���
	integer month; //ʮ���Ƶ���
	integer day; //ʮ���Ƶ���
	//��ʼ�����Ϊ2020��1��1�� ������ ����
	reg [3:0] year1 = 4'b0010; //��ʼ�����ʮλΪ2
	reg [3:0] year0 = 4'b0000; //��ʼ����ĸ�λΪ0  ��2020��
	reg [3:0] month1 = 4'b0000; //��ʼ���µ�ʮλΪ0
	reg [3:0] month0 = 4'b0001; //��ʼ���µĸ�λΪ1 ��1��
	reg [3:0] day1 = 4'b0000; //��ʼ�����ʮλΪ0
	reg [3:0] day0 = 4'b0000; //��ʼ����ĸ�λΪ1 ��1��
	reg [3:0] weekday0 = 4'b011; //��ʼ��������Ϊ3 ��������
	reg leap = 1; //�����껹��ƽ�� 1Ϊ���� 0Ϊƽ��
	
	reg clk_new = 0;
	integer counter_reg1 = 0; //��Ƶ0.25s
	
	reg clk_new_2 = 0;
	integer counter_reg2 = 0; //��Ƶ1ms

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
		//��������꣬��leapΪ1��Ϊ��ʶ������Ϊ0
		if (year % 4 == 0) 
		begin
			leap <= 1;
		end else
		begin
			leap <= 0;
		end
		
		//������λ����ʱ��������+1
		day0 <= day0 + 1;  
	   //��������ĸ�λ��ǰΪ9���Ҳ���2�µ�29�ţ���һ��ʱ����������λΪ0��ʮλ+1
		if (day0 > 4'b1000 & !(month == 2 & day1 == 2'b10))
		begin
			day1 <= day1 + 1;
			day0 <= 0;
		end
		
		//�ֱ������������ݡ��·ݡ����������ָ�ɸ�λ��ʮλ������Ƚϣ�
		year = 11'b11111010000 + year1 * 10 + year0;
		month = month1 * 10 + month0;
		day = day1 * 10 + day0;
		
		//����Ǵ��£��ҵ�����31��
		if ((month == 1 | month == 3 | month == 5 | month == 7 | month == 8 | month == 10 | month == 12) & (day > 30))
		begin
			//�������12�£��·ݸ�λ+1
			if (month != 12)
			begin
				month0 <= month0 + 1;	
			end else 
			begin
			//�����12�£�����ݸ�λС��9����ݸ�λ+1�������ݸ�λΪ9�����ʮλ+1����λ��0
			//���������Σ��·�ʮλ��0����λ��1
				year0 <= year0 + 1;
				if (year0 > 4'b1000)
				begin
					year1 <= year1 + 1;
					year0 <= 0;
				end		
				month1 <= 0;
				month0 <= 1;
			end
			//������Σ�����ʮλ��0����λ��1
			day1 <= 0;
			day0 <= 1;
			
		//���Ϊ2��
		end else if (month == 2)
		begin
			//����������ҵ�ǰΪ29�� �� ��ƽ���ҵ�ǰΪ28�ţ����·�ʮλΪ0����λΪ3������ʮλΪ0����λΪ1
			if ((leap & day > 28) | (!leap & day > 27))
			begin
				month1 <= 0;
				month0 <= 4'b0011;
				day1 <= 0;
				day0 <= 1;
			end
		//�����С���ҵ�ǰΪ30�ţ��·ݸ�λ+1������·�С��9�£��·ݸ�λ+1���������9�£��·�ʮλ+1����λ��0
		end else if ((month == 4 | month == 6 | month == 9 | month == 11) & day > 29)
		begin
			month0 <= month0 + 1;
			if (month0 > 4'b1000)
			begin
				month1 <= month1 + 1;
				month0 <= 0;
			end		
			//������Σ�����ʮλ��0����λ��1
			day1 <= 0;
			day0 <= 1;
		end
		
		//����1������7�ֻ�
		if (weekday0 <= 4'b0110) 
		begin
			weekday0 <= weekday0 + 1;
		end else begin
			weekday0 <= 1;
		end
	end

	//����Ϊ�������ʾ��������˵��
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
