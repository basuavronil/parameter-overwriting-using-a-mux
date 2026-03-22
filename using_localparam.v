`timescale 1ns / 1ps
module dut #( parameter N = 3, parameter M = 8) (
 input [N-1:0] in,
 output [M-1:0] out
 );
 assign out = 1 << in;
endmodule

/*
`timescale 1ns / 1ps
module tb();

localparam N = 5;
localparam M = 32;

reg  [N-1:0] in;  //localparam we can use N instead of overridden values 
wire [M-1:0] out;

// Parameter passing FIX
dut #(.N(N), .M(M)) z (.in(in), .out(out)); 

initial begin
    in = 0;

    $monitor("%0t | in = %0b | out = %0b", $time, in, out);

    repeat (1 << N) begin
        #5 in = in + 1;
    end

    #5 $finish;
end
*/

endmodule
