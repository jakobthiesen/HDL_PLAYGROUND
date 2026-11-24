module zector_40k_dp_bram_ip_Brtl_40_10
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
  wire [15:0] n278;
  wire [15:0] n280;
  wire [39:0] \bram_inst.A_DO ;
  wire [39:0] \bram_inst.B_DO ;
  wire \bram_inst.A_CO ;
  wire \bram_inst.B_CO ;
  wire \bram_inst.A_ECC_1B_ERR ;
  wire \bram_inst.B_ECC_1B_ERR ;
  wire \bram_inst.A_ECC_2B_ERR ;
  wire \bram_inst.B_ECC_2B_ERR ;
  localparam [39:0] n281 = 40'b1111111111111111111111111111111111111111;
  localparam [39:0] n282 = 40'b1111111111111111111111111111111111111111;
  assign do_a = \bram_inst.A_DO ; //(module output)
  assign do_b = \bram_inst.B_DO ; //(module output)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_40K_DP_BRAM_IP.vhdl:63:12 */
  assign bram_addr_a = n278; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_40K_DP_BRAM_IP.vhdl:64:12 */
  assign bram_addr_b = n280; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_40K_DP_BRAM_IP.vhdl:74:27 */
  assign n278 = {addr_a, 6'b000000};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_40K_DP_BRAM_IP.vhdl:75:27 */
  assign n280 = {addr_b, 6'b000000};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_40K_DP_BRAM_IP.vhdl:77:5 */
  CC_BRAM_40K #(
    .CAS("NONE"),
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
    .A_DO(\bram_inst.A_DO ),
    .B_DO(\bram_inst.B_DO ),
    .A_CO(),
    .B_CO(),
    .A_ECC_1B_ERR(),
    .B_ECC_1B_ERR(),
    .A_ECC_2B_ERR(),
    .B_ECC_2B_ERR());
endmodule

module spi_slave_ctrl3_ip_Brtl_32_7_1
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
  reg rx_valid_tgl;
  reg rx_valid_meta;
  reg rx_valid_sync;
  reg rx_valid_prev;
  reg addr_valid_tgl;
  reg addr_valid_meta;
  reg addr_valid_sync;
  reg addr_valid_prev;
  wire n51;
  wire n54;
  wire n78;
  wire n79;
  wire n80;
  wire n81;
  wire [5:0] n82;
  wire [6:0] n83;
  wire [6:0] n84;
  wire n86;
  wire [5:0] n87;
  wire [6:0] n88;
  wire n89;
  wire n91;
  wire n97;
  wire n98;
  wire [6:0] n99;
  wire [7:0] n101;
  wire n103;
  wire n105;
  wire n106;
  wire n107;
  wire n108;
  wire n134;
  wire n138;
  wire n139;
  wire [30:0] n140;
  wire [31:0] n141;
  wire n142;
  wire [30:0] n143;
  wire [31:0] n144;
  wire n145;
  wire [30:0] n150;
  wire [31:0] n152;
  wire n154;
  wire n156;
  wire n157;
  wire n178;
  wire n182;
  wire n183;
  wire n184;
  wire n185;
  wire [30:0] n186;
  wire [31:0] n188;
  wire n189;
  wire [30:0] n190;
  wire [31:0] n192;
  wire n193;
  wire [31:0] n194;
  wire n195;
  wire [30:0] n198;
  wire [31:0] n200;
  wire n204;
  wire n218;
  wire n219;
  wire n220;
  reg n221;
  reg n222;
  wire n223;
  wire n224;
  wire [6:0] n225;
  reg [6:0] n226;
  wire n227;
  wire n228;
  wire [31:0] n229;
  reg [31:0] n230;
  wire n231;
  wire n232;
  wire [31:0] n233;
  reg [31:0] n234;
  wire n235;
  wire n236;
  wire [6:0] n237;
  reg [6:0] n238;
  wire n239;
  wire n240;
  wire [31:0] n241;
  reg [31:0] n242;
  wire [7:0] n243;
  reg [7:0] n244;
  wire [31:0] n245;
  reg [31:0] n246;
  wire [31:0] n247;
  reg [31:0] n248;
  wire n249;
  reg n250;
  wire n251;
  reg n252;
  wire n253;
  reg n254;
  wire n255;
  reg n256;
  wire n257;
  wire n258;
  wire n259;
  reg n260;
  wire n261;
  wire n262;
  wire n263;
  reg n264;
  reg n265;
  reg n266;
  reg n267;
  wire n268;
  wire n269;
  wire n270;
  reg n271;
  reg n272;
  reg n273;
  reg n274;
  assign o_miso = n221; //(module output)
  assign o_we = n51; //(module output)
  assign o_en = n222; //(module output)
  assign o_addr = addr_reg; //(module output)
  assign o_data = data_reg; //(module output)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:54:12 */
  assign addr_shift = n226; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:55:12 */
  assign rx_shift = n230; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:56:12 */
  assign tx_shift = n234; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:57:12 */
  assign addr_reg = n238; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:58:12 */
  assign data_reg = n242; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:61:12 */
  always @*
    addr_count = n244; // (isignal)
  initial
    addr_count = 8'b00000001;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:62:12 */
  always @*
    rx_count = n246; // (isignal)
  initial
    rx_count = 32'b00000000000000000000000000000001;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:63:12 */
  always @*
    tx_count = n248; // (isignal)
  initial
    tx_count = 32'b00000000000000000000000000000001;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:66:12 */
  always @*
    addr_valid_flag = n134; // (isignal)
  initial
    addr_valid_flag = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:67:12 */
  always @*
    rx_valid_flag = n178; // (isignal)
  initial
    rx_valid_flag = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:68:12 */
  always @*
    rx_begin_flag = n250; // (isignal)
  initial
    rx_begin_flag = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:69:12 */
  always @*
    tx_begin_flag = n252; // (isignal)
  initial
    tx_begin_flag = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:70:12 */
  always @*
    rx_done_flag = n254; // (isignal)
  initial
    rx_done_flag = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:71:12 */
  always @*
    tx_done_flag = n256; // (isignal)
  initial
    tx_done_flag = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:72:12 */
  always @*
    read_mode_flag = n260; // (isignal)
  initial
    read_mode_flag = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:74:12 */
  always @*
    rx_valid_tgl = n264; // (isignal)
  initial
    rx_valid_tgl = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:75:12 */
  always @*
    rx_valid_meta = n265; // (isignal)
  initial
    rx_valid_meta = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:76:12 */
  always @*
    rx_valid_sync = n266; // (isignal)
  initial
    rx_valid_sync = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:77:12 */
  always @*
    rx_valid_prev = n267; // (isignal)
  initial
    rx_valid_prev = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:79:12 */
  always @*
    addr_valid_tgl = n271; // (isignal)
  initial
    addr_valid_tgl = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:80:12 */
  always @*
    addr_valid_meta = n272; // (isignal)
  initial
    addr_valid_meta = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:81:12 */
  always @*
    addr_valid_sync = n273; // (isignal)
  initial
    addr_valid_sync = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:82:12 */
  always @*
    addr_valid_prev = n274; // (isignal)
  initial
    addr_valid_prev = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:87:13 */
  assign n51 = ~read_mode_flag;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:94:37 */
  assign n54 = addr_valid_flag | rx_valid_flag;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:137:30 */
  assign n78 = ~rx_begin_flag;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:137:60 */
  assign n79 = ~tx_begin_flag;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:137:42 */
  assign n80 = n79 & n78;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:138:30 */
  assign n81 = addr_count[0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:141:45 */
  assign n82 = addr_shift[5:0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:141:69 */
  assign n83 = {n82, i_mosi};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:138:17 */
  assign n84 = n81 ? addr_shift : n83;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:144:30 */
  assign n86 = addr_count[7]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:145:43 */
  assign n87 = addr_shift[5:0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:145:67 */
  assign n88 = {n87, i_mosi};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:147:43 */
  assign n89 = ~addr_valid_tgl;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:146:21 */
  assign n91 = read_mode_flag ? rx_begin_flag : 1'b1;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:144:17 */
  assign n97 = read_mode_flag & n86;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:144:17 */
  assign n98 = read_mode_flag & n86;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:153:41 */
  assign n99 = addr_count[6:0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:153:71 */
  assign n101 = {n99, 1'b0};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:137:13 */
  assign n103 = n86 & n80;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:137:13 */
  assign n105 = n86 & n80;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:137:13 */
  assign n106 = n97 & n80;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:137:13 */
  assign n107 = n81 & n80;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:137:13 */
  assign n108 = n98 & n80;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:166:40 */
  assign n134 = addr_valid_sync ^ addr_valid_prev;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:176:55 */
  assign n138 = ~rx_done_flag;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:176:38 */
  assign n139 = n138 & rx_begin_flag;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:177:37 */
  assign n140 = rx_shift[30:0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:177:61 */
  assign n141 = {n140, i_mosi};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:179:28 */
  assign n142 = rx_count[31]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:180:41 */
  assign n143 = rx_shift[30:0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:180:65 */
  assign n144 = {n143, i_mosi};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:182:37 */
  assign n145 = ~rx_valid_tgl;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:185:37 */
  assign n150 = rx_count[30:0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:185:61 */
  assign n152 = {n150, 1'b0};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:176:13 */
  assign n154 = n142 & n139;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:176:13 */
  assign n156 = n142 & n139;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:176:13 */
  assign n157 = n142 & n139;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:198:36 */
  assign n178 = rx_valid_sync ^ rx_valid_prev;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:208:55 */
  assign n182 = ~tx_done_flag;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:208:38 */
  assign n183 = n182 & tx_begin_flag;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:209:28 */
  assign n184 = tx_count[0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:210:37 */
  assign n185 = i_data[31]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:211:39 */
  assign n186 = i_data[30:0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:211:63 */
  assign n188 = {n186, 1'b0};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:213:39 */
  assign n189 = tx_shift[31]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:214:41 */
  assign n190 = tx_shift[30:0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:214:65 */
  assign n192 = {n190, 1'b0};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:209:17 */
  assign n193 = n184 ? n185 : n189;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:209:17 */
  assign n194 = n184 ? n188 : n192;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:217:28 */
  assign n195 = tx_count[31]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:220:37 */
  assign n198 = tx_count[30:0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:220:61 */
  assign n200 = {n198, 1'b0};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:208:13 */
  assign n204 = n195 & n183;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:16:9 */
  assign n218 = ~i_ncs;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:16:9 */
  assign n219 = n183 & n218;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:207:9 */
  assign n220 = n219 ? n193 : n221;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:207:9 */
  always @(negedge i_spi_clk)
    n221 <= n220;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:93:9 */
  always @(posedge i_clk)
    n222 <= n54;
  initial
    n222 = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:54:12 */
  assign n223 = ~i_ncs;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:54:12 */
  assign n224 = n80 & n223;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:136:9 */
  assign n225 = n224 ? n84 : addr_shift;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:136:9 */
  always @(posedge i_spi_clk)
    n226 <= n225;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:55:12 */
  assign n227 = ~i_ncs;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:55:12 */
  assign n228 = n139 & n227;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:175:9 */
  assign n229 = n228 ? n141 : rx_shift;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:175:9 */
  always @(posedge i_spi_clk)
    n230 <= n229;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:56:12 */
  assign n231 = ~i_ncs;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:56:12 */
  assign n232 = n183 & n231;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:207:9 */
  assign n233 = n232 ? n194 : tx_shift;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:207:9 */
  always @(negedge i_spi_clk)
    n234 <= n233;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:57:12 */
  assign n235 = ~i_ncs;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:57:12 */
  assign n236 = n103 & n235;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:136:9 */
  assign n237 = n236 ? n88 : addr_reg;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:136:9 */
  always @(posedge i_spi_clk)
    n238 <= n237;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:58:12 */
  assign n239 = ~i_ncs;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:58:12 */
  assign n240 = n154 & n239;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:175:9 */
  assign n241 = n240 ? n144 : data_reg;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:175:9 */
  always @(posedge i_spi_clk)
    n242 <= n241;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:136:9 */
  assign n243 = n80 ? n101 : addr_count;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:136:9 */
  always @(posedge i_spi_clk or posedge i_ncs)
    if (i_ncs)
      n244 <= 8'b00000001;
    else
      n244 <= n243;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:175:9 */
  assign n245 = n139 ? n152 : rx_count;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:175:9 */
  always @(posedge i_spi_clk or posedge i_ncs)
    if (i_ncs)
      n246 <= 32'b00000000000000000000000000000001;
    else
      n246 <= n245;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:207:9 */
  assign n247 = n183 ? n200 : tx_count;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:207:9 */
  always @(negedge i_spi_clk or posedge i_ncs)
    if (i_ncs)
      n248 <= 32'b00000000000000000000000000000001;
    else
      n248 <= n247;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:136:9 */
  assign n249 = n105 ? n91 : rx_begin_flag;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:136:9 */
  always @(posedge i_spi_clk or posedge i_ncs)
    if (i_ncs)
      n250 <= 1'b0;
    else
      n250 <= n249;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:136:9 */
  assign n251 = n106 ? 1'b1 : tx_begin_flag;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:136:9 */
  always @(posedge i_spi_clk or posedge i_ncs)
    if (i_ncs)
      n252 <= 1'b0;
    else
      n252 <= n251;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:175:9 */
  assign n253 = n156 ? 1'b1 : rx_done_flag;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:175:9 */
  always @(posedge i_spi_clk or posedge i_ncs)
    if (i_ncs)
      n254 <= 1'b0;
    else
      n254 <= n253;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:207:9 */
  assign n255 = n204 ? 1'b1 : tx_done_flag;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:207:9 */
  always @(negedge i_spi_clk or posedge i_ncs)
    if (i_ncs)
      n256 <= 1'b0;
    else
      n256 <= n255;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:72:12 */
  assign n257 = ~i_ncs;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:72:12 */
  assign n258 = n107 & n257;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:136:9 */
  assign n259 = n258 ? i_mosi : read_mode_flag;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:136:9 */
  always @(posedge i_spi_clk)
    n260 <= n259;
  initial
    n260 = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:74:12 */
  assign n261 = ~i_ncs;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:74:12 */
  assign n262 = n157 & n261;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:175:9 */
  assign n263 = n262 ? n145 : rx_valid_tgl;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:175:9 */
  always @(posedge i_spi_clk)
    n264 <= n263;
  initial
    n264 = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:192:9 */
  always @(posedge i_clk)
    n265 <= rx_valid_tgl;
  initial
    n265 = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:192:9 */
  always @(posedge i_clk)
    n266 <= rx_valid_meta;
  initial
    n266 = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:192:9 */
  always @(posedge i_clk)
    n267 <= rx_valid_sync;
  initial
    n267 = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:79:12 */
  assign n268 = ~i_ncs;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:79:12 */
  assign n269 = n108 & n268;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:136:9 */
  assign n270 = n269 ? n89 : addr_valid_tgl;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:136:9 */
  always @(posedge i_spi_clk)
    n271 <= n270;
  initial
    n271 = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:160:9 */
  always @(posedge i_clk)
    n272 <= addr_valid_tgl;
  initial
    n272 = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:160:9 */
  always @(posedge i_clk)
    n273 <= addr_valid_meta;
  initial
    n273 = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:160:9 */
  always @(posedge i_clk)
    n274 <= addr_valid_sync;
  initial
    n274 = 1'b0;
endmodule

module spi_slave_top
  (input  clk_10_MHz,
   input  spi_clk,
   input  spi_mosi,
   input  spi_ncs,
   output spi_miso);
  wire spi_bram_we;
  wire spi_bram_en;
  wire [6:0] spi_bram_addr;
  wire [31:0] spi_bram_data;
  wire [39:0] bram_spi_data;
  wire w_spi_mosi;
  wire w_spi_clk;
  wire w_spi_ncs;
  wire sys_clk;
  wire \spi_slave.o_miso ;
  wire [31:0] n10;
  wire [39:0] \cfg_bram.do_b ;
  wire [9:0] n12;
  wire [39:0] n14;
  localparam n16 = 1'b0;
  localparam n17 = 1'b0;
  localparam [9:0] n18 = 10'b0000000000;
  localparam [39:0] n19 = 40'b0000000000000000000000000000000000000000;
  assign spi_miso = \spi_slave.o_miso ; //(module output)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\spi_slave_top.vhdl:55:5 */
  CC_BUFG sys_clock_buffer (
    .I(clk_10_MHz),
    .O(sys_clk));
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\spi_slave_top.vhdl:61:5 */
  CC_IBUF #(
    .PIN_NAME("UNPLACED"),
    .V_IO("UNDEFINED"),
    .PULLUP(0),
    .PULLDOWN(0),
    .KEEPER(0),
    .SCHMITT_TRIGGER(0),
    .DELAY_IBF(0),
    .FF_IBF(1))
    io_ff_spi_clk (
    .I(spi_clk),
    .Y(w_spi_clk));
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\spi_slave_top.vhdl:72:5 */
  CC_IBUF #(
    .PIN_NAME("UNPLACED"),
    .V_IO("UNDEFINED"),
    .PULLUP(0),
    .PULLDOWN(0),
    .KEEPER(0),
    .SCHMITT_TRIGGER(0),
    .DELAY_IBF(0),
    .FF_IBF(1))
    io_ff_spi_mosi (
    .I(spi_mosi),
    .Y(w_spi_mosi));
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\spi_slave_top.vhdl:83:5 */
  CC_IBUF #(
    .PIN_NAME("UNPLACED"),
    .V_IO("UNDEFINED"),
    .PULLUP(0),
    .PULLDOWN(0),
    .KEEPER(0),
    .SCHMITT_TRIGGER(0),
    .DELAY_IBF(0),
    .FF_IBF(1))
    io_ff_spi_ncs (
    .I(spi_ncs),
    .Y(w_spi_ncs));
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\spi_slave_top.vhdl:94:5 */
  spi_slave_ctrl3_ip_Brtl_32_7_1 spi_slave (
    .i_clk(sys_clk),
    .i_spi_clk(w_spi_clk),
    .i_mosi(w_spi_mosi),
    .i_ncs(w_spi_ncs),
    .i_data(n10),
    .o_miso(\spi_slave.o_miso ),
    .o_we(spi_bram_we),
    .o_en(spi_bram_en),
    .o_addr(spi_bram_addr),
    .o_data(spi_bram_data));
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\spi_slave_top.vhdl:111:37 */
  assign n10 = bram_spi_data[31:0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\spi_slave_top.vhdl:114:5 */
  zector_40k_dp_bram_ip_Brtl_40_10 cfg_bram (
    .clk_a(sys_clk),
    .clk_b(sys_clk),
    .en_a(spi_bram_en),
    .we_a(spi_bram_we),
    .addr_a(n12),
    .di_a(n14),
    .en_b(1'b0),
    .we_b(1'b0),
    .addr_b(10'b0000000000),
    .di_b(40'b0000000000000000000000000000000000000000),
    .do_a(bram_spi_data),
    .do_b());
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\spi_slave_top.vhdl:126:30 */
  assign n12 = {3'b000, spi_bram_addr};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\spi_slave_top.vhdl:127:36 */
  assign n14 = {8'b00000000, spi_bram_data};
endmodule

