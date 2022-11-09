
// Memory 16x8

module memory_16x8 (input  wire [3:0] in_mem,
                    output wire [7:0] out_mem);

reg [7:0] ram [15:0];

  initial $readmemh ("firmware/firmware.txt", ram);

assign out_mem = ram[in_mem];

endmodule 
