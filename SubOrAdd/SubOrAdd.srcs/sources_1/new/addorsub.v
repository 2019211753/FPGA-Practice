`timescale 1ns / 1ns
//���������ֵ 
module addorsub(
    //��������
    //��1010Ϊʮ����10
    input [3:0] a, 
    input [3:0] b, 
    //�л��Ӽ�
    input EN,
    //�����
    output reg[3:0] sum, 
    //�����λ
    output reg cout
); 
reg [3:0]d;
reg [4:0] sum1;
always @(*) 
begin 
    //EN�͵�ƽΪ�ӣ��ߵ�ƽΪ��
    //��
   if(EN==0)
    begin
        {cout,sum} = a+b;
    end else
    //��
    begin
        d=2'b10000-b;
        {cout,sum} = a+d;
        cout = ~cout;
    end
 end 
endmodule
