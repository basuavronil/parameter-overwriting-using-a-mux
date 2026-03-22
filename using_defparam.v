`timescale 1ns / 1ps
module dut #(parameter N = 3, parameter M = 8)(
 input [N-1:0] in,
 output [M-1:0] y
 );
 assign y = 1 << in;
endmodule

/*
`timescale 1ns / 1ps
module tb( );
 reg [4:0] in;
 wire [31:0] y;
 
 dut Z(.in(in), .y(y));
 
 defparam Z.N = 5 ;
 defparam Z.M = 32;
 
 initial begin
 in = 5'd0;
 $monitor("%0t in = %0b  y = %0b", $time, in, y );
 repeat (5) begin
 #5
 in = in + 1;
 end
 #5 $finish;
 end*/

/*
`timescale 1ns / 1ps
module tb( );
 reg [4:0] in;
 wire [31:0] y;
 
 dut Z(.in(in), .y(y));
 
 defparam Z.N = 5 ;
 defparam Z.M = 32;
 
 initial begin
 in = 5'd0;
 $monitor("%0t in = %0b  y = %0b", $time, in, y );
 repeat (5) begin
 #5
 in = in + 1;
 end
 #5 $finish;
 end
 
endmodule
*/
 
endmodule
