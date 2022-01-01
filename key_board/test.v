`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:42:25 12/07/2021
// Design Name:   key_scan
// Module Name:   C:/Users/Administrator/Desktop/key_board/test.v
// Project Name:  key_board
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: key_scan
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg clk;
	reg [5:0] key_in;

	// Outputs
	wire [3:0] key_out;
	wire [3:0] key_value;

	// Instantiate the Unit Under Test (UUT)
	key_scan uut (
		.clk(clk), 
		.key_in(key_in), 
		.key_out(key_out), 
		.key_value(key_value)
	);
initial begin
		// Initialize Inputs
		clk = 0;
		key_in = 0;

		// Wait 100 ns for global reset to finish
		#40;
        
		// Add stimulus here
		
		 forever begin
         #2 clk = ~clk;
     end

		
	
 //       repeat(100000) #2 clk=~clk;
     
		  
		


	end
	initial begin
	 #70 key_in=6'b011111; //2ns
	 #2 key_in=6'b111111;
		  #40 key_in=6'b101111;
		  #60 key_in=6'b111111;
		  #10 key_in=6'b110111;
    end  
endmodule
