//==================================================================================================
//  Filename      : bin2bcd.v
//  Created On    : 2017-01-02 20:54:28
//  Last Modified : 2017-01-03 14:28:27
//  Revision      :
//  Author        :
//  Email         : zeng4long@qq.com
//
//  Description   :
//
//
//==================================================================================================
`timescale 1ns / 1ps
module bin2bcd (
        input clk,
        input rst_n,
        input [23:0] bin,

        output reg [3:0] bcdU,
        output reg [3:0] bcdT,
        output reg [3:0] bcdH,
        output reg [3:0] bcdTh,
        output reg [3:0] bcdTth,
        output reg [3:0] bcdHth,
        output reg [3:0] bcdMill,
        output reg [3:0] bcdTmill
        );

reg [2:0] state;
reg [4:0] cnt;
reg [23:0] binTemp;
reg [31:0] bcdTemp;

parameter s0 = 3'd0;
parameter s1 = 3'd1;
parameter s2 = 3'd2;
parameter s3 = 3'd3;

always        @ (posedge        clk ) begin
        if (!rst_n) begin
                cnt <= 5'd0;
                state <= s0;
                binTemp <= bin;
                bcdTemp <= 32'd0;
        end
        else begin
                case(state)
                        s0: begin
                                cnt <= 5'd0;
                                state <= s1;
                                binTemp <= bin;
                                bcdTemp <= 32'd0;
                        end
                        s1: begin
                                if (cnt <= 23) begin
                                        cnt <= cnt + 1'b1;
                                        binTemp <= binTemp << 1;
                                        bcdTemp <= {bcdTemp[30:0],binTemp[23]};
                                        // {bcdTemp,binTemp} <= {bcdTemp[30:0],binTemp,1'b0};
                                        state <=s2;
                                end
                                else begin
                                        cnt <= 5'd0;
                                        binTemp <= binTemp << 1;
                                        bcdTemp <= {bcdTemp[30:0],binTemp[23]};
                                        state <=s3;
                                end
                        end
                        s2: begin
                                bcdTemp[3:0]   <= (bcdTemp[3:0]   > 4'd4) ? bcdTemp[3:0]   + 4'd3 : bcdTemp[3:0]  ;
                                bcdTemp[7:4]   <= (bcdTemp[7:4]   > 4'd4) ? bcdTemp[7:4]   + 4'd3 : bcdTemp[7:4]  ;
                                bcdTemp[11:8]  <= (bcdTemp[11:8]  > 4'd4) ? bcdTemp[11:8]  + 4'd3 : bcdTemp[11:8] ;
                                bcdTemp[15:12] <= (bcdTemp[15:12] > 4'd4) ? bcdTemp[15:12] + 4'd3 : bcdTemp[15:12];
                                bcdTemp[19:16] <= (bcdTemp[19:16] > 4'd4) ? bcdTemp[19:16] + 4'd3 : bcdTemp[19:16];
                                bcdTemp[23:20] <= (bcdTemp[23:20] > 4'd4) ? bcdTemp[23:20] + 4'd3 : bcdTemp[23:20];
                                bcdTemp[27:24] <= (bcdTemp[27:24] > 4'd4) ? bcdTemp[27:24] + 4'd3 : bcdTemp[27:24];
                                bcdTemp[31:28] <= (bcdTemp[31:28] > 4'd4) ? bcdTemp[31:28] + 4'd3 : bcdTemp[31:28];
                                state <= s1;
                        end
                        s3: begin
                                state <= s0;
                        end
                        default: begin
                                state <= s0;
                        end
                endcase        
        end
end

always        @ (posedge        clk) begin
        if (!rst_n) begin
                bcdU <= 4'd0;
                bcdT <= 4'd0;
                bcdH <= 4'd0;
                bcdTh <= 4'd0;
                bcdTth <= 4'd0;
                bcdHth <= 4'd0;
                bcdMill <= 4'd0;
                bcdTmill <= 4'd0;
        end
        else if((cnt == 5'd24) && (state == s2)) begin
                bcdU <= bcdTemp[3:0];
                bcdT <= bcdTemp[7:4];
                bcdH <= bcdTemp[11:8];
                bcdTh <= bcdTemp[15:12];
                bcdTth <= bcdTemp[19:16];
                bcdHth <= bcdTemp[23:20];
                bcdMill <= bcdTemp[27:24];
                bcdTmill <= bcdTemp[31:28];               
        end
end

endmodule