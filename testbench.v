`timescale 1ns / 1ps
module tb( );
 parameter N = 16;
 parameter range = 4;
 reg [N-1:0] I;
 reg [range - 1:0] sel;
 wire y;
 integer i;
  
 //instanciating the module 
 dut #(N, range) mux_4_1(.I(I), .sel(sel), .y(y));
 
 //giving the inputs 
 initial begin
 $monitor ("%t I=%0b  sel=%0b y=%0b", $time , I, sel, y);
 sel = 0;
 I = {{N-1{1'b0}},1'b1};
  for (i=0; i < N; i = i + 1) begin
   #5;
   sel = i;
   I = I << 1;
   end
  $finish;
 end
endmodule
 
  
