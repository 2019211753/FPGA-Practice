`timescale 1ns / 1ps

module cons;

	reg [3:0] a1;
	reg [3:0] a2; 
	reg [3:0] op;
	reg ready;
	wire [3:0] sum; 
	wire carry;

	// Instantiate the Unit Under Test (UUT)
	bcdop uut (
		.a1(a1),
		.a2(a2),
		.op(op),
		.ready(ready),
		.sum(sum),
		.carry(carry)
	);
	
	always 
	begin
		// Initialize Inputs

		#100; ready <=0;
		#10;
		a1 <= 4'b1001;  //9
		a2 <= 4'b0011 ; //3
		op <= 4'b1010;  //+
		#10 ready <= 1;
		
		#10 ready <=0;
		#10;
		a1 <= 4'b0101; //5
		a2 <= 4'b0111; //7
		op <= 4'b1011; //-
		#10 ready <= 1;
		
		#10 ready <=0;
		#10;
		a1 <= 4'b0111;  //7
		a2 <= 4'b0011 ; //3
		op <= 4'b1011;  //-
		#10 ready <= 1;
	end
     
endmodule

