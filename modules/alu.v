
// ALU

module alu (input  wire [7:0] in_a,
            input  wire [7:0] in_b,
            input  wire       add_sub,
            output wire [7:0] out_alu);

assign out_alu = add_sub ? in_a - in_b : in_a + in_b;

endmodule 
