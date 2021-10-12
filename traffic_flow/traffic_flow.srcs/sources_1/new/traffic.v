`timescale 1s / 1s

module traffic(
    input rst,
    input clk,
    //南北灯 001绿 010黄 100红
    output reg [2:0] SNleds,
    //东西灯
    output reg [7:5] WEleds,
    //南北灯的个位和十位
    output wire [7:0] SNge,
    output wire [7:0] SNshi,
    //位选
    output reg [7:0] seg_select
        );
        
//仿真
//数码管输出
reg [4:0] SNselect;
reg [6:0] times = 0;
reg nums = 0;
reg shi = 0;
reg [4:0] ge = 0;
always @ (posedge clk or negedge rst)
begin
    if (~rst)
    begin
        //全红 显示88
    end else 
    begin
        //控制显示在哪个位置
        nums = nums + 1;
        if (nums == 1)
            seg_select = 8'b00010000;
        else 
            seg_select = 8'b00001000;
         
        times = times + 1;
         //南北绿 东西红
        if (times >= 1 && times <= 4'b1111)
        begin
            SNleds = 3'b001;
            SNselect = 4'b1111 - times + 1;
            WEleds = 3'b100;
//            WEselect = 5'b10010 - times + 1;
        end
        //南北黄 东西红            
        if (times > 4'b1111 && times <= 5'b10010)
        begin
            SNleds = 3'b010;
            SNselect = 5'b10010 - times + 1;
            WEleds = 3'b100;
//            WEselect = 5'b10010 - times + 1;
        end
        //南北红 东西绿
        if (times > 5'b10010 && times <= 6'b100001)
        begin 
            SNleds = 3'b100;
            SNselect = 6'b100100 - times + 1;
            WEleds = 3'b001;
//            WEselect = 6'b100001 - times + 1;
        end
        //南北红 东西黄
        if (times > 6'b100001 && times <= 6'b100100)
        begin
            SNleds = 3'b100;
            SNselect = 6'b100100 - times + 1;
            WEleds = 3'b010;
//            WEselect = 6'b100100 - times + 1;    
            //重置      
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



//实际代码
//计时器，以南北等为标准
//reg [4:0] SNselect;
////判断是不是按下过开关
//reg [6:0] memory = 0;
////计数器
//reg [6:0] times = 0;
////控制显示在哪个位置
//reg nums = 0;
////南北灯的十位
//reg [4:0] shi = 0;
////南北灯的个位
//reg [4:0] ge = 0;

////分频 
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
//   //控制显示在哪个位置
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
//        //全红 显示88
//        SNleds = 3'b100;
//        WEleds = 3'b100;
//        times = 0;
//        shi = 4'b1000;
//        ge = 4'b1000;
//    end else
//    begin
//        times = times + 1'b1;
//        //南北绿 东西红
//        if (times > 0 && times <= 4'b1111)
//        begin
//            SNleds = 3'b001;
//            SNselect = 4'b1111 - times + 1;
//            WEleds = 3'b100;
//        end else
//        //南北黄 东西红            
//        if (times > 4'b1111 && times <= 5'b10010)
//        begin
//            SNleds = 3'b010;
//            SNselect = 5'b10010 - times + 1;
//            WEleds = 3'b100;
//        end else 
//        //南北红 东西绿
//        if (times > 5'b10010 && times <= 6'b100001)
//        begin 
//            SNleds = 3'b100;
//            SNselect = 6'b100100 - times + 1;
//            WEleds = 3'b001;
//        end else 
//        //南北红 东西黄
//        if (times > 6'b100001 && times <= 6'b100100)
//        begin
//            SNleds = 3'b100;
//            SNselect = 6'b100100 - times + 1;
//            WEleds = 3'b010;
//        end else
//        //置0
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
