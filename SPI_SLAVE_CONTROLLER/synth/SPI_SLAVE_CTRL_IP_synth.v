module SPI_SLAVE_CTRL_IP
  (input  i_clk,
   input  i_spi_clk,
   input  i_mosi,
   input  i_ncs,
   output o_miso,
   output o_we,
   output o_en,
   output [6:0] o_addr,
   output [31:0] o_data,
   input  [31:0] i_data);
  wire spi_clk_meta;
  reg spi_clk_sync;
  reg spi_clk_prev;
  reg spi_ncs_sync;
  reg spi_mosi_sync;
  reg spi_pos_edge;
  reg spi_neg_edge;
  wire [6:0] addr_shift;
  wire [31:0] rx_shift;
  wire [31:0] tx_shift;
  wire [6:0] addr_reg;
  wire [31:0] data_reg;
  reg [7:0] addr_count;
  reg [31:0] rx_count;
  reg [31:0] tx_count;
  reg addr_valid_flag;
  reg rx_valid_flag;
  reg rx_begin_flag;
  reg tx_begin_flag;
  reg rx_done_flag;
  reg tx_done_flag;
  reg read_mode_flag;
  wire n23;
  wire n26;
  wire n35;
  wire n36;
  wire n37;
  wire n38;
  wire n49;
  wire n50;
  wire n51;
  wire n52;
  wire [5:0] n53;
  wire [6:0] n54;
  wire [6:0] n55;
  wire n56;
  wire n57;
  wire [5:0] n58;
  wire [6:0] n59;
  wire n62;
  wire n64;
  wire n66;
  wire [6:0] n67;
  wire n69;
  wire n70;
  wire n71;
  wire [6:0] n72;
  wire [7:0] n74;
  wire [6:0] n75;
  wire n76;
  wire [7:0] n77;
  wire n79;
  wire n80;
  wire n81;
  wire n82;
  wire n83;
  wire n84;
  wire n85;
  wire n87;
  wire n88;
  wire n89;
  wire n90;
  wire [6:0] n91;
  wire [6:0] n92;
  wire [7:0] n94;
  wire n96;
  wire n99;
  wire n101;
  wire n102;
  wire n113;
  wire n114;
  wire [30:0] n115;
  wire [31:0] n116;
  wire n117;
  wire [30:0] n118;
  wire [31:0] n119;
  wire [31:0] n120;
  wire n123;
  wire n125;
  wire [30:0] n126;
  wire [31:0] n128;
  wire [31:0] n129;
  wire n130;
  wire [31:0] n131;
  wire n133;
  wire n134;
  wire n135;
  wire n136;
  wire n137;
  wire n139;
  wire n140;
  wire [31:0] n141;
  wire [31:0] n142;
  wire [31:0] n144;
  wire n146;
  wire n149;
  wire n158;
  wire n159;
  wire n160;
  wire n161;
  wire [30:0] n162;
  wire [31:0] n164;
  wire n165;
  wire [30:0] n166;
  wire [31:0] n168;
  wire n169;
  wire [31:0] n170;
  wire n171;
  wire n173;
  wire [30:0] n174;
  wire [31:0] n176;
  wire n177;
  wire [31:0] n178;
  wire [31:0] n179;
  wire n180;
  wire n181;
  wire n182;
  wire n183;
  wire n184;
  wire n185;
  wire [31:0] n186;
  wire [31:0] n188;
  wire n190;
  reg n198;
  reg n199;
  reg n200;
  reg n201;
  reg n202;
  reg n203;
  reg n204;
  reg [6:0] n205;
  reg [31:0] n206;
  reg [31:0] n207;
  reg [6:0] n208;
  reg [31:0] n209;
  reg [7:0] n210;
  reg [31:0] n211;
  reg [31:0] n212;
  reg n213;
  reg n214;
  reg n215;
  reg n216;
  reg n217;
  reg n218;
  reg n219;
  assign o_miso = n198; //(module output)
  assign o_we = n23; //(module output)
  assign o_en = n199; //(module output)
  assign o_addr = addr_reg; //(module output)
  assign o_data = data_reg; //(module output)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:40:12 */
  assign spi_clk_meta = n200; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:41:12 */
  always @*
    spi_clk_sync = n201; // (isignal)
  initial
    spi_clk_sync = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:42:12 */
  always @*
    spi_clk_prev = n202; // (isignal)
  initial
    spi_clk_prev = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:45:12 */
  always @*
    spi_ncs_sync = n203; // (isignal)
  initial
    spi_ncs_sync = 1'b1;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:48:12 */
  always @*
    spi_mosi_sync = n204; // (isignal)
  initial
    spi_mosi_sync = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:50:12 */
  always @*
    spi_pos_edge = n36; // (isignal)
  initial
    spi_pos_edge = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:51:12 */
  always @*
    spi_neg_edge = n38; // (isignal)
  initial
    spi_neg_edge = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:54:12 */
  assign addr_shift = n205; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:55:12 */
  assign rx_shift = n206; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:56:12 */
  assign tx_shift = n207; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:57:12 */
  assign addr_reg = n208; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:58:12 */
  assign data_reg = n209; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:61:12 */
  always @*
    addr_count = n210; // (isignal)
  initial
    addr_count = 8'b00000001;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:62:12 */
  always @*
    rx_count = n211; // (isignal)
  initial
    rx_count = 32'b00000000000000000000000000000001;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:63:12 */
  always @*
    tx_count = n212; // (isignal)
  initial
    tx_count = 32'b00000000000000000000000000000001;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:66:12 */
  always @*
    addr_valid_flag = n213; // (isignal)
  initial
    addr_valid_flag = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:67:12 */
  always @*
    rx_valid_flag = n214; // (isignal)
  initial
    rx_valid_flag = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:68:12 */
  always @*
    rx_begin_flag = n215; // (isignal)
  initial
    rx_begin_flag = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:69:12 */
  always @*
    tx_begin_flag = n216; // (isignal)
  initial
    tx_begin_flag = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:70:12 */
  always @*
    rx_done_flag = n217; // (isignal)
  initial
    rx_done_flag = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:71:12 */
  always @*
    tx_done_flag = n218; // (isignal)
  initial
    tx_done_flag = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:72:12 */
  always @*
    read_mode_flag = n219; // (isignal)
  initial
    read_mode_flag = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:77:13 */
  assign n23 = ~read_mode_flag;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:84:37 */
  assign n26 = addr_valid_flag | rx_valid_flag;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:98:38 */
  assign n35 = ~spi_clk_prev;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:98:34 */
  assign n36 = spi_clk_sync & n35;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:99:21 */
  assign n37 = ~spi_clk_sync;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:99:38 */
  assign n38 = n37 & spi_clk_prev;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:129:34 */
  assign n49 = ~rx_begin_flag;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:129:64 */
  assign n50 = ~tx_begin_flag;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:129:46 */
  assign n51 = n50 & n49;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:130:34 */
  assign n52 = addr_count[0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:133:49 */
  assign n53 = addr_shift[5:0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:133:73 */
  assign n54 = {n53, spi_mosi_sync};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:130:21 */
  assign n55 = n52 ? addr_shift : n54;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:128:13 */
  assign n56 = n90 ? spi_mosi_sync : read_mode_flag;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:136:34 */
  assign n57 = addr_count[7]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:137:47 */
  assign n58 = addr_shift[5:0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:137:71 */
  assign n59 = {n58, spi_mosi_sync};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:138:25 */
  assign n62 = read_mode_flag ? 1'b1 : 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:138:25 */
  assign n64 = read_mode_flag ? rx_begin_flag : 1'b1;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:128:13 */
  assign n66 = n89 ? 1'b1 : tx_begin_flag;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:128:13 */
  assign n67 = n84 ? n59 : addr_reg;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:136:21 */
  assign n69 = n57 ? n62 : 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:128:13 */
  assign n70 = n88 ? n64 : rx_begin_flag;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:136:21 */
  assign n71 = read_mode_flag & n57;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:145:45 */
  assign n72 = addr_count[6:0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:145:75 */
  assign n74 = {n72, 1'b0};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:128:13 */
  assign n75 = n83 ? n55 : addr_shift;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:129:17 */
  assign n76 = n57 & n51;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:128:13 */
  assign n77 = n85 ? n74 : addr_count;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:129:17 */
  assign n79 = n51 ? n69 : 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:129:17 */
  assign n80 = n57 & n51;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:129:17 */
  assign n81 = n71 & n51;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:129:17 */
  assign n82 = n52 & n51;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:128:13 */
  assign n83 = n51 & spi_pos_edge;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:128:13 */
  assign n84 = n76 & spi_pos_edge;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:128:13 */
  assign n85 = n51 & spi_pos_edge;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:128:13 */
  assign n87 = spi_pos_edge ? n79 : 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:128:13 */
  assign n88 = n80 & spi_pos_edge;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:128:13 */
  assign n89 = n81 & spi_pos_edge;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:128:13 */
  assign n90 = n82 & spi_pos_edge;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:124:13 */
  assign n91 = spi_ncs_sync ? addr_shift : n75;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:124:13 */
  assign n92 = spi_ncs_sync ? addr_reg : n67;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:124:13 */
  assign n94 = spi_ncs_sync ? 8'b00000001 : n77;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:124:13 */
  assign n96 = spi_ncs_sync ? 1'b0 : n87;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:124:13 */
  assign n99 = spi_ncs_sync ? 1'b0 : n70;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:124:13 */
  assign n101 = spi_ncs_sync ? 1'b0 : n66;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:124:13 */
  assign n102 = spi_ncs_sync ? read_mode_flag : n56;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:159:59 */
  assign n113 = ~rx_done_flag;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:159:42 */
  assign n114 = n113 & rx_begin_flag;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:160:41 */
  assign n115 = rx_shift[30:0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:160:65 */
  assign n116 = {n115, spi_mosi_sync};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:161:32 */
  assign n117 = rx_count[31]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:162:45 */
  assign n118 = rx_shift[30:0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:162:69 */
  assign n119 = {n118, spi_mosi_sync};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:158:13 */
  assign n120 = n136 ? n119 : data_reg;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:161:21 */
  assign n123 = n117 ? 1'b1 : 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:158:13 */
  assign n125 = n140 ? 1'b1 : rx_done_flag;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:166:41 */
  assign n126 = rx_count[30:0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:166:65 */
  assign n128 = {n126, 1'b0};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:158:13 */
  assign n129 = n135 ? n116 : rx_shift;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:159:17 */
  assign n130 = n117 & n114;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:158:13 */
  assign n131 = n137 ? n128 : rx_count;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:159:17 */
  assign n133 = n114 ? n123 : 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:159:17 */
  assign n134 = n117 & n114;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:158:13 */
  assign n135 = n114 & spi_pos_edge;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:158:13 */
  assign n136 = n130 & spi_pos_edge;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:158:13 */
  assign n137 = n114 & spi_pos_edge;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:158:13 */
  assign n139 = spi_pos_edge ? n133 : 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:158:13 */
  assign n140 = n134 & spi_pos_edge;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:155:13 */
  assign n141 = spi_ncs_sync ? rx_shift : n129;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:155:13 */
  assign n142 = spi_ncs_sync ? data_reg : n120;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:155:13 */
  assign n144 = spi_ncs_sync ? 32'b00000000000000000000000000000001 : n131;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:155:13 */
  assign n146 = spi_ncs_sync ? 1'b0 : n139;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:155:13 */
  assign n149 = spi_ncs_sync ? 1'b0 : n125;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:180:59 */
  assign n158 = ~tx_done_flag;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:180:42 */
  assign n159 = n158 & tx_begin_flag;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:181:32 */
  assign n160 = tx_count[0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:182:41 */
  assign n161 = i_data[31]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:183:43 */
  assign n162 = i_data[30:0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:183:67 */
  assign n164 = {n162, 1'b0};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:185:43 */
  assign n165 = tx_shift[31]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:186:45 */
  assign n166 = tx_shift[30:0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:186:69 */
  assign n168 = {n166, 1'b0};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:181:21 */
  assign n169 = n160 ? n161 : n165;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:181:21 */
  assign n170 = n160 ? n164 : n168;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:189:32 */
  assign n171 = tx_count[31]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:178:13 */
  assign n173 = n184 ? 1'b1 : tx_done_flag;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:192:41 */
  assign n174 = tx_count[30:0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:192:65 */
  assign n176 = {n174, 1'b0};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:178:13 */
  assign n177 = n181 ? n169 : n198;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:178:13 */
  assign n178 = n182 ? n170 : tx_shift;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:178:13 */
  assign n179 = n183 ? n176 : tx_count;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:180:17 */
  assign n180 = n171 & n159;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:178:13 */
  assign n181 = n159 & spi_neg_edge;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:178:13 */
  assign n182 = n159 & spi_neg_edge;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:178:13 */
  assign n183 = n159 & spi_neg_edge;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:178:13 */
  assign n184 = n180 & spi_neg_edge;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:175:13 */
  assign n185 = spi_ncs_sync ? n198 : n177;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:175:13 */
  assign n186 = spi_ncs_sync ? tx_shift : n178;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:175:13 */
  assign n188 = spi_ncs_sync ? 32'b00000000000000000000000000000001 : n179;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:175:13 */
  assign n190 = spi_ncs_sync ? 1'b0 : n173;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:174:9 */
  always @(posedge i_clk)
    n198 <= n185;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:83:9 */
  always @(posedge i_clk)
    n199 <= n26;
  initial
    n199 = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:91:9 */
  always @(posedge i_clk)
    n200 <= i_spi_clk;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:91:9 */
  always @(posedge i_clk)
    n201 <= spi_clk_meta;
  initial
    n201 = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:91:9 */
  always @(posedge i_clk)
    n202 <= spi_clk_sync;
  initial
    n202 = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:104:9 */
  always @(posedge i_clk)
    n203 <= i_ncs;
  initial
    n203 = 1'b1;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:113:9 */
  always @(posedge i_clk)
    n204 <= i_mosi;
  initial
    n204 = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:122:9 */
  always @(posedge i_clk)
    n205 <= n91;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:153:9 */
  always @(posedge i_clk)
    n206 <= n141;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:174:9 */
  always @(posedge i_clk)
    n207 <= n186;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:122:9 */
  always @(posedge i_clk)
    n208 <= n92;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:153:9 */
  always @(posedge i_clk)
    n209 <= n142;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:122:9 */
  always @(posedge i_clk)
    n210 <= n94;
  initial
    n210 = 8'b00000001;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:153:9 */
  always @(posedge i_clk)
    n211 <= n144;
  initial
    n211 = 32'b00000000000000000000000000000001;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:174:9 */
  always @(posedge i_clk)
    n212 <= n188;
  initial
    n212 = 32'b00000000000000000000000000000001;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:122:9 */
  always @(posedge i_clk)
    n213 <= n96;
  initial
    n213 = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:153:9 */
  always @(posedge i_clk)
    n214 <= n146;
  initial
    n214 = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:122:9 */
  always @(posedge i_clk)
    n215 <= n99;
  initial
    n215 = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:122:9 */
  always @(posedge i_clk)
    n216 <= n101;
  initial
    n216 = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:153:9 */
  always @(posedge i_clk)
    n217 <= n149;
  initial
    n217 = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:174:9 */
  always @(posedge i_clk)
    n218 <= n190;
  initial
    n218 = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL_IP.vhdl:122:9 */
  always @(posedge i_clk)
    n219 <= n102;
  initial
    n219 = 1'b0;
endmodule

