`timescale 1s / 1s

module tes(

    );
reg rst;
reg clk;
wire [2:0] SNleds;
wire [7:5] WEleds;
wire [7:0] SNge;
wire [7:0] SNshi;
wire [7:0] seg_select;


traffic u0(
.clk(clk),
.rst(rst),
.SNleds(SNleds),
.WEleds(WEleds),
.SNge(SNge),
.SNshi(SNshi),
.seg_select()
);

initial 
begin 
    clk = 1;
    rst = 1;
    # 30 rst = 0;
    # 10 rst = 1;
end

always #10 clk = ~clk;

endmodule
