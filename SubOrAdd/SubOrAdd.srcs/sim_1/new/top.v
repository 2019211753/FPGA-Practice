`timescale 1ns / 1ps

module test( );
reg [3:0] a;
reg [3:0] b;
reg EN;
wire[3:0] sum;
wire cout;

addorsub u0(
.a(a),
.b(b),
.EN(EN),
.sum(sum),
.cout(cout)
);

initial
begin
    a = 4'b0000;
    b = 4'b0000;
    
    EN = 0;
    
    #10 a = a + 1;
    #10 b = b + 1;
    #10 b = b + 1;
    #10 b = b + 1;
    #10 a = a + 1;
    #10 b = b + 1;
    #10 a = a + 1;
    #10 a = 10; b = 10; 
    #10 a = a + 1;
    #10 b = b + 1;
    #10 a = a + 1;
    #10 b = b + 1;
 
    
    #10 EN = 1;
    
    #10 a = a + 1;
    #10 b = b + 1;
    #10 a = a + 1;
    #10 b = b + 1;

    #10 b = b + 1;
        
    #10 a = a + 1;
    #10 b = b + 1;
    #10 a = a + 1;
    #50 $finish;
end
    



endmodule
