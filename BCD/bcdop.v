`timescale 1ns / 1ps

module bcdop(
		input [3:0] a1, //0 - 15     0000 - 1001
		input [3:0] op,
		input [3:0] a2, 
		input ready,
		output [3:0] sum, //0 - 31   00000 - 10010
	   output carry
    );

	reg [4:0] x;
	assign sum = x;
	reg count = 0;
   assign carry = count;
	reg op1;

	always @(posedge ready)
	begin
		if (ready == 1)
		begin
			if (op == 4'b1010)
			begin
				op1 = 1;
			end else
			begin
				op1 = 0;
			end

			//¼Ó·¨	
			if (op1 == 1)
			begin
				x = a1 + a2 + 2'b11 + 2'b11;
				if (x >= 5'b10000)
				begin
					x = x + 2'b11 - 5'b10000;
					count = 1;
				end else 
				begin
					x = x - 2'b11;
					count = 0;
				end 
				x = x - 2'b11;
			end else 
			//¼õ·¨
			begin
				x = a1 - a2;
				if (x >= 5'b10000)
				begin
					x = x - 1;
					x = ~x;
					count = 1;
				end else 
				begin			
					count = 0;
				end
			end
		end
	end
	
endmodule

		
	

