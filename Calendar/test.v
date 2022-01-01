`timescale 1ns / 1ps

module test;

	reg clk;

	// Instantiate the Unit Under Test (UUT)
	calendar uut (
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		// Wait 100 ns for global reset to finish
		#40;
        
		// Add stimulus here
		
		
		 forever begin
         #2 clk = ~clk;
     end
		
		
	
 //       repeat(100000) #2 clk=~clk;
     
		  


	end
endmodule


