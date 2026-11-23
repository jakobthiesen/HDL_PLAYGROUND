module SPI_SLAVE_IP
  (input  i_clk,
   input  i_spi_clk,
   input  i_MOSI,
   input  i_ncs,
   output o_MISO,
   output o_RnW,
   output [6:0] o_addr,
   output [31:0] o_data,
   input  [31:0] i_data,
   output o_update);
  wire [6:0] addr_shift;
  wire [31:0] rx_shift;
  wire [31:0] tx_shift;
  wire [5:0] addr_counter;
  wire [5:0] rx_counter;
  wire [5:0] tx_counter;
  reg rw_reg;
  reg [6:0] addr_reg;
  reg [31:0] data_reg;
  reg tx_begin;
  reg rx_begin;
  reg spi_clk_meta;
  reg spi_clk_sync;
  reg spi_clk_prev;
  reg spi_mosi_meta;
  reg spi_mosi_sync;
  reg spi_ncs_meta;
  reg spi_ncs_sync;
  reg spi_pos_edge;
  reg spi_neg_edge;
  reg addr_valid;
  reg rx_valid;
  wire n24;
  wire n25;
  wire n26;
  wire n27;
  wire n30;
  wire n51;
  wire n52;
  wire n53;
  wire n55;
  wire [5:0] n56;
  wire [6:0] n57;
  wire [6:0] n58;
  wire n59;
  wire n61;
  wire [5:0] n62;
  wire [6:0] n63;
  wire n65;
  wire n67;
  wire n70;
  wire [6:0] n71;
  wire n72;
  wire n73;
  wire n75;
  wire [5:0] n77;
  wire [6:0] n78;
  wire [5:0] n79;
  wire n80;
  wire n81;
  wire n82;
  wire n83;
  wire n85;
  wire n86;
  wire n87;
  wire n88;
  wire n89;
  wire n90;
  wire n91;
  wire n93;
  wire [6:0] n94;
  wire [5:0] n96;
  wire n97;
  wire [6:0] n98;
  wire n100;
  wire n102;
  wire n104;
  wire [30:0] n116;
  wire [31:0] n117;
  wire n119;
  wire [30:0] n120;
  wire [31:0] n121;
  wire [5:0] n123;
  wire [5:0] n124;
  wire [31:0] n125;
  wire n128;
  wire [31:0] n129;
  wire [5:0] n130;
  wire n131;
  wire n133;
  wire n134;
  wire n135;
  wire n136;
  wire n138;
  wire [31:0] n139;
  wire [5:0] n141;
  wire [31:0] n142;
  wire n144;
  wire n154;
  wire n155;
  wire [30:0] n156;
  wire [31:0] n158;
  wire [5:0] n160;
  wire n162;
  wire n163;
  wire [30:0] n164;
  wire [31:0] n166;
  wire [5:0] n168;
  wire n169;
  wire [31:0] n170;
  wire [5:0] n171;
  wire n172;
  wire [31:0] n173;
  wire [5:0] n174;
  wire n175;
  wire [31:0] n176;
  wire [5:0] n177;
  wire n178;
  wire n179;
  wire n180;
  wire n181;
  wire [31:0] n182;
  wire [5:0] n184;
  reg n189;
  reg n190;
  reg [6:0] n191;
  reg [31:0] n192;
  reg [31:0] n193;
  reg [5:0] n194;
  reg [5:0] n195;
  reg [5:0] n196;
  reg n197;
  reg [6:0] n198;
  reg [31:0] n199;
  reg n200;
  reg n201;
  reg n202;
  reg n203;
  reg n204;
  reg n205;
  reg n206;
  reg n207;
  reg n208;
  reg n209;
  reg n210;
  assign o_MISO = n189; //(module output)
  assign o_RnW = rw_reg; //(module output)
  assign o_addr = addr_reg; //(module output)
  assign o_data = data_reg; //(module output)
  assign o_update = n190; //(module output)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:26:12 */
  assign addr_shift = n191; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:27:12 */
  assign rx_shift = n192; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:28:12 */
  assign tx_shift = n193; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:30:12 */
  assign addr_counter = n194; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:31:12 */
  assign rx_counter = n195; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:32:12 */
  assign tx_counter = n196; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:39:12 */
  always @*
    rw_reg = n197; // (isignal)
  initial
    rw_reg = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:40:12 */
  always @*
    addr_reg = n198; // (isignal)
  initial
    addr_reg = 7'b0000000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:41:12 */
  always @*
    data_reg = n199; // (isignal)
  initial
    data_reg = 32'b00000000000000000000000000000000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:43:12 */
  always @*
    tx_begin = n200; // (isignal)
  initial
    tx_begin = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:44:12 */
  always @*
    rx_begin = n201; // (isignal)
  initial
    rx_begin = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:49:12 */
  always @*
    spi_clk_meta = n202; // (isignal)
  initial
    spi_clk_meta = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:50:12 */
  always @*
    spi_clk_sync = n203; // (isignal)
  initial
    spi_clk_sync = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:51:12 */
  always @*
    spi_clk_prev = n204; // (isignal)
  initial
    spi_clk_prev = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:53:12 */
  always @*
    spi_mosi_meta = n205; // (isignal)
  initial
    spi_mosi_meta = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:54:12 */
  always @*
    spi_mosi_sync = n206; // (isignal)
  initial
    spi_mosi_sync = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:56:12 */
  always @*
    spi_ncs_meta = n207; // (isignal)
  initial
    spi_ncs_meta = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:57:12 */
  always @*
    spi_ncs_sync = n208; // (isignal)
  initial
    spi_ncs_sync = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:59:12 */
  always @*
    spi_pos_edge = n25; // (isignal)
  initial
    spi_pos_edge = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:60:12 */
  always @*
    spi_neg_edge = n27; // (isignal)
  initial
    spi_neg_edge = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:62:12 */
  always @*
    addr_valid = n209; // (isignal)
  initial
    addr_valid = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:63:12 */
  always @*
    rx_valid = n210; // (isignal)
  initial
    rx_valid = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:72:38 */
  assign n24 = ~spi_clk_prev;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:72:34 */
  assign n25 = spi_clk_sync & n24;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:73:21 */
  assign n26 = ~spi_clk_sync;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:73:38 */
  assign n27 = n26 & spi_clk_prev;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:86:36 */
  assign n30 = addr_valid | rx_valid;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:125:29 */
  assign n51 = ~rx_begin;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:125:48 */
  assign n52 = ~tx_begin;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:125:35 */
  assign n53 = n52 & n51;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:127:37 */
  assign n55 = addr_counter == 6'b000000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:130:49 */
  assign n56 = addr_shift[5:0]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:130:73 */
  assign n57 = {n56, spi_mosi_sync};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:127:21 */
  assign n58 = n55 ? addr_shift : n57;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:124:13 */
  assign n59 = n88 ? spi_mosi_sync : rw_reg;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:135:37 */
  assign n61 = addr_counter == 6'b000111;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:136:47 */
  assign n62 = addr_shift[5:0]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:136:71 */
  assign n63 = {n62, spi_mosi_sync};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:124:13 */
  assign n65 = n90 ? 1'b1 : tx_begin;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:137:25 */
  assign n67 = rw_reg ? rx_begin : 1'b1;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:137:25 */
  assign n70 = rw_reg ? 1'b1 : 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:124:13 */
  assign n71 = n89 ? n63 : addr_reg;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:135:21 */
  assign n72 = rw_reg & n61;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:124:13 */
  assign n73 = n91 ? n67 : rx_begin;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:135:21 */
  assign n75 = n61 ? n70 : 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:144:50 */
  assign n77 = addr_counter + 6'b000001;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:124:13 */
  assign n78 = n86 ? n58 : addr_shift;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:124:13 */
  assign n79 = n87 ? n77 : addr_counter;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:125:17 */
  assign n80 = n55 & n53;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:125:17 */
  assign n81 = n61 & n53;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:125:17 */
  assign n82 = n72 & n53;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:125:17 */
  assign n83 = n61 & n53;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:125:17 */
  assign n85 = n53 ? n75 : 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:124:13 */
  assign n86 = n53 & spi_pos_edge;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:124:13 */
  assign n87 = n53 & spi_pos_edge;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:124:13 */
  assign n88 = n80 & spi_pos_edge;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:124:13 */
  assign n89 = n81 & spi_pos_edge;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:124:13 */
  assign n90 = n82 & spi_pos_edge;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:124:13 */
  assign n91 = n83 & spi_pos_edge;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:124:13 */
  assign n93 = spi_pos_edge ? n85 : 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:120:13 */
  assign n94 = spi_ncs_sync ? addr_shift : n78;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:120:13 */
  assign n96 = spi_ncs_sync ? 6'b000000 : n79;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:120:13 */
  assign n97 = spi_ncs_sync ? rw_reg : n59;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:120:13 */
  assign n98 = spi_ncs_sync ? addr_reg : n71;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:120:13 */
  assign n100 = spi_ncs_sync ? 1'b0 : n65;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:120:13 */
  assign n102 = spi_ncs_sync ? 1'b0 : n73;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:120:13 */
  assign n104 = spi_ncs_sync ? 1'b0 : n93;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:159:41 */
  assign n116 = rx_shift[30:0]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:159:65 */
  assign n117 = {n116, spi_mosi_sync};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:161:35 */
  assign n119 = rx_counter == 6'b011111;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:162:45 */
  assign n120 = rx_shift[30:0]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:162:69 */
  assign n121 = {n120, spi_mosi_sync};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:165:50 */
  assign n123 = rx_counter + 6'b000001;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:161:21 */
  assign n124 = n119 ? rx_counter : n123;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:157:13 */
  assign n125 = n136 ? n121 : data_reg;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:161:21 */
  assign n128 = n119 ? 1'b1 : 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:157:13 */
  assign n129 = n134 ? n117 : rx_shift;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:157:13 */
  assign n130 = n135 ? n124 : rx_counter;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:158:17 */
  assign n131 = n119 & rx_begin;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:158:17 */
  assign n133 = rx_begin ? n128 : 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:157:13 */
  assign n134 = rx_begin & spi_pos_edge;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:157:13 */
  assign n135 = rx_begin & spi_pos_edge;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:157:13 */
  assign n136 = n131 & spi_pos_edge;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:157:13 */
  assign n138 = spi_pos_edge ? n133 : 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:155:13 */
  assign n139 = spi_ncs_sync ? rx_shift : n129;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:155:13 */
  assign n141 = spi_ncs_sync ? 6'b000000 : n130;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:155:13 */
  assign n142 = spi_ncs_sync ? data_reg : n125;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:155:13 */
  assign n144 = spi_ncs_sync ? 1'b0 : n138;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:181:35 */
  assign n154 = tx_counter == 6'b000000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:182:41 */
  assign n155 = i_data[31]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:183:43 */
  assign n156 = i_data[30:0]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:183:67 */
  assign n158 = {n156, 1'b0};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:184:50 */
  assign n160 = tx_counter + 6'b000001;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:185:38 */
  assign n162 = $unsigned(tx_counter) < $unsigned(6'b100000);
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:186:43 */
  assign n163 = tx_shift[31]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:187:45 */
  assign n164 = tx_shift[30:0]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:187:69 */
  assign n166 = {n164, 1'b0};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:188:50 */
  assign n168 = tx_counter + 6'b000001;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:185:21 */
  assign n169 = n162 ? n163 : n189;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:185:21 */
  assign n170 = n162 ? n166 : tx_shift;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:185:21 */
  assign n171 = n162 ? n168 : tx_counter;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:181:21 */
  assign n172 = n154 ? n155 : n169;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:181:21 */
  assign n173 = n154 ? n158 : n170;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:181:21 */
  assign n174 = n154 ? n160 : n171;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:179:13 */
  assign n175 = n178 ? n172 : n189;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:179:13 */
  assign n176 = n179 ? n173 : tx_shift;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:179:13 */
  assign n177 = n180 ? n174 : tx_counter;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:179:13 */
  assign n178 = tx_begin & spi_neg_edge;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:179:13 */
  assign n179 = tx_begin & spi_neg_edge;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:179:13 */
  assign n180 = tx_begin & spi_neg_edge;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:176:13 */
  assign n181 = spi_ncs_sync ? n189 : n175;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:176:13 */
  assign n182 = spi_ncs_sync ? tx_shift : n176;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:176:13 */
  assign n184 = spi_ncs_sync ? 6'b000000 : n177;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:175:9 */
  always @(posedge i_clk)
    n189 <= n181;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:85:9 */
  always @(posedge i_clk)
    n190 <= n30;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:118:9 */
  always @(posedge i_clk)
    n191 <= n94;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:153:9 */
  always @(posedge i_clk)
    n192 <= n139;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:175:9 */
  always @(posedge i_clk)
    n193 <= n182;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:118:9 */
  always @(posedge i_clk)
    n194 <= n96;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:153:9 */
  always @(posedge i_clk)
    n195 <= n141;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:175:9 */
  always @(posedge i_clk)
    n196 <= n184;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:118:9 */
  always @(posedge i_clk)
    n197 <= n97;
  initial
    n197 = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:118:9 */
  always @(posedge i_clk)
    n198 <= n98;
  initial
    n198 = 7'b0000000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:153:9 */
  always @(posedge i_clk)
    n199 <= n142;
  initial
    n199 = 32'b00000000000000000000000000000000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:118:9 */
  always @(posedge i_clk)
    n200 <= n100;
  initial
    n200 = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:118:9 */
  always @(posedge i_clk)
    n201 <= n102;
  initial
    n201 = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:92:9 */
  always @(posedge i_clk)
    n202 <= i_spi_clk;
  initial
    n202 = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:92:9 */
  always @(posedge i_clk)
    n203 <= spi_clk_meta;
  initial
    n203 = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:92:9 */
  always @(posedge i_clk)
    n204 <= spi_clk_sync;
  initial
    n204 = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:109:9 */
  always @(posedge i_clk)
    n205 <= i_MOSI;
  initial
    n205 = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:109:9 */
  always @(posedge i_clk)
    n206 <= spi_mosi_meta;
  initial
    n206 = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:101:9 */
  always @(posedge i_clk)
    n207 <= i_ncs;
  initial
    n207 = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:101:9 */
  always @(posedge i_clk)
    n208 <= spi_ncs_meta;
  initial
    n208 = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:118:9 */
  always @(posedge i_clk)
    n209 <= n104;
  initial
    n209 = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:153:9 */
  always @(posedge i_clk)
    n210 <= n144;
  initial
    n210 = 1'b0;
endmodule

