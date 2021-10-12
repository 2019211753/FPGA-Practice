`timescale 1s / 1s

module traffic(
    input rst,
    input clk,
    //�ϱ��� 001�� 010�� 100��
    output reg [2:0] SNleds,
    //������
    output reg [7:5] WEleds,
    //�ϱ��Ƶĸ�λ��ʮλ
    output wire [7:0] SNge,
    output wire [7:0] SNshi,
    //λѡ
    output reg [7:0] seg_select
        );
        
//����
//��������
reg [4:0] SNselect;
reg [6:0] times = 0;
reg nums = 0;
reg shi = 0;
reg [4:0] ge = 0;
always @ (posedge clk or negedge rst)
begin
    if (~rst)
    begin
        //ȫ�� ��ʾ88
    end else 
    begin
        //������ʾ���ĸ�λ��
        nums = nums + 1;
        if (nums == 1)
            seg_select = 8'b00010000;
        else 
            seg_select = 8'b00001000;
         
        times = times + 1;
         //�ϱ��� ������
        if (times >= 1 && times <= 4'b1111)
        begin
            SNleds = 3'b001;
            SNselect = 4'b1111 - times + 1;
            WEleds = 3'b100;
//            WEselect = 5'b10010 - times + 1;
        end
        //�ϱ��� ������            
        if (times > 4'b1111 && times <= 5'b10010)
        begin
            SNleds = 3'b010;
            SNselect = 5'b10010 - times + 1;
            WEleds = 3'b100;
//            WEselect = 5'b10010 - times + 1;
        end
        //�ϱ��� ������
        if (times > 5'b10010 && times <= 6'b100001)
        begin 
            SNleds = 3'b100;
            SNselect = 6'b100100 - times + 1;
            WEleds = 3'b001;
//            WEselect = 6'b100001 - times + 1;
        end
        //�ϱ��� ������
        if (times > 6'b100001 && times <= 6'b100100)
        begin
            SNleds = 3'b100;
            SNselect = 6'b100100 - times + 1;
            WEleds = 3'b010;
//            WEselect = 6'b100100 - times + 1;    
            //����      
            times = 0;
        end 
        if (SNselect >= 4'b1010)
        begin
            shi = 1;
            ge = SNselect - 4'b1010;
        end else 
        begin 
            shi = 0;
            ge = SNselect;
        end 
        
    end
end

reg [7:0] num[10:0];
initial 
begin
    num[0] = 8'b00111111;
    num[1] = 8'b00000110;
    num[2] = 8'b01011011;
    num[3] = 8'b01001111;
    num[4] = 8'b01100110;
    num[5] = 8'b01101101;
    num[6] = 8'b01111101;
    num[7] = 8'b00000111;
    num[8] = 8'b01111111;
    num[9] = 8'b01101111;
end

assign SNshi = num[shi];
assign SNge = num[ge];



//ʵ�ʴ���
//��ʱ�������ϱ���Ϊ��׼
//reg [4:0] SNselect;
////�ж��ǲ��ǰ��¹�����
//reg [6:0] memory = 0;
////������
//reg [6:0] times = 0;
////������ʾ���ĸ�λ��
//reg nums = 0;
////�ϱ��Ƶ�ʮλ
//reg [4:0] shi = 0;
////�ϱ��Ƶĸ�λ
//reg [4:0] ge = 0;

////��Ƶ 
//reg clock = 0; 
//integer clk_cnt; 
//always @(posedge clk) 
//begin
//    if(clk_cnt == 10000000) 
//    begin 
//        clk_cnt <= 1'b0; 
//        clock <= clock + 1'b1; 
//        end else 
//        clk_cnt<= clk_cnt + 1'b1; 
//   //������ʾ���ĸ�λ��
//    nums = nums + 1;
//    if (nums == 1)
//        seg_select = 8'b00010000;
//    else 
//        seg_select = 8'b00001000;  
//end

//always @ (negedge rst)
//begin
//    memory = memory + 1;
//end

//always @ (posedge clock or negedge rst)
//begin
//    if ((~rst || rst) && memory%2)
//    begin
//        //ȫ�� ��ʾ88
//        SNleds = 3'b100;
//        WEleds = 3'b100;
//        times = 0;
//        shi = 4'b1000;
//        ge = 4'b1000;
//    end else
//    begin
//        times = times + 1'b1;
//        //�ϱ��� ������
//        if (times > 0 && times <= 4'b1111)
//        begin
//            SNleds = 3'b001;
//            SNselect = 4'b1111 - times + 1;
//            WEleds = 3'b100;
//        end else
//        //�ϱ��� ������            
//        if (times > 4'b1111 && times <= 5'b10010)
//        begin
//            SNleds = 3'b010;
//            SNselect = 5'b10010 - times + 1;
//            WEleds = 3'b100;
//        end else 
//        //�ϱ��� ������
//        if (times > 5'b10010 && times <= 6'b100001)
//        begin 
//            SNleds = 3'b100;
//            SNselect = 6'b100100 - times + 1;
//            WEleds = 3'b001;
//        end else 
//        //�ϱ��� ������
//        if (times > 6'b100001 && times <= 6'b100100)
//        begin
//            SNleds = 3'b100;
//            SNselect = 6'b100100 - times + 1;
//            WEleds = 3'b010;
//        end else
//        //��0
//        begin
//            SNleds = 3'b001;
//            SNselect = 4'b1111;
//            WEleds = 3'b100;
//            times = 1;
//        end
        
//        if (SNselect >= 4'b1010)
//        begin
//            shi = 1;
//            ge = SNselect - 4'b1010;
//        end else
//        begin 
//            shi = 0;
//            ge = SNselect;
//        end 
//    end
//end

//reg [7:0] num[10:0];
//initial 
//begin
//    num[0] = 8'b00111111;
//    num[1] = 8'b00000110;
//    num[2] = 8'b01011011;
//    num[3] = 8'b01001111;
//    num[4] = 8'b01100110;
//    num[5] = 8'b01101101;
//    num[6] = 8'b01111101;
//    num[7] = 8'b00000111;
//    num[8] = 8'b01111111;
//    num[9] = 8'b01101111;
//end

//assign SNshi = num[shi];
//assign SNge = num[ge];

endmodule
