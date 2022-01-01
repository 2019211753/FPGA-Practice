`timescale 1ns / 1ps

module counter(
		clk,
		RST,
		EN,
		LOAD,
		DATA,
		Q,
		COUT
    );
	 input clk;
	 input RST;
	 input EN;
	 input LOAD;
	 input [5:1] DATA;
	 output reg [5:1] Q;
	 output reg COUT;

	always @(posedge clk or negedge RST)
	begin
		if(!RST) 
		begin 
			Q <= 0; 
		end else if(EN)
		begin
			if(!LOAD) 
			begin 
				Q <= DATA;
			end else if(Q < 12) 
			begin 
				Q <= Q + 1;
			end else
			begin 
				Q <= 5'b00000;
			end
		end
	end
	
	always @(Q)
	begin
		if(Q == 12)
		begin 
			COUT = 1'b1;
		end else
		begin
			COUT = 1'b0;
		end
	end
	
endmodule
