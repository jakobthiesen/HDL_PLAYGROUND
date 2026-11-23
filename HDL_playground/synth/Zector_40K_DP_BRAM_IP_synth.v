module Zector_40K_DP_BRAM_IP
  (input  clk_a,
   input  clk_b,
   input  en_a,
   input  we_a,
   input  [9:0] addr_a,
   input  [39:0] di_a,
   output [39:0] do_a,
   input  en_b,
   input  we_b,
   input  [9:0] addr_b,
   input  [39:0] di_b,
   output [39:0] do_b);
  wire [15:0] bram_addr_a;
  wire [15:0] bram_addr_b;
  wire [15:0] n3;
  wire [15:0] n5;
  wire [39:0] \bram_inst.A_DO ;
  wire [39:0] \bram_inst.B_DO ;
  wire \bram_inst.A_CO ;
  wire \bram_inst.B_CO ;
  wire \bram_inst.A_ECC_1B_ERR ;
  wire \bram_inst.B_ECC_1B_ERR ;
  wire \bram_inst.A_ECC_2B_ERR ;
  wire \bram_inst.B_ECC_2B_ERR ;
  localparam [39:0] n6 = 40'b1111111111111111111111111111111111111111;
  localparam [39:0] n7 = 40'b1111111111111111111111111111111111111111;
  localparam n10 = 1'b0;
  localparam n11 = 1'b0;
  assign do_a = \bram_inst.A_DO ; //(module output)
  assign do_b = \bram_inst.B_DO ; //(module output)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_40k_DP_BRAM_IP.vhdl:63:12 */
  assign bram_addr_a = n3; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_40k_DP_BRAM_IP.vhdl:64:12 */
  assign bram_addr_b = n5; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_40k_DP_BRAM_IP.vhdl:74:27 */
  assign n3 = {addr_a, 6'b000000};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_40k_DP_BRAM_IP.vhdl:75:27 */
  assign n5 = {addr_b, 6'b000000};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_40k_DP_BRAM_IP.vhdl:77:5 */
  CC_BRAM_40K #(
    .A_RD_WIDTH(40),
    .B_RD_WIDTH(40),
    .A_WR_WIDTH(40),
    .B_WR_WIDTH(40),
    .RAM_MODE("TDP"),
    .A_WR_MODE("NO_CHANGE"),
    .B_WR_MODE("NO_CHANGE"),
    .A_DO_REG(0),
    .B_DO_REG(0))
    bram_inst (
    .A_CLK(clk_a),
    .B_CLK(clk_b),
    .A_EN(en_a),
    .B_EN(en_b),
    .A_WE(we_a),
    .B_WE(we_b),
    .A_ADDR(bram_addr_a),
    .B_ADDR(bram_addr_b),
    .A_DI(di_a),
    .B_DI(di_b),
    .A_BM(40'b1111111111111111111111111111111111111111),
    .B_BM(40'b1111111111111111111111111111111111111111),
    .A_CI(1'b0),
    .B_CI(1'b0),
    .A_DO(\bram_inst.A_DO ),
    .B_DO(\bram_inst.B_DO ),
    .A_CO(),
    .B_CO(),
    .A_ECC_1B_ERR(),
    .B_ECC_1B_ERR(),
    .A_ECC_2B_ERR(),
    .B_ECC_2B_ERR());
endmodule

