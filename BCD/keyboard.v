`timescale 1ns / 1ps

module keyboard (
    input clk,
    input [5:0] key_in,
    output [3:0] key_out,
	 output [3:0] a1,
	 output [3:0] op,
	 output [3:0] a2,
	 output ready
    );

	reg [3:0] scan = 4'b0000;
	reg [1:0] flag = 0;

	reg [3:0] data;
	
	reg [3:0] a_1;
	reg [3:0] op_1;
	reg [3:0] a_2;
	reg ready_1;
	assign a1 = a_1;
	assign op = op_1;
	assign a2 = a_2;
   assign ready = ready_1;
	
	assign key_out = scan;  //输出列信号
	
	always @(posedge clk) //lie xin hao
	begin
		if(flag==0)
		begin
			scan<=4'b1110;
			flag<=1;
		end
		else if(flag==1)
		begin
			scan<=4'b1101;
			flag<=2;
		end
		else if(flag==2)
		begin
			scan<=4'b1011;
			flag<=3;
		end else 
		begin
			scan<=4'b111;
			flag<=0;
		end
	end
		
 
	//用于按键去抖
   reg [5:0] new_key_in;
	reg [3:0] col;
	reg [9:0] last = 10'b000000_0000;
	reg [9:0] now;
	integer twenties = 0;
	reg f = 0;
	
	always @(posedge clk)
	begin
		now <= {key_in, scan};
		if (key_in != 6'b111111)
		begin
			if (now == last)
			begin
				twenties <= twenties + 1;
				if (twenties == 2) 
				begin 
					new_key_in <= key_in;
					col <= scan;
					f <= 1;
					twenties <= 0;
				end
			end else 
			begin
				f <= 0;
				twenties <= 0;
				last <= now;
			end
		end
	end
   
	//存入数据
	reg [1:0] f2 = 0;
	
	always@(negedge clk)
	begin
		if (f == 1)
		begin
			case({new_key_in,col})
				10'b111110_1011:data<=4'b0000; //0
				10'b011111_0111:data<=4'b0001; //1
				10'b011111_1011:data<=4'b0010; //2
				10'b011111_1101:data<=4'b0011; //3
				10'b101111_0111:data<=4'b0100; //4
				10'b101111_1011:data<=4'b0101; //5
				10'b101111_1101:data<=4'b0110; //6
				10'b110111_0111:data<=4'b0111; //7
				10'b110111_1011:data<=4'b1000; //8
				10'b110111_1101:data<=4'b1001; //9
				10'b110111_1110:data<=4'b1010; //加号+
				10'b111101_1101:data<=4'b1011; //减号-
				10'b111011_1101:data<=4'b1100; //乘号*
				10'b111011_1011:data<=4'b1101; //除号/
				10'b111011_0111:data<=4'b1110; //num				
				10'b011111_1110:data<=4'b1111; //enter 				
				default : data<=4'b1110;			
			endcase
			
			if (f2 == 0 & (data >= 4'b0000) & (data <= 4'b1001))			
			begin
				a_1 <= data;
				f2 <= 1;
				ready_1 <= 0;
			end else if (f2 == 1 & (data >= 4'b1010) & (data <= 4'b1011))
			begin	
				op_1 <= data;
				f2 <= 2;
				ready_1 <= 0;
			end else if (f2 == 2 & (data >= 4'b0000) & (data <= 4'b1001))
			begin
				a_2 <= data;
				f2 <= 3;
				ready_1 <= 0;
			end else if (f2 == 3 & (data == 4'b1111)) 
			begin
				f2 <= 0;
				ready_1 <= 1;
			end
		end
	end


endmodule
