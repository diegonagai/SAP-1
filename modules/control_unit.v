
// Control Unit

module control_unit (input  wire        clock,
                     input  wire        reset,
                     input  wire [3:0]  in_control_unit,
                     output reg  [11:0] control_word);

reg  [3:0] instruction_step;

always @ (negedge clock or negedge reset) begin
  if(!reset)
    instruction_step <= 0;
  else if (instruction_step < 4)
    instruction_step <= instruction_step + 1;
  else
    instruction_step <= 0;
end

always @(in_control_unit, instruction_step)
  case({in_control_unit, instruction_step}) 
    // LDA
    8'h00: control_word = 12'h600;
    8'h01: control_word = 12'h980;
    8'h02: control_word = 12'h240;
    8'h03: control_word = 12'h120;
    8'h04: control_word = 12'h000;
    // ADD
    8'h10: control_word = 12'h600;
    8'h11: control_word = 12'h980;
    8'h12: control_word = 12'h240;
    8'h13: control_word = 12'h102;
    8'h14: control_word = 12'h024;
    // SUB
    8'h20: control_word = 12'h600;
    8'h21: control_word = 12'h980;
    8'h22: control_word = 12'h240;
    8'h23: control_word = 12'h10A;
    8'h24: control_word = 12'h02C;
    // OUT
    8'h70: control_word = 12'h600;
    8'h71: control_word = 12'h980;
    8'h72: control_word = 12'h011;
    8'h73: control_word = 12'h000;
    8'h74: control_word = 12'h000;
    // HLT
    8'hF0: control_word = 12'h600;
    8'hF1: control_word = 12'h980;
    8'hF2: control_word = 12'h000;
    8'hF3: control_word = 12'h000;
    8'hF4: control_word = 12'h000;
    // Others
  default: control_word = 12'h000;
  endcase

endmodule
