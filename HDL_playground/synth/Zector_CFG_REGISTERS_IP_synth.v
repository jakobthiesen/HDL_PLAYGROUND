module Zector_CFG_REGISTERS_IP
  (input  i_clk,
   input  i_we,
   input  [6:0] i_addr,
   input  [31:0] i_di,
   output [31:0] o_reg_0,
   output [31:0] o_reg_1,
   output [31:0] o_reg_2);
  reg [31:0] reg_0;
  reg [31:0] reg_1;
  reg [31:0] reg_2;
  wire [30:0] n9;
  wire n11;
  wire n13;
  wire n15;
  wire [2:0] n16;
  reg [31:0] n17;
  reg [31:0] n18;
  reg [31:0] n19;
  wire [31:0] n27;
  reg [31:0] n28;
  wire [31:0] n29;
  reg [31:0] n30;
  wire [31:0] n31;
  reg [31:0] n32;
  assign o_reg_0 = reg_0; //(module output)
  assign o_reg_1 = reg_1; //(module output)
  assign o_reg_2 = reg_2; //(module output)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:25:12 */
  always @*
    reg_0 = n28; // (isignal)
  initial
    reg_0 = 32'b00000000000001101000110110111001;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:28:12 */
  always @*
    reg_1 = n30; // (isignal)
  initial
    reg_1 = 32'b00000000000000000111111111111111;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:31:12 */
  always @*
    reg_2 = n32; // (isignal)
  initial
    reg_2 = 32'b00000000000000000000000000000000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:42:22 */
  assign n9 = {24'b0, i_addr};  // uext
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:44:21 */
  assign n11 = n9 == 31'b0000000000000000000000000000000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:47:21 */
  assign n13 = n9 == 31'b0000000000000000000000000000001;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:50:21 */
  assign n15 = n9 == 31'b0000000000000000000000000000010;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:42:17 */
  assign n16 = {n15, n13, n11};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:42:17 */
  always @*
    case (n16)
      3'b100: n17 = reg_0;
      3'b010: n17 = reg_0;
      3'b001: n17 = i_di;
      default: n17 = reg_0;
    endcase
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:42:17 */
  always @*
    case (n16)
      3'b100: n18 = reg_1;
      3'b010: n18 = i_di;
      3'b001: n18 = reg_1;
      default: n18 = reg_1;
    endcase
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:42:17 */
  always @*
    case (n16)
      3'b100: n19 = i_di;
      3'b010: n19 = reg_2;
      3'b001: n19 = reg_2;
      default: n19 = reg_2;
    endcase
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:38:9 */
  assign n27 = i_we ? n17 : reg_0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:38:9 */
  always @(posedge i_clk)
    n28 <= n27;
  initial
    n28 = 32'b00000000000001101000110110111001;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:38:9 */
  assign n29 = i_we ? n18 : reg_1;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:38:9 */
  always @(posedge i_clk)
    n30 <= n29;
  initial
    n30 = 32'b00000000000000000111111111111111;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:38:9 */
  assign n31 = i_we ? n19 : reg_2;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:38:9 */
  always @(posedge i_clk)
    n32 <= n31;
  initial
    n32 = 32'b00000000000000000000000000000000;
endmodule

