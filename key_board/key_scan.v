`timescale 1ns / 1ps

module key_scan (
    input clk,
    input [5:0] key_in,
    output [3:0] key_out,
	 output [3:0] key_value
    );

	reg [3:0] scan = 4'b0000;
	reg [1:0] flag = 0;

	reg [3:0] data;
	 
	assign key_out = scan;  //输出列信号
   
	assign key_value = data;
	
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
	 
	 
	always@(negedge clk)
	begin
		if (f == 1)
		begin
			case( {new_key_in,col})
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
		end
	end


endmodule
