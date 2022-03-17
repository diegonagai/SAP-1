
// Generic Register

module register (input  wire       clock,
                 input  wire       reset,
                 input  wire       load,
                 input  wire [7:0] in_reg,
                 output reg  [7:0] out_reg);

always @ (posedge clock or negedge reset) begin
  if(!reset)
    out_reg <= 0;
  else if(load)
    out_reg <= in_reg;
  else
    out_reg <= out_reg; 
end

endmodule 
