`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:38:37 11/29/2021
// Design Name:   seg7
// Module Name:   E:/eda/led_dis/test.v
// Project Name:  led_dis
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: seg7
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
	reg clkin;

	// Outputs
	wire [6:0] led;
	wire [1:0] cpld_en;
	wire [2:0] led_en;

	// Instantiate the Unit Under Test (UUT)
	seg7 uut (
		.led(led), 
		.cpld_en(cpld_en), 
		.led_en(led_en), 
		.clkin(clkin)
	);

	initial begin
		// Initialize Inputs
		clkin = 0;
   
		// Wait 100 ns for global reset to finish
		#100;
      
		// Add stimulus here
		repeat(10000) #2 clkin=~clkin;

	end
	
   
      
endmodule

