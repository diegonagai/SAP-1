
// Testbench

`timescale 1ns/1ps

module testbench;

reg        clock;
reg        reset;
wire [7:0] out;

top dut (.clock (clock),
         .reset (reset),
         .out   (out));

initial 
  begin
    reset <= 0;
    clock <= 0;
  end

initial
  #12 reset <= 1;

always
  #5 clock <= !clock;

endmodule
