`timescale 1s / 1s 
module flowing( 
//边沿控制端
input rst,
//时钟端
input clk,
//8个灯泡 从左到右76543210
output reg [7:0] leds
);
//二十四进制计数器
reg [4:0] counter = 0;
//中介值
reg [3:0] temp = 0;

//仿真代码
always @ (posedge clk or negedge rst)
begin
    if (~rst)
    leds = 0;
    else begin
       if (rst)
       begin
           //计数器+1
           counter = counter + 1;
           //状态1 从左到右 全暗→0亮
           if (counter <= 4'b1000)
           begin
               //保证只有一个灯亮
               leds = 0;
               temp = 4'b1000 - counter;
               leds[temp] = 1;
           //状态2 从右到左 1亮→全暗
           end else if (counter > 4'b1000 && counter <= 5'b10000)
           begin
               leds = 0;
               temp = counter - 5'b01000;
               if(temp <= 3'b111)
               begin
                   leds[temp] = 1;
               end
           //状态三 两头到中间 全暗→4 3亮
           end else if (counter > 5'b10000 && counter <= 5'b10100)
           begin
               leds = 0;
               temp = counter - 5'b10001;
               leds[temp] = 1;
               leds[3'b111-temp] = 1;
           //状态四 中间到两头 5 2 亮→全暗
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


////板上代码
////分频 
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
//    //同步置0端
//    if (~rst)
//    begin
//       counter = 0;
//       temp = 0;
//       leds = 0; 
//    end else
//    begin
//       //控制端不置0
//       if (rst)
//       begin
//           //计数器+1
//           counter = counter + 1;
//           //状态1 从左到右 全暗→0亮
//           if (counter <= 4'b1000)
//           begin
//               //保证只有一个灯亮
//               leds = 0;
//               temp = 4'b1000 - counter;
//               leds[temp] = 1;
//           //状态2 从右到左 1亮→全暗
//           end else if (counter > 4'b1000 && counter <= 5'b10000)
//           begin
//               leds = 0;
//               temp = counter - 5'b01000;
//               if(temp <= 3'b111)
//               begin
//                   leds[temp] = 1;
//               end
//           //状态三 两头到中间 全暗→4 3亮
//           end else if (counter > 5'b10000 && counter <= 5'b10100)
//           begin
//               leds = 0;
//               temp = counter - 5'b10001;
//               leds[temp] = 1;
//               leds[3'b111-temp] = 1;
//           //状态四 中间到两头 5 2 亮→全暗
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
