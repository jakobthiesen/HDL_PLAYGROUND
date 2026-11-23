module CFG_REG_BANK_IP
  (input  i_clk,
   input  i_en,
   input  [31:0] i_data,
   input  [3:0] i_addr,
   output [511:0] o_regs);
  localparam [511:0] n1 = 512'bZ;
  assign o_regs = n1; //(module output)
endmodule

