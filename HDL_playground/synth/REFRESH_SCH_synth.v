module REFRESH_SCH
  (input  i_clk,
   output o_en_bram,
   output o_we_reg,
   input  [31:0] i_di,
   output [31:0] o_do,
   output [9:0] o_addr_bram,
   output [6:0] o_addr_reg);
  reg [2:0] state;
  reg [6:0] addr_count;
  reg [31:0] data_reg;
  reg [3:0] ce_counter;
  reg ce_refresh;
  reg en_bram;
  reg we_reg;
  wire n15;
  wire [3:0] n17;
  wire [3:0] n19;
  wire n22;
  wire [9:0] n28;
  wire n32;
  wire n34;
  wire n36;
  wire n38;
  wire n40;
  wire [6:0] n42;
  wire n44;
  wire [5:0] n45;
  reg [2:0] n53;
  reg [6:0] n55;
  reg [31:0] n57;
  reg n61;
  reg n65;
  wire n70;
  wire n73;
  wire [2:0] n81;
  reg [2:0] n82;
  wire [6:0] n83;
  reg [6:0] n84;
  wire [31:0] n85;
  reg [31:0] n86;
  reg [3:0] n87;
  reg n88;
  reg n89;
  reg n90;
  assign o_en_bram = en_bram; //(module output)
  assign o_we_reg = we_reg; //(module output)
  assign o_do = data_reg; //(module output)
  assign o_addr_bram = n28; //(module output)
  assign o_addr_reg = addr_count; //(module output)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:33:12 */
  always @*
    state = n82; // (isignal)
  initial
    state = 3'b000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:34:12 */
  always @*
    addr_count = n84; // (isignal)
  initial
    addr_count = 7'b0000000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:35:12 */
  always @*
    data_reg = n86; // (isignal)
  initial
    data_reg = 32'b00000000000000000000000000000000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:37:12 */
  always @*
    ce_counter = n87; // (isignal)
  initial
    ce_counter = 4'b0000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:38:12 */
  always @*
    ce_refresh = n88; // (isignal)
  initial
    ce_refresh = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:40:12 */
  always @*
    en_bram = n89; // (isignal)
  initial
    en_bram = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:41:12 */
  always @*
    we_reg = n90; // (isignal)
  initial
    we_reg = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:51:23 */
  assign n15 = ce_counter == 4'b1001;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:55:38 */
  assign n17 = ce_counter + 4'b0001;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:51:9 */
  assign n19 = n15 ? 4'b0000 : n17;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:51:9 */
  assign n22 = n15 ? 1'b1 : 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:60:22 */
  assign n28 = {3'b000, addr_count};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:74:17 */
  assign n32 = state == 3'b000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:76:17 */
  assign n34 = state == 3'b001;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:79:17 */
  assign n36 = state == 3'b010;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:81:17 */
  assign n38 = state == 3'b011;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:84:17 */
  assign n40 = state == 3'b100;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:88:45 */
  assign n42 = addr_count + 7'b0000001;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:87:17 */
  assign n44 = state == 3'b101;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:73:13 */
  assign n45 = {n44, n40, n38, n36, n34, n32};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:73:13 */
  always @*
    case (n45)
      6'b100000: n53 = 3'b000;
      6'b010000: n53 = 3'b101;
      6'b001000: n53 = 3'b100;
      6'b000100: n53 = 3'b011;
      6'b000010: n53 = 3'b010;
      6'b000001: n53 = 3'b001;
      default: n53 = 3'bX;
    endcase
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:73:13 */
  always @*
    case (n45)
      6'b100000: n55 = n42;
      6'b010000: n55 = addr_count;
      6'b001000: n55 = addr_count;
      6'b000100: n55 = addr_count;
      6'b000010: n55 = addr_count;
      6'b000001: n55 = addr_count;
      default: n55 = 7'bX;
    endcase
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:73:13 */
  always @*
    case (n45)
      6'b100000: n57 = data_reg;
      6'b010000: n57 = data_reg;
      6'b001000: n57 = i_di;
      6'b000100: n57 = data_reg;
      6'b000010: n57 = data_reg;
      6'b000001: n57 = data_reg;
      default: n57 = 32'bX;
    endcase
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:73:13 */
  always @*
    case (n45)
      6'b100000: n61 = 1'b0;
      6'b010000: n61 = 1'b0;
      6'b001000: n61 = 1'b0;
      6'b000100: n61 = 1'b0;
      6'b000010: n61 = 1'b1;
      6'b000001: n61 = 1'b0;
      default: n61 = 1'bX;
    endcase
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:73:13 */
  always @*
    case (n45)
      6'b100000: n65 = 1'b0;
      6'b010000: n65 = 1'b1;
      6'b001000: n65 = 1'b0;
      6'b000100: n65 = 1'b0;
      6'b000010: n65 = 1'b0;
      6'b000001: n65 = 1'b0;
      default: n65 = 1'bX;
    endcase
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:72:9 */
  assign n70 = ce_refresh ? n61 : 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:72:9 */
  assign n73 = ce_refresh ? n65 : 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:68:5 */
  assign n81 = ce_refresh ? n53 : state;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:68:5 */
  always @(posedge i_clk)
    n82 <= n81;
  initial
    n82 = 3'b000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:68:5 */
  assign n83 = ce_refresh ? n55 : addr_count;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:68:5 */
  always @(posedge i_clk)
    n84 <= n83;
  initial
    n84 = 7'b0000000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:68:5 */
  assign n85 = ce_refresh ? n57 : data_reg;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:68:5 */
  always @(posedge i_clk)
    n86 <= n85;
  initial
    n86 = 32'b00000000000000000000000000000000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:48:5 */
  always @(posedge i_clk)
    n87 <= n19;
  initial
    n87 = 4'b0000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:48:5 */
  always @(posedge i_clk)
    n88 <= n22;
  initial
    n88 = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:68:5 */
  always @(posedge i_clk)
    n89 <= n70;
  initial
    n89 = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:68:5 */
  always @(posedge i_clk)
    n90 <= n73;
  initial
    n90 = 1'b0;
endmodule

