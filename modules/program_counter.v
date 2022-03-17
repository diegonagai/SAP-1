
// Program Counter

module program_counter (input  wire      clock,
                        input  wire      reset,
                        input  wire      load_pc,
                        output reg [3:0] out_pc);

always @ (posedge clock or negedge reset) begin
  if(!reset)
    out_pc <= 0;
  else if(load_pc)
    out_pc <= out_pc + 1;
  else
    out_pc <= out_pc; 
end

endmodule
