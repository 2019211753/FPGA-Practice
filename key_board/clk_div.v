`timescale 1ns / 1ps

module clk_div(
    input clkin,
    output clkout
    );
   reg clk_new = 0;
	integer counter_reg1 = 0;
	
	assign clkout = clk_new;
   always@(posedge clkin)
	if (counter_reg1 == 499) //simulation 
    /// 	if (counter_reg1==499) //100Mhz/(100khz*2)-1	 
	    begin clk_new<= ~clk_new;
	          counter_reg1<=0;
	    end
	 else
	 begin
		counter_reg1<=counter_reg1+1;
	 end

endmodule
