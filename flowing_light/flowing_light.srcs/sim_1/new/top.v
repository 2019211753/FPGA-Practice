`timescale 1ns / 1ns


module flow(
    );
reg clk;
reg rst;
wire [7:0] leds;

flowing u0(
.clk(clk),
.rst(rst),
.leds(leds)
);

initial
begin
    rst = 1;
    clk = 0;
    
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 rst = 0;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 rst = 1;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;
    #10 clk = ~clk;


end


endmodule                                                                                                                                         