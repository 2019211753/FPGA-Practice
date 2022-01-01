`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:10:24 11/30/2021 
// Design Name: 
// Module Name:    clk_div 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module clk_div(
    input clkin,
    output clkout
    );
   reg clk_new=0;
	integer counter_reg1=0;
	
	assign clkout =clk_new;
	
	my_dcm U3 (.CLKIN_IN(clkin),
				  .RST_IN(1'b0),
				  .CLKDV_OUT(clk)
				  );
              
	
   always@(posedge clk)
	// if (counter_reg1==4) //simulation 
     	if (counter_reg1==499) //100Mhz/(100khz*2)-1	 
	    begin clk_new<= ~clk_new;
	          counter_reg1<=0;
	    end
	 else
	    begin
       counter_reg1<=counter_reg1+1;
       end

endmodule
