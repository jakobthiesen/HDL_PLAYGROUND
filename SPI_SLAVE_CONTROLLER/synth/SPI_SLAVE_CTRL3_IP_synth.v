module SPI_SLAVE_CTRL3_IP
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
  wire n31;
  wire n34;
  wire n58;
  wire n59;
  wire n60;
  wire n61;
  wire [5:0] n62;
  wire [6:0] n63;
  wire [6:0] n64;
  wire n66;
  wire [5:0] n67;
  wire [6:0] n68;
  wire n69;
  wire n71;
  wire n77;
  wire n78;
  wire [6:0] n79;
  wire [7:0] n81;
  wire n83;
  wire n85;
  wire n86;
  wire n87;
  wire n88;
  wire n114;
  wire n118;
  wire n119;
  wire [30:0] n120;
  wire [31:0] n121;
  wire n122;
  wire [30:0] n123;
  wire [31:0] n124;
  wire n125;
  wire [30:0] n130;
  wire [31:0] n132;
  wire n134;
  wire n136;
  wire n137;
  wire n158;
  wire n162;
  wire n163;
  wire n164;
  wire n165;
  wire [30:0] n166;
  wire [31:0] n168;
  wire n169;
  wire [30:0] n170;
  wire [31:0] n172;
  wire n173;
  wire [31:0] n174;
  wire n175;
  wire [30:0] n178;
  wire [31:0] n180;
  wire n184;
  wire n198;
  wire n199;
  wire n200;
  reg n201;
  reg n202;
  wire n203;
  wire n204;
  wire [6:0] n205;
  reg [6:0] n206;
  wire n207;
  wire n208;
  wire [31:0] n209;
  reg [31:0] n210;
  wire n211;
  wire n212;
  wire [31:0] n213;
  reg [31:0] n214;
  wire n215;
  wire n216;
  wire [6:0] n217;
  reg [6:0] n218;
  wire n219;
  wire n220;
  wire [31:0] n221;
  reg [31:0] n222;
  wire [7:0] n223;
  reg [7:0] n224;
  wire [31:0] n225;
  reg [31:0] n226;
  wire [31:0] n227;
  reg [31:0] n228;
  wire n229;
  reg n230;
  wire n231;
  reg n232;
  wire n233;
  reg n234;
  wire n235;
  reg n236;
  wire n237;
  wire n238;
  wire n239;
  reg n240;
  wire n241;
  wire n242;
  wire n243;
  reg n244;
  reg n245;
  reg n246;
  reg n247;
  wire n248;
  wire n249;
  wire n250;
  reg n251;
  reg n252;
  reg n253;
  reg n254;
  assign o_miso = n201; //(module output)
  assign o_we = n31; //(module output)
  assign o_en = n202; //(module output)
  assign o_addr = addr_reg; //(module output)
  assign o_data = data_reg; //(module output)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:54:12 */
  assign addr_shift = n206; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:55:12 */
  assign rx_shift = n210; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:56:12 */
  assign tx_shift = n214; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:57:12 */
  assign addr_reg = n218; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:58:12 */
  assign data_reg = n222; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:61:12 */
  always @*
    addr_count = n224; // (isignal)
  initial
    addr_count = 8'b00000001;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:62:12 */
  always @*
    rx_count = n226; // (isignal)
  initial
    rx_count = 32'b00000000000000000000000000000001;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:63:12 */
  always @*
    tx_count = n228; // (isignal)
  initial
    tx_count = 32'b00000000000000000000000000000001;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:66:12 */
  always @*
    addr_valid_flag = n114; // (isignal)
  initial
    addr_valid_flag = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:67:12 */
  always @*
    rx_valid_flag = n158; // (isignal)
  initial
    rx_valid_flag = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:68:12 */
  always @*
    rx_begin_flag = n230; // (isignal)
  initial
    rx_begin_flag = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:69:12 */
  always @*
    tx_begin_flag = n232; // (isignal)
  initial
    tx_begin_flag = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:70:12 */
  always @*
    rx_done_flag = n234; // (isignal)
  initial
    rx_done_flag = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:71:12 */
  always @*
    tx_done_flag = n236; // (isignal)
  initial
    tx_done_flag = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:72:12 */
  always @*
    read_mode_flag = n240; // (isignal)
  initial
    read_mode_flag = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:74:12 */
  always @*
    rx_valid_tgl = n244; // (isignal)
  initial
    rx_valid_tgl = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:75:12 */
  always @*
    rx_valid_meta = n245; // (isignal)
  initial
    rx_valid_meta = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:76:12 */
  always @*
    rx_valid_sync = n246; // (isignal)
  initial
    rx_valid_sync = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:77:12 */
  always @*
    rx_valid_prev = n247; // (isignal)
  initial
    rx_valid_prev = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:79:12 */
  always @*
    addr_valid_tgl = n251; // (isignal)
  initial
    addr_valid_tgl = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:80:12 */
  always @*
    addr_valid_meta = n252; // (isignal)
  initial
    addr_valid_meta = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:81:12 */
  always @*
    addr_valid_sync = n253; // (isignal)
  initial
    addr_valid_sync = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:82:12 */
  always @*
    addr_valid_prev = n254; // (isignal)
  initial
    addr_valid_prev = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:87:13 */
  assign n31 = ~read_mode_flag;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:94:37 */
  assign n34 = addr_valid_flag | rx_valid_flag;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:137:30 */
  assign n58 = ~rx_begin_flag;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:137:60 */
  assign n59 = ~tx_begin_flag;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:137:42 */
  assign n60 = n59 & n58;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:138:30 */
  assign n61 = addr_count[0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:141:45 */
  assign n62 = addr_shift[5:0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:141:69 */
  assign n63 = {n62, i_mosi};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:138:17 */
  assign n64 = n61 ? addr_shift : n63;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:144:30 */
  assign n66 = addr_count[7]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:145:43 */
  assign n67 = addr_shift[5:0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:145:67 */
  assign n68 = {n67, i_mosi};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:147:43 */
  assign n69 = ~addr_valid_tgl;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:146:21 */
  assign n71 = read_mode_flag ? rx_begin_flag : 1'b1;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:144:17 */
  assign n77 = read_mode_flag & n66;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:144:17 */
  assign n78 = read_mode_flag & n66;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:153:41 */
  assign n79 = addr_count[6:0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:153:71 */
  assign n81 = {n79, 1'b0};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:137:13 */
  assign n83 = n66 & n60;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:137:13 */
  assign n85 = n66 & n60;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:137:13 */
  assign n86 = n77 & n60;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:137:13 */
  assign n87 = n61 & n60;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:137:13 */
  assign n88 = n78 & n60;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:166:40 */
  assign n114 = addr_valid_sync ^ addr_valid_prev;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:176:55 */
  assign n118 = ~rx_done_flag;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:176:38 */
  assign n119 = n118 & rx_begin_flag;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:177:37 */
  assign n120 = rx_shift[30:0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:177:61 */
  assign n121 = {n120, i_mosi};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:179:28 */
  assign n122 = rx_count[31]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:180:41 */
  assign n123 = rx_shift[30:0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:180:65 */
  assign n124 = {n123, i_mosi};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:182:37 */
  assign n125 = ~rx_valid_tgl;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:185:37 */
  assign n130 = rx_count[30:0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:185:61 */
  assign n132 = {n130, 1'b0};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:176:13 */
  assign n134 = n122 & n119;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:176:13 */
  assign n136 = n122 & n119;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:176:13 */
  assign n137 = n122 & n119;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:198:36 */
  assign n158 = rx_valid_sync ^ rx_valid_prev;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:208:55 */
  assign n162 = ~tx_done_flag;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:208:38 */
  assign n163 = n162 & tx_begin_flag;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:209:28 */
  assign n164 = tx_count[0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:210:37 */
  assign n165 = i_data[31]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:211:39 */
  assign n166 = i_data[30:0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:211:63 */
  assign n168 = {n166, 1'b0};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:213:39 */
  assign n169 = tx_shift[31]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:214:41 */
  assign n170 = tx_shift[30:0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:214:65 */
  assign n172 = {n170, 1'b0};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:209:17 */
  assign n173 = n164 ? n165 : n169;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:209:17 */
  assign n174 = n164 ? n168 : n172;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:217:28 */
  assign n175 = tx_count[31]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:220:37 */
  assign n178 = tx_count[30:0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:220:61 */
  assign n180 = {n178, 1'b0};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:208:13 */
  assign n184 = n175 & n163;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:16:9 */
  assign n198 = ~i_ncs;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:16:9 */
  assign n199 = n163 & n198;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:207:9 */
  assign n200 = n199 ? n173 : n201;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:207:9 */
  always @(negedge i_spi_clk)
    n201 <= n200;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:93:9 */
  always @(posedge i_clk)
    n202 <= n34;
  initial
    n202 = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:54:12 */
  assign n203 = ~i_ncs;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:54:12 */
  assign n204 = n60 & n203;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:136:9 */
  assign n205 = n204 ? n64 : addr_shift;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:136:9 */
  always @(posedge i_spi_clk)
    n206 <= n205;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:55:12 */
  assign n207 = ~i_ncs;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:55:12 */
  assign n208 = n119 & n207;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:175:9 */
  assign n209 = n208 ? n121 : rx_shift;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:175:9 */
  always @(posedge i_spi_clk)
    n210 <= n209;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:56:12 */
  assign n211 = ~i_ncs;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:56:12 */
  assign n212 = n163 & n211;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:207:9 */
  assign n213 = n212 ? n174 : tx_shift;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:207:9 */
  always @(negedge i_spi_clk)
    n214 <= n213;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:57:12 */
  assign n215 = ~i_ncs;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:57:12 */
  assign n216 = n83 & n215;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:136:9 */
  assign n217 = n216 ? n68 : addr_reg;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:136:9 */
  always @(posedge i_spi_clk)
    n218 <= n217;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:58:12 */
  assign n219 = ~i_ncs;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:58:12 */
  assign n220 = n134 & n219;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:175:9 */
  assign n221 = n220 ? n124 : data_reg;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:175:9 */
  always @(posedge i_spi_clk)
    n222 <= n221;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:136:9 */
  assign n223 = n60 ? n81 : addr_count;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:136:9 */
  always @(posedge i_spi_clk or posedge i_ncs)
    if (i_ncs)
      n224 <= 8'b00000001;
    else
      n224 <= n223;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:175:9 */
  assign n225 = n119 ? n132 : rx_count;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:175:9 */
  always @(posedge i_spi_clk or posedge i_ncs)
    if (i_ncs)
      n226 <= 32'b00000000000000000000000000000001;
    else
      n226 <= n225;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:207:9 */
  assign n227 = n163 ? n180 : tx_count;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:207:9 */
  always @(negedge i_spi_clk or posedge i_ncs)
    if (i_ncs)
      n228 <= 32'b00000000000000000000000000000001;
    else
      n228 <= n227;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:136:9 */
  assign n229 = n85 ? n71 : rx_begin_flag;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:136:9 */
  always @(posedge i_spi_clk or posedge i_ncs)
    if (i_ncs)
      n230 <= 1'b0;
    else
      n230 <= n229;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:136:9 */
  assign n231 = n86 ? 1'b1 : tx_begin_flag;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:136:9 */
  always @(posedge i_spi_clk or posedge i_ncs)
    if (i_ncs)
      n232 <= 1'b0;
    else
      n232 <= n231;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:175:9 */
  assign n233 = n136 ? 1'b1 : rx_done_flag;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:175:9 */
  always @(posedge i_spi_clk or posedge i_ncs)
    if (i_ncs)
      n234 <= 1'b0;
    else
      n234 <= n233;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:207:9 */
  assign n235 = n184 ? 1'b1 : tx_done_flag;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:207:9 */
  always @(negedge i_spi_clk or posedge i_ncs)
    if (i_ncs)
      n236 <= 1'b0;
    else
      n236 <= n235;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:72:12 */
  assign n237 = ~i_ncs;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:72:12 */
  assign n238 = n87 & n237;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:136:9 */
  assign n239 = n238 ? i_mosi : read_mode_flag;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:136:9 */
  always @(posedge i_spi_clk)
    n240 <= n239;
  initial
    n240 = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:74:12 */
  assign n241 = ~i_ncs;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:74:12 */
  assign n242 = n137 & n241;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:175:9 */
  assign n243 = n242 ? n125 : rx_valid_tgl;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:175:9 */
  always @(posedge i_spi_clk)
    n244 <= n243;
  initial
    n244 = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:192:9 */
  always @(posedge i_clk)
    n245 <= rx_valid_tgl;
  initial
    n245 = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:192:9 */
  always @(posedge i_clk)
    n246 <= rx_valid_meta;
  initial
    n246 = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:192:9 */
  always @(posedge i_clk)
    n247 <= rx_valid_sync;
  initial
    n247 = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:79:12 */
  assign n248 = ~i_ncs;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:79:12 */
  assign n249 = n88 & n248;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:136:9 */
  assign n250 = n249 ? n69 : addr_valid_tgl;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:136:9 */
  always @(posedge i_spi_clk)
    n251 <= n250;
  initial
    n251 = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:160:9 */
  always @(posedge i_clk)
    n252 <= addr_valid_tgl;
  initial
    n252 = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:160:9 */
  always @(posedge i_clk)
    n253 <= addr_valid_meta;
  initial
    n253 = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:160:9 */
  always @(posedge i_clk)
    n254 <= addr_valid_sync;
  initial
    n254 = 1'b0;
endmodule

