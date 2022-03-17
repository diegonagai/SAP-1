
// Bus Multiplexer

module bus_mux (input  wire [7:0] in_pc,
                input  wire [7:0] in_mem,
                input  wire [7:0] in_ir,
                input  wire [7:0] in_ar,
                input  wire [7:0] in_alu,
                input  wire       enable_pc,
                input  wire       enable_mem,
                input  wire       enable_ir,
                input  wire       enable_ar,
                input  wire       enable_alu,
                output wire [7:0] out_bmux);


assign out_bmux = enable_pc  ? in_pc  :
                  enable_mem ? in_mem : 
                  enable_ir  ? in_ir  :
                  enable_ar  ? in_ar  :
                  enable_alu ? in_alu : 0;

endmodule 
