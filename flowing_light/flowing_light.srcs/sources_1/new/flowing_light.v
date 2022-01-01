`timescale 1s / 1s 
module flowing( 
//���ؿ��ƶ�
input rst,
//ʱ�Ӷ�
input clk,
//8������ ������76543210
output reg [7:0] leds
);
//��ʮ�Ľ��Ƽ�����
reg [4:0] counter = 0;
//�н�ֵ
reg [3:0] temp = 0;

//�������
always @ (posedge clk or negedge rst)
begin
    if (~rst)
    leds = 0;
    else begin
       if (rst)
       begin
           //������+1
           counter = counter + 1;
           //״̬1 ������ ȫ����0��
           if (counter <= 4'b1000)
           begin
               //��ֻ֤��һ������
               leds = 0;
               temp = 4'b1000 - counter;
               leds[temp] = 1;
           //״̬2 ���ҵ��� 1����ȫ��
           end else if (counter > 4'b1000 && counter <= 5'b10000)
           begin
               leds = 0;
               temp = counter - 5'b01000;
               if(temp <= 3'b111)
               begin
                   leds[temp] = 1;
               end
           //״̬�� ��ͷ���м� ȫ����4 3��
           end else if (counter > 5'b10000 && counter <= 5'b10100)
           begin
               leds = 0;
               temp = counter - 5'b10001;
               leds[temp] = 1;
               leds[3'b111-temp] = 1;
           //״̬�� �м䵽��ͷ 5 2 ����ȫ��
           end else if (counter > 5'b10100 && counter <= 5'b11000)
           begin
               leds = 0;
               temp = 5'b10111 - counter;
               if (temp >= 0 & temp <= 2'b11)
               begin
                   leds[temp] = 1;
                   leds[3'b111-temp] = 1;
               end else 
               begin
                  counter = 0;
                  temp = 0;
                  leds = 0; 
               end
           end
        end
    end
end


////���ϴ���
////��Ƶ 
//integer clk_cnt; 
//reg clk_Hz; 
//always @(posedge clk) 
//if(clk_cnt==24'hFFFFFF) 
//begin clk_cnt <= 1'b0; 
//clk_Hz = clk_Hz + 1'b1; 
//end else 
//clk_cnt<= clk_cnt + 1'b1; 

//always @ (posedge clk_Hz, negedge rst)
//begin
//    //ͬ����0��
//    if (~rst)
//    begin
//       counter = 0;
//       temp = 0;
//       leds = 0; 
//    end else
//    begin
//       //���ƶ˲���0
//       if (rst)
//       begin
//           //������+1
//           counter = counter + 1;
//           //״̬1 ������ ȫ����0��
//           if (counter <= 4'b1000)
//           begin
//               //��ֻ֤��һ������
//               leds = 0;
//               temp = 4'b1000 - counter;
//               leds[temp] = 1;
//           //״̬2 ���ҵ��� 1����ȫ��
//           end else if (counter > 4'b1000 && counter <= 5'b10000)
//           begin
//               leds = 0;
//               temp = counter - 5'b01000;
//               if(temp <= 3'b111)
//               begin
//                   leds[temp] = 1;
//               end
//           //״̬�� ��ͷ���м� ȫ����4 3��
//           end else if (counter > 5'b10000 && counter <= 5'b10100)
//           begin
//               leds = 0;
//               temp = counter - 5'b10001;
//               leds[temp] = 1;
//               leds[3'b111-temp] = 1;
//           //״̬�� �м䵽��ͷ 5 2 ����ȫ��
//           end else if (counter > 5'b10100 && counter <= 5'b11000)
//           begin
//               leds = 0;
//               temp = 5'b10111 - counter;
//               if (temp >= 0 & temp <= 2'b11)
//               begin
//                   leds[temp] = 1;
//                   leds[3'b111-temp] = 1;
//               end else 
//               begin
//                  counter = 0;
//                  temp = 0;
//                  leds = 0; 
//               end
//           end
//        end
//    end
//end

endmodule
