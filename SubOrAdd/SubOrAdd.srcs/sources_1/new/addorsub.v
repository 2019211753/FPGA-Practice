`timescale 1ns / 1ns
//输入与输出值 
module addorsub(
    //两个输入
    //如1010为十进制10
    input [3:0] a, 
    input [3:0] b, 
    //切换加减
    input EN,
    //输出和
    output reg[3:0] sum, 
    //输出进位
    output reg cout
); 
reg [3:0]d;
reg [4:0] sum1;
always @(*) 
begin 
    //EN低电平为加，高电平为减
    //加
   if(EN==0)
    begin
        {cout,sum} = a+b;
    end else
    //减
    begin
        d=2'b10000-b;
        {cout,sum} = a+d;
        cout = ~cout;
    end
 end 
endmodule
