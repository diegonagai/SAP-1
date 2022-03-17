
// SAP-1 Processor (Top-Level)

module top (input  wire       clock,
            input  wire       reset,
            output wire [7:0] out);

wire [11:0] control_word;
wire [7:0]  out_pc;
wire [7:0]  out_mar;
wire [7:0]  out_mem;
wire [7:0]  out_ir;
wire [7:0]  out_ar;
wire [7:0]  out_br;
wire [7:0]  out_alu;
wire [7:0]  out_bmux;

program_counter PC (.clock           (clock),
                    .reset           (reset),
                    .load_pc         (control_word[11]),
                    .out_pc          (out_pc));

register       MAR (.clock           (clock),
                    .reset           (reset),
                    .load            (control_word[9]), 
                    .in_reg          (out_bmux[3:0]), 
                    .out_reg         (out_mar));

memory_16x8    MEM (.in_mem          (out_mar[3:0]), 
                    .out_mem         (out_mem));

register        IR (.clock           (clock), 
                    .reset           (reset), 
                    .load            (control_word[7]), 
                    .in_reg          (out_bmux), 
                    .out_reg         (out_ir));

control_unit    CU (.clock           (clock), 
                    .reset           (reset), 
                    .in_control_unit (out_ir[7:4]), 
                    .control_word    (control_word));

register        AR (.clock           (clock), 
                    .reset           (reset),
                    .load            (control_word[5]),
                    .in_reg          (out_bmux),
                    .out_reg         (out_ar));

alu            ALU (.in_a            (out_ar), 
                    .in_b            (out_br),
                    .add_sub         (control_word[3]),
                    .out_alu         (out_alu));

register        BR (.clock           (clock), 
                    .reset           (reset), 
                    .load            (control_word[1]), 
                    .in_reg          (out_bmux), 
                    .out_reg         (out_br));

register        OR (.clock           (clock), 
                    .reset           (reset), 
                    .load            (control_word[0]), 
                    .in_reg          (out_bmux), 
                    .out_reg         (out));

bus_mux       BMUX (.in_pc           (out_pc[3:0]), 
                    .in_mem          (out_mem), 
                    .in_ir           (out_ir[3:0]), 
                    .in_ar           (out_ar), 
                    .in_alu          (out_alu), 
                    .enable_pc       (control_word[10]), 
                    .enable_mem      (control_word[8]), 
                    .enable_ir       (control_word[6]), 
                    .enable_ar       (control_word[4]), 
                    .enable_alu      (control_word[2]), 
                    .out_bmux        (out_bmux));

endmodule 
