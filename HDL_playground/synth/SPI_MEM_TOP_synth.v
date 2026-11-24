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
  wire [15:0] n498;
  wire [15:0] n500;
  wire [39:0] \bram_inst.A_DO ;
  wire [39:0] \bram_inst.B_DO ;
  wire \bram_inst.A_CO ;
  wire \bram_inst.B_CO ;
  wire \bram_inst.A_ECC_1B_ERR ;
  wire \bram_inst.B_ECC_1B_ERR ;
  wire \bram_inst.A_ECC_2B_ERR ;
  wire \bram_inst.B_ECC_2B_ERR ;
  localparam [39:0] n501 = 40'b1111111111111111111111111111111111111111;
  localparam [39:0] n502 = 40'b1111111111111111111111111111111111111111;
  assign do_a = \bram_inst.A_DO ; //(module output)
  assign do_b = \bram_inst.B_DO ; //(module output)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_40k_DP_BRAM_IP.vhdl:63:12 */
  assign bram_addr_a = n498; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_40k_DP_BRAM_IP.vhdl:64:12 */
  assign bram_addr_b = n500; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_40k_DP_BRAM_IP.vhdl:74:27 */
  assign n498 = {addr_a, 6'b000000};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_40k_DP_BRAM_IP.vhdl:75:27 */
  assign n500 = {addr_b, 6'b000000};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_40k_DP_BRAM_IP.vhdl:77:5 */
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

module zector_spi_ip_Brtl_32_7
  (input  i_clk,
   input  i_spi_clk,
   input  i_mosi,
   input  i_ncs,
   output o_miso,
   output o_rnw,
   output [6:0] o_addr,
   output [31:0] o_data,
   input  [31:0] i_data,
   output o_update);
  wire [39:0] rx_shift;
  wire [31:0] tx_shift;
  wire [5:0] bit_counter;
  wire [5:0] tx_counter;
  reg rw_reg;
  reg [6:0] addr_reg;
  reg [31:0] data_reg;
  reg valid_toggle;
  reg tx_begin;
  reg valid_sync;
  reg valid_prev;
  wire spi_clk_meta;
  reg spi_clk_sync;
  reg spi_clk_prev;
  wire spi_mosi_meta;
  reg spi_mosi_sync;
  wire spi_ncs_meta;
  reg spi_ncs_sync;
  reg spi_pos_edge;
  reg spi_neg_edge;
  wire n343;
  wire n344;
  wire n345;
  wire n346;
  wire n347;
  wire n372;
  wire [38:0] n373;
  wire [39:0] n374;
  wire n376;
  wire n378;
  wire [5:0] n379;
  wire [6:0] n380;
  wire n381;
  wire n382;
  wire n384;
  wire n386;
  wire n387;
  wire n388;
  wire [30:0] n389;
  wire [31:0] n390;
  wire n391;
  wire [31:0] n392;
  wire n393;
  wire [6:0] n394;
  wire [31:0] n395;
  wire n396;
  wire n397;
  wire n398;
  wire [6:0] n399;
  wire [31:0] n400;
  wire n401;
  wire n402;
  wire [5:0] n404;
  wire [39:0] n405;
  wire [5:0] n406;
  wire n407;
  wire [6:0] n408;
  wire [31:0] n409;
  wire n410;
  wire n411;
  wire n412;
  wire n413;
  wire n414;
  wire n415;
  wire n416;
  wire n417;
  wire n418;
  wire [39:0] n420;
  wire [5:0] n422;
  wire n423;
  wire [6:0] n424;
  wire [31:0] n425;
  wire n426;
  wire n428;
  wire n440;
  wire n441;
  wire [30:0] n442;
  wire [31:0] n444;
  wire [5:0] n446;
  wire n448;
  wire n449;
  wire [30:0] n450;
  wire [31:0] n452;
  wire [5:0] n454;
  wire n455;
  wire [31:0] n456;
  wire [5:0] n457;
  wire n458;
  wire [31:0] n459;
  wire [5:0] n460;
  wire n461;
  wire [31:0] n462;
  wire [5:0] n463;
  wire n464;
  wire n465;
  wire n466;
  wire n467;
  wire [31:0] n469;
  wire [5:0] n471;
  reg n476;
  reg [39:0] n477;
  reg [31:0] n478;
  reg [5:0] n479;
  reg [5:0] n480;
  reg n481;
  reg [6:0] n482;
  reg [31:0] n483;
  reg n484;
  reg n485;
  reg n486;
  reg n487;
  reg n488;
  reg n489;
  reg n490;
  reg n491;
  reg n492;
  reg n493;
  reg n494;
  assign o_miso = n476; //(module output)
  assign o_rnw = rw_reg; //(module output)
  assign o_addr = addr_reg; //(module output)
  assign o_data = data_reg; //(module output)
  assign o_update = n343; //(module output)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:26:12 */
  assign rx_shift = n477; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:27:12 */
  assign tx_shift = n478; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:29:12 */
  assign bit_counter = n479; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:30:12 */
  assign tx_counter = n480; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:36:12 */
  always @*
    rw_reg = n481; // (isignal)
  initial
    rw_reg = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:37:12 */
  always @*
    addr_reg = n482; // (isignal)
  initial
    addr_reg = 7'b0000000;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:38:12 */
  always @*
    data_reg = n483; // (isignal)
  initial
    data_reg = 32'b00000000000000000000000000000000;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:39:12 */
  always @*
    valid_toggle = n484; // (isignal)
  initial
    valid_toggle = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:40:12 */
  always @*
    tx_begin = n485; // (isignal)
  initial
    tx_begin = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:42:12 */
  always @*
    valid_sync = n486; // (isignal)
  initial
    valid_sync = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:43:12 */
  always @*
    valid_prev = n487; // (isignal)
  initial
    valid_prev = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:45:12 */
  assign spi_clk_meta = n488; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:46:12 */
  always @*
    spi_clk_sync = n489; // (isignal)
  initial
    spi_clk_sync = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:47:12 */
  always @*
    spi_clk_prev = n490; // (isignal)
  initial
    spi_clk_prev = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:49:12 */
  assign spi_mosi_meta = n491; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:50:12 */
  always @*
    spi_mosi_sync = n492; // (isignal)
  initial
    spi_mosi_sync = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:52:12 */
  assign spi_ncs_meta = n493; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:53:12 */
  always @*
    spi_ncs_sync = n494; // (isignal)
  initial
    spi_ncs_sync = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:55:12 */
  always @*
    spi_pos_edge = n345; // (isignal)
  initial
    spi_pos_edge = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:56:12 */
  always @*
    spi_neg_edge = n347; // (isignal)
  initial
    spi_neg_edge = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:65:28 */
  assign n343 = valid_sync ^ valid_prev;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:66:38 */
  assign n344 = ~spi_clk_prev;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:66:34 */
  assign n345 = spi_clk_sync & n344;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:67:21 */
  assign n346 = ~spi_clk_sync;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:67:38 */
  assign n347 = n346 & spi_clk_prev;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:115:32 */
  assign n372 = bit_counter != 6'b101000;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:116:41 */
  assign n373 = rx_shift[38:0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:116:76 */
  assign n374 = {n373, spi_mosi_sync};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:117:36 */
  assign n376 = bit_counter == 6'b000000;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:119:39 */
  assign n378 = bit_counter == 6'b000111;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:120:45 */
  assign n379 = rx_shift[5:0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:120:69 */
  assign n380 = {n379, spi_mosi_sync};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:122:45 */
  assign n381 = ~valid_toggle;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:121:25 */
  assign n382 = rw_reg ? n381 : valid_toggle;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:119:21 */
  assign n384 = n397 ? 1'b1 : tx_begin;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:125:40 */
  assign n386 = bit_counter == 6'b100111;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:125:108 */
  assign n387 = ~rw_reg;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:125:96 */
  assign n388 = n387 & n386;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:128:45 */
  assign n389 = rx_shift[30:0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:128:69 */
  assign n390 = {n389, spi_mosi_sync};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:129:41 */
  assign n391 = ~valid_toggle;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:125:21 */
  assign n392 = n388 ? n390 : data_reg;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:125:21 */
  assign n393 = n388 ? n391 : valid_toggle;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:119:21 */
  assign n394 = n378 ? n380 : addr_reg;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:119:21 */
  assign n395 = n378 ? data_reg : n392;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:119:21 */
  assign n396 = n378 ? n382 : n393;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:119:21 */
  assign n397 = rw_reg & n378;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:113:13 */
  assign n398 = n414 ? spi_mosi_sync : rw_reg;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:117:21 */
  assign n399 = n376 ? addr_reg : n394;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:117:21 */
  assign n400 = n376 ? data_reg : n395;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:117:21 */
  assign n401 = n376 ? valid_toggle : n396;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:117:21 */
  assign n402 = n376 ? tx_begin : n384;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:131:47 */
  assign n404 = bit_counter + 6'b000001;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:113:13 */
  assign n405 = n412 ? n374 : rx_shift;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:113:13 */
  assign n406 = n413 ? n404 : bit_counter;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:115:17 */
  assign n407 = n376 & n372;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:113:13 */
  assign n408 = n415 ? n399 : addr_reg;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:113:13 */
  assign n409 = n416 ? n400 : data_reg;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:113:13 */
  assign n410 = n417 ? n401 : valid_toggle;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:113:13 */
  assign n411 = n418 ? n402 : tx_begin;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:113:13 */
  assign n412 = n372 & spi_pos_edge;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:113:13 */
  assign n413 = n372 & spi_pos_edge;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:113:13 */
  assign n414 = n407 & spi_pos_edge;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:113:13 */
  assign n415 = n372 & spi_pos_edge;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:113:13 */
  assign n416 = n372 & spi_pos_edge;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:113:13 */
  assign n417 = n372 & spi_pos_edge;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:113:13 */
  assign n418 = n372 & spi_pos_edge;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:106:13 */
  assign n420 = spi_ncs_sync ? 40'b0000000000000000000000000000000000000000 : n405;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:106:13 */
  assign n422 = spi_ncs_sync ? 6'b000000 : n406;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:106:13 */
  assign n423 = spi_ncs_sync ? rw_reg : n398;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:106:13 */
  assign n424 = spi_ncs_sync ? addr_reg : n408;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:106:13 */
  assign n425 = spi_ncs_sync ? data_reg : n409;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:106:13 */
  assign n426 = spi_ncs_sync ? valid_toggle : n410;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:106:13 */
  assign n428 = spi_ncs_sync ? 1'b0 : n411;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:145:35 */
  assign n440 = tx_counter == 6'b000000;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:146:41 */
  assign n441 = i_data[31]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:147:43 */
  assign n442 = i_data[30:0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:147:67 */
  assign n444 = {n442, 1'b0};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:148:50 */
  assign n446 = tx_counter + 6'b000001;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:149:38 */
  assign n448 = $unsigned(tx_counter) < $unsigned(6'b100000);
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:150:43 */
  assign n449 = tx_shift[31]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:151:45 */
  assign n450 = tx_shift[30:0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:151:69 */
  assign n452 = {n450, 1'b0};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:152:50 */
  assign n454 = tx_counter + 6'b000001;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:149:21 */
  assign n455 = n448 ? n449 : n476;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:149:21 */
  assign n456 = n448 ? n452 : tx_shift;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:149:21 */
  assign n457 = n448 ? n454 : tx_counter;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:145:21 */
  assign n458 = n440 ? n441 : n455;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:145:21 */
  assign n459 = n440 ? n444 : n456;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:145:21 */
  assign n460 = n440 ? n446 : n457;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:143:13 */
  assign n461 = n464 ? n458 : n476;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:143:13 */
  assign n462 = n465 ? n459 : tx_shift;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:143:13 */
  assign n463 = n466 ? n460 : tx_counter;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:143:13 */
  assign n464 = tx_begin & spi_neg_edge;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:143:13 */
  assign n465 = tx_begin & spi_neg_edge;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:143:13 */
  assign n466 = tx_begin & spi_neg_edge;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:140:13 */
  assign n467 = spi_ncs_sync ? n476 : n461;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:140:13 */
  assign n469 = spi_ncs_sync ? 32'b00000000000000000000000000000000 : n462;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:140:13 */
  assign n471 = spi_ncs_sync ? 6'b000000 : n463;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:139:9 */
  always @(posedge i_clk)
    n476 <= n467;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:105:9 */
  always @(posedge i_clk)
    n477 <= n420;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:139:9 */
  always @(posedge i_clk)
    n478 <= n469;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:105:9 */
  always @(posedge i_clk)
    n479 <= n422;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:139:9 */
  always @(posedge i_clk)
    n480 <= n471;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:105:9 */
  always @(posedge i_clk)
    n481 <= n423;
  initial
    n481 = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:105:9 */
  always @(posedge i_clk)
    n482 <= n424;
  initial
    n482 = 7'b0000000;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:105:9 */
  always @(posedge i_clk)
    n483 <= n425;
  initial
    n483 = 32'b00000000000000000000000000000000;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:105:9 */
  always @(posedge i_clk)
    n484 <= n426;
  initial
    n484 = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:105:9 */
  always @(posedge i_clk)
    n485 <= n428;
  initial
    n485 = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:72:9 */
  always @(posedge i_clk)
    n486 <= valid_toggle;
  initial
    n486 = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:72:9 */
  always @(posedge i_clk)
    n487 <= valid_sync;
  initial
    n487 = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:80:9 */
  always @(posedge i_clk)
    n488 <= i_spi_clk;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:80:9 */
  always @(posedge i_clk)
    n489 <= spi_clk_meta;
  initial
    n489 = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:80:9 */
  always @(posedge i_clk)
    n490 <= spi_clk_sync;
  initial
    n490 = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:97:9 */
  always @(posedge i_clk)
    n491 <= i_mosi;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:97:9 */
  always @(posedge i_clk)
    n492 <= spi_mosi_meta;
  initial
    n492 = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:89:9 */
  always @(posedge i_clk)
    n493 <= i_ncs;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_SPI_IP.vhdl:89:9 */
  always @(posedge i_clk)
    n494 <= spi_ncs_meta;
  initial
    n494 = 1'b0;
endmodule

module refresh_sch_Brtl
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
  wire n248;
  wire [3:0] n250;
  wire [3:0] n252;
  wire n255;
  wire [9:0] n261;
  wire n265;
  wire n267;
  wire n269;
  wire n271;
  wire n273;
  wire [6:0] n275;
  wire n277;
  wire [5:0] n278;
  reg [2:0] n286;
  reg [6:0] n288;
  reg [31:0] n290;
  reg n294;
  reg n298;
  wire n303;
  wire n306;
  wire [2:0] n314;
  reg [2:0] n315;
  wire [6:0] n316;
  reg [6:0] n317;
  wire [31:0] n318;
  reg [31:0] n319;
  reg [3:0] n320;
  reg n321;
  reg n322;
  reg n323;
  assign o_en_bram = en_bram; //(module output)
  assign o_we_reg = we_reg; //(module output)
  assign o_do = data_reg; //(module output)
  assign o_addr_bram = n261; //(module output)
  assign o_addr_reg = addr_count; //(module output)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:33:12 */
  always @*
    state = n315; // (isignal)
  initial
    state = 3'b000;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:34:12 */
  always @*
    addr_count = n317; // (isignal)
  initial
    addr_count = 7'b0000000;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:35:12 */
  always @*
    data_reg = n319; // (isignal)
  initial
    data_reg = 32'b00000000000000000000000000000000;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:37:12 */
  always @*
    ce_counter = n320; // (isignal)
  initial
    ce_counter = 4'b0000;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:38:12 */
  always @*
    ce_refresh = n321; // (isignal)
  initial
    ce_refresh = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:40:12 */
  always @*
    en_bram = n322; // (isignal)
  initial
    en_bram = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:41:12 */
  always @*
    we_reg = n323; // (isignal)
  initial
    we_reg = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:51:23 */
  assign n248 = ce_counter == 4'b1001;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:55:38 */
  assign n250 = ce_counter + 4'b0001;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:51:9 */
  assign n252 = n248 ? 4'b0000 : n250;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:51:9 */
  assign n255 = n248 ? 1'b1 : 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:60:22 */
  assign n261 = {3'b000, addr_count};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:74:17 */
  assign n265 = state == 3'b000;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:76:17 */
  assign n267 = state == 3'b001;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:79:17 */
  assign n269 = state == 3'b010;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:81:17 */
  assign n271 = state == 3'b011;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:84:17 */
  assign n273 = state == 3'b100;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:88:45 */
  assign n275 = addr_count + 7'b0000001;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:87:17 */
  assign n277 = state == 3'b101;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:73:13 */
  assign n278 = {n277, n273, n271, n269, n267, n265};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:73:13 */
  always @*
    case (n278)
      6'b100000: n286 = 3'b000;
      6'b010000: n286 = 3'b101;
      6'b001000: n286 = 3'b100;
      6'b000100: n286 = 3'b011;
      6'b000010: n286 = 3'b010;
      6'b000001: n286 = 3'b001;
      default: n286 = 3'bX;
    endcase
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:73:13 */
  always @*
    case (n278)
      6'b100000: n288 = n275;
      6'b010000: n288 = addr_count;
      6'b001000: n288 = addr_count;
      6'b000100: n288 = addr_count;
      6'b000010: n288 = addr_count;
      6'b000001: n288 = addr_count;
      default: n288 = 7'bX;
    endcase
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:73:13 */
  always @*
    case (n278)
      6'b100000: n290 = data_reg;
      6'b010000: n290 = data_reg;
      6'b001000: n290 = i_di;
      6'b000100: n290 = data_reg;
      6'b000010: n290 = data_reg;
      6'b000001: n290 = data_reg;
      default: n290 = 32'bX;
    endcase
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:73:13 */
  always @*
    case (n278)
      6'b100000: n294 = 1'b0;
      6'b010000: n294 = 1'b0;
      6'b001000: n294 = 1'b0;
      6'b000100: n294 = 1'b0;
      6'b000010: n294 = 1'b1;
      6'b000001: n294 = 1'b0;
      default: n294 = 1'bX;
    endcase
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:73:13 */
  always @*
    case (n278)
      6'b100000: n298 = 1'b0;
      6'b010000: n298 = 1'b1;
      6'b001000: n298 = 1'b0;
      6'b000100: n298 = 1'b0;
      6'b000010: n298 = 1'b0;
      6'b000001: n298 = 1'b0;
      default: n298 = 1'bX;
    endcase
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:72:9 */
  assign n303 = ce_refresh ? n294 : 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:72:9 */
  assign n306 = ce_refresh ? n298 : 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:68:5 */
  assign n314 = ce_refresh ? n286 : state;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:68:5 */
  always @(posedge i_clk)
    n315 <= n314;
  initial
    n315 = 3'b000;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:68:5 */
  assign n316 = ce_refresh ? n288 : addr_count;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:68:5 */
  always @(posedge i_clk)
    n317 <= n316;
  initial
    n317 = 7'b0000000;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:68:5 */
  assign n318 = ce_refresh ? n290 : data_reg;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:68:5 */
  always @(posedge i_clk)
    n319 <= n318;
  initial
    n319 = 32'b00000000000000000000000000000000;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:48:5 */
  always @(posedge i_clk)
    n320 <= n252;
  initial
    n320 = 4'b0000;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:48:5 */
  always @(posedge i_clk)
    n321 <= n255;
  initial
    n321 = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:68:5 */
  always @(posedge i_clk)
    n322 <= n303;
  initial
    n322 = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:68:5 */
  always @(posedge i_clk)
    n323 <= n306;
  initial
    n323 = 1'b0;
endmodule

module zector_cfg_registers_ip_Brtl_32_7
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
  wire [30:0] n209;
  wire n211;
  wire n213;
  wire n215;
  wire [2:0] n216;
  reg [31:0] n217;
  reg [31:0] n218;
  reg [31:0] n219;
  wire [31:0] n227;
  reg [31:0] n228;
  wire [31:0] n229;
  reg [31:0] n230;
  wire [31:0] n231;
  reg [31:0] n232;
  assign o_reg_0 = reg_0; //(module output)
  assign o_reg_1 = reg_1; //(module output)
  assign o_reg_2 = reg_2; //(module output)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:25:12 */
  always @*
    reg_0 = n228; // (isignal)
  initial
    reg_0 = 32'b00000000000001101000110110111001;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:28:12 */
  always @*
    reg_1 = n230; // (isignal)
  initial
    reg_1 = 32'b00000000000000000111111111111111;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:31:12 */
  always @*
    reg_2 = n232; // (isignal)
  initial
    reg_2 = 32'b00000000000000000111111111111111;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:42:22 */
  assign n209 = {24'b0, i_addr};  // uext
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:44:21 */
  assign n211 = n209 == 31'b0000000000000000000000000000000;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:47:21 */
  assign n213 = n209 == 31'b0000000000000000000000000000001;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:50:21 */
  assign n215 = n209 == 31'b0000000000000000000000000000010;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:42:17 */
  assign n216 = {n215, n213, n211};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:42:17 */
  always @*
    case (n216)
      3'b100: n217 = reg_0;
      3'b010: n217 = reg_0;
      3'b001: n217 = i_di;
      default: n217 = reg_0;
    endcase
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:42:17 */
  always @*
    case (n216)
      3'b100: n218 = reg_1;
      3'b010: n218 = i_di;
      3'b001: n218 = reg_1;
      default: n218 = reg_1;
    endcase
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:42:17 */
  always @*
    case (n216)
      3'b100: n219 = i_di;
      3'b010: n219 = reg_2;
      3'b001: n219 = reg_2;
      default: n219 = reg_2;
    endcase
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:38:9 */
  assign n227 = i_we ? n217 : reg_0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:38:9 */
  always @(posedge i_clk)
    n228 <= n227;
  initial
    n228 = 32'b00000000000001101000110110111001;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:38:9 */
  assign n229 = i_we ? n218 : reg_1;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:38:9 */
  always @(posedge i_clk)
    n230 <= n229;
  initial
    n230 = 32'b00000000000000000111111111111111;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:38:9 */
  assign n231 = i_we ? n219 : reg_2;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:38:9 */
  always @(posedge i_clk)
    n232 <= n231;
  initial
    n232 = 32'b00000000000000000111111111111111;
endmodule

module bram_dp_sin_lut_Brtl_20_10
  (input  we_a,
   input  we_b,
   input  clk_a,
   input  clk_b,
   input  [19:0] di_a,
   input  [19:0] di_b,
   input  [9:0] addr_a,
   input  [9:0] addr_b,
   output [19:0] do_a,
   output [19:0] do_b);
  reg [20479:0] memory;
  reg [19:0] n197; // mem_rd
  reg [19:0] n199; // mem_rd
  assign do_a = n199; //(module output)
  assign do_b = n197; //(module output)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\bram_dp_sin_lut.vhdl:30:12 */
  always @*
    memory = 20480'b11111111001101101111111111100110110111101111110110100100111011111100110110111101111111000001001011101111101101001001111011111010100000010000111110011011100000101111100011101111011011111000001001101010111101110101111000001111011010010101011111110101110011010000111101010000010010101111010000111100010111110011011101000011111100101010110000101111000111100100010011110001000111001000111100000101010011101110111110001101011011101110110001100001111011011111111011111110110100110111111111101100011100010010111010111010101010011110101011100100001011101010000111011111111010010101011111111110100010010010001111100111110011001010111001110000011101011110011001000010001111100101011111010110111001001011100011011110001111110100100011100011001100000111111000100110110010111110000110101001010011100000111001100001111000000010001100101101111101100000100111011110100111100101110111011101110001101101110100011010110011011100010110011000110110111001100010011101101011011000000011011010000101111100110110010101011111101101100010011000011011010111110110010101110101110001101010011101011001011100010011010101100111100101110101001110000011011101010000100011101111010011011001110001110100101010101011011101000111101111000011010001001100111010110100000111100010111100111110111110010011001111000001000100110011100100101011001100110110010001101111001100110110010010110011000010000100011100101101101001100011001010101100100111110010011111101111111100100101000101111011001000100100000111110001111101101101111100011100100111000111000110011100110011110001011011111111101100010100001101001011000100010110101111110000111010100101011100001011111000010011000010010001111101110000011001100000001100000011101000110011000000001110100010101111111000110000011011111011011110101110111110001100011111101111011000010111001011110011011010010010111100001011110111101110111000010101001011101011011011101110111010001100101101101110011000101010101011100011100011001010111000001111000100101101111001011000101011011011110000101110110110010010111111101101011010011111111011010100000100101010110100011000100000101100111100000000111011001100011111000110110010011111101010101100011101111100001011000101000000001010110000101000100000101100000000010010101010111101101000000110101110110011000100101011100011000100111010110110010110111110101100111111011000101011000110010011101010101111001101000110101011001101100000101010101001111111011010101000001010011010101001011101011101101010001110001000101010100001001111010010100111101111010011101001110010110000001010011010011011101010100110000011000011101001010111110110011010010011101111110110100100011000110000101000111101011100001010001101001011111110100010110000011100101000100011100001111010000110110000000110100001001010001001101000001010001000001010000000011100011010011111100101111010100111110001001111011001111010010000111110011110000011110001100111011000111000011001110100001110000110011100100011101111100111000001000011101001101110010011101110011011000101111000100110101001110001011001101000100010000110011001101010001101100110010011000010011001100010111001010010011000010000110000100101111100110110111001011101011001011110010110111001100011100101100111001111111001011000000010101110010101100100100111100101010010001101001001010010110101001010010100010010000000100100111101101111101001001101110000111010010011000001101110100100101001110111101001001000110110000010010001110011110011100100010110100101101001000100000100101110010000101000010001100100000011111010001000111111011101000010001111011111001001100011110001110101001000111010111111000010001110011000011110100011100000010111011000110110101010111010001101010100010001100011001111100001011000110010100000101110001100010010100010100010111111010011001000101110100000011110001011010011010100100010101111101101001000101010101010010110001010010110101001100010100000101111101000100110111110011010001001011100100000100010010010011011001000100011011100101110001000100100111100100010000100101111111000100000000101010110000111101111111110100001110111101110011000011100111000011010000110111101100110100001101011010110011000011001110101111110000110001101110111100001011111101000101000010110111110000010000101100000110001100001010100100101001000010100010000101110000100110110010100100001001010001100011000010001101110000010000100001110100011100001000000011110001000001111010110000110000011101001011101100000110111011011001000001101001000111110000011000111000100100000101111000011011000001011000110100110000010100111011000100000100111010110111000001001001111000110000010001010011011100000100000010101111000000111100010100010000001110000001011100000011010000000111000000110000000110110000001011000101100100000010100010111011000000100101010001110000001000011111011100000001111011010001000000011011110100010000000110001111011100000001011001000111000000010011101111010000000100010101100100000000111100011101000000001101000010010000000010110001110100000000100101010111000000000111101110010000000001100100000100000000010011110011000000000011110010110000000000101100100100000000000111110001000000000001001111110000000000001011010100000000000001010001000000000000000101110000000000000000001100000000000000010111000000000000010100010000000000001011010100000000000100111111000000000001111100010000000000101100100100000000001111001011000000000100111100110000000001100100000100000000011110111001000000001001010101110000000010110001110100000000110100001001000000001111000111010000000100010101100100000001001110111101000000010110010001110000000110001111011100000001101111010001000000011110110100010000001000011111011100000010010101000111000000101000101110110000001011000101100100000011000000011011000000110100000001110000001110000001011100000011110001010001000001000000101011110000010001010011011100000100100111100011000001001110101101110000010100111011000100000101100011010011000001011110000110110000011000111000100100000110100100011111000001101110110110010000011101001011101100000111101011000011000010000000111100010000100001110100011100001000110111000001000010010100011000110000100110110010100100001010001000010111000010101001001010010000101100000110001100001011011111000001000010111111010001010000110001101110111100001100111010111111000011010110101100110000110111101100110100001110011100001101000011101111011100110000111101111111110100010000000010101011000100001001011111110001000100100111100100010001101110010111000100100100110110010001001011100100000100010011011111001101000101000001011111010001010010110101001100010101010101001011000101011111011010010001011010011010100100010111010000001111000101111110100110010001100010010100010100011001010000010111000110011111000010110001101010100010001100011011010101011101000111000000101110110001110011000011110100011101011111100001000111100011101010010001111011111001001100011111101110100001001000000111110100010010000101000010001100100010000010010111001000101101001011010010001110011110011100100100011011000001001001010011101111010010011000001101110100100110111000011101001001111011011111010010100010010000000100101001011010100101001010100100011010010010101100100100111100101100000001010111001011001110011111110010110111001100011100101110101100101111001011111001101101110011000010000110000100110001011100101001001100100110000100110011001101010001101100110100010001000011001101010011100010110011011000101111000100110111001001110111001110000010000111010011100100011101111100111010000111000011001110110001110000110011110000011110001100111101001000011111001111100010011110110011111100101111010101000000001110001101010000010100010000010100001001010001001101000011011000000011010001000111000011110100010110000011100101000110100101111111010001111010111000010100100011000110000101001001110111111011010010101111101100110100110000011000011101001101001101110101010011100101100000010100111101111010011101010000100111101001010100011100010001010101001011101011101101010100000101001101010101010011111110110101011001101100000101010111100110100011010110001100100111010101100111111011000101011011001011011111010111000110001001110101110110011000100101011110110100000011011000000000100101010110000101000100000101100010100000000101011000111011111000010110010011111101010101100110001111100011011001111000000001110110100011000100000101101010000010010101011010110100111111110110110010010111111101101101111000010111011011110010110001010111000001111000100101110001110001100101011100110001010101010111010001100101101101110101101101110111011101110000101010010111100001011110111101111001101101001001011110110000101110010111110001100011111101111101101111010111011111110001100000111000000001110100010110000001110100011001100000110011000000011000010010001111101110000101111100001001100001110101001010111000100010110101111110001010000110100101100010110111111111011000110011100110011110001110010011100011100011111011011011111001000100100000111110010010100010111101100100111111011111111001010101100100111110010110110100110001100110000100001000111001100110110010010110011011001000110111100111001001010110011001111000001000100110011111011111001001101000001111000101111010001001100111010110100011110111100001101001010101010110111010011011001110001110101000010001110111101010011100000110111010101100111100101110101100101110001001101011100011010100111010111110110010101110110001001100001101101100101010111111011011010000101111100110110101101100000001101101110011000100111011100010110011000110111010001101011001101110111011100011011011110100111100101110111110110000010011110000000100011001011100000111001100001111000011010100101001110001001101100101111100011001100000111111000111111010010001110010010111000110111100101011111010110111001100100001000111110011100000111010111100111110011001010111010001001001000111110100101010111111111101010000111011111111010101110010000101110101110101010100111101100011100010010111011010011011111111110110111111110111111101110110001100001111011111000110101101111000001010100111011110001000111001000111100011110010001001111001010101100001011110011011101000011111101000011110001011111010100000100101011110101110011010000111101101001010101111111011101011110000011111000001001101010111110001110111101101111100110111000001011111010100000010000111110110100100111101111110000010010111011111100110110111101111111011010010011101111111001101101111011111111001101101111000000000000000000000000000011001001000100000001100100100010000000100101101100100000001100100100001100000011111011010010000001001011011000100000010101111111000000000110010001111110000001110001000010100000011111011001011000001000101000100000000010010110101010010000101000110011000000001010111110110110000010111100001110110000110010001011110100001101010100111110000011100001101111000000111011100011100000001111101010110010000100000111001010100001000100111001111100010010000000010001000100101100100000010001001110001110111000010100010101010111000101010001101111100001010111100010000100010110101010000001000101110110110111010001100000110011011000011000111110001011000110011011110111010001101010000010101000011011010001110011000111000000101110000001110011001111100100011101100100110101000111100101011011000001111100011001111100011111110111001110001000001001111101110010000101100001101100100010001000111010001000101110010101000010001110100110100000100100011001110111001001010010100000000010010111101000010000100110101010000010001001110110011110100010100000100110101100101000111001010111001010011010001111000010101001100001101100101011000111110011001010111101110001010010110010011000111100101101010101010011001011100001000100000010111011001100011000101111100001110101001100000100000111000011000011111011110000110001101101010100001100100110111001010011001100100110111000110011110111101111001101001001011010000011010101001101100100110110000001000001001101101011101000100011011101101111100100111000001001001001001110001101100011110011100110001100110100111010010000000010001110101111001011100011101110100101000100111100010101101011001111010000011111000011110110111000001100111110011010000000001111110001011101000011111111000101111001000000011100111111010000010010000101010100000111001110000101000010011110100100010000110010010111000100001111010000100101000100011110101100010001010010010001010100010111001101001101000110011101010110010001110001110011100100011111000011110001001000011010011110010010010000111101010100100110110100000101001010010110000001010010101111101101100100101110011110000001001100001111111101010011001110000011110100110110000001011001001110001000010000010011101011111111100100111101011110000001001111111110110110010100001001011111110101000100110011110001010001110011101101010100100110100100010101001100000010100001010011100110110010010101000011001011110101010011001010000001010101011000000011010101011111010110100101011010001010001101010111000111011110010101111011000011000101100001000010110101011000110101000000010110010110010001100101100111110011110101011010100000100111010110110001000000110101101110011101000001011100001010010000010111001011010000010101110100111110010001011101110001111001010111100100111111110101111011010111011101011111010111100000010111111110001110100110000001101000011001100000111011000011011000010110111100010110000111110000111101100010011100011111011000101111000111110110001101110001000101100011111011110010011001000110110001010110010011101000100001100101011000111011011001011101110111110110011001010111001101100110110011110111011001110100011011000110011110111101000001101000001100100101011010001010011010010110100100011001110101101001100011000001011010011111110101010110101001101101100101101010110111001100011010110100101011100110101110111000000001101100001001000010011011001000111100100110110011111001001001101101011000100010011011011100101000000110111000110000110101101110100101101010011011101111101101010110111101011110111101101111110000011000011100000010001100000111000010000011011101110000111000101100011100010100000100000111000110011110001001110001111110100011011100100101010100100111001010101110111101110011000001111011011100110101111101010111001110110101111001110100000010110100011101000101111110010111010010110010110001110101000001001100011101010101010110110111010110100101011101110101111101000010011101100100000110100111011010001110000001110110110110010100011101110010001101010111011101101100010001110111101101000001011101111111101010110111100001000000001001111000100001000111011110001100011110100111100100001001101001111001010010100111011110011000101000010111100111001000100101111010000001011110011110100100001000000111101001111100111101111010101101101100011110101110111101010111101100100110110001111011010111001111011110111001001000000111101111000101110101111011111110001000011111000010100111110111110001011010001101111100100010010100011111001011011100010111110011100011110001111101000011110011011111010011100101110111110101100010100001111101100010100101011111011011000011110111110111010110010101111101111110101001011111100001110110000111111000111111010101111110010111111101011111100111111100110111111010011101010001111110101110100011011111101101010111010111111011110000010101111111000010011000011111110010000110000111111100111000010101111111010011011101011111110110001000100111111101110101010001111111100001110010011111111001011111000111111110100111001001111111101101010101011111111100001001000111111111001110000001111111110110000111011111111110000110110111111111101001110001111111111100001000011111111111011000010111111111111010011001111111111111011000011111111111111101010111111111111111111101111111111111110101011111111111110110000111111111111010011001111111111101100001011111111111000010000111111111101001110001111111111000011011011111111101100001110111111111001110000001111111110000100100011111111011010101010111111110100111001001111111100101111100011111111000011100100111111101110101010001111111011000100010011111110100110111010111111100111000010101111111001000011000011111110000100110000111111011110000010101111110110101011101011111101011101000110111111010011101010001111110011111110011011111100101111111010111111000111111010101111110000111011000011111011111101010010111110111010110010101111101101100001111011111011000101001010111110101100010100001111101001110010111011111010000111100110111110011100011110001111100101101110001011111001000100101000111110001011010001101111100001010011111011110111111100010000111101111000101110101111011100100100000011110110101110011110111101100100110110001111010111011110101011110101011011011000111101001111100111101111010010000100000011110100000010111100111100111001000100101111001100010100001011110010100101001110111100100001001101001111000110001111010011110001000010001110111100001000000001001110111111110101011011101111011010000010111011101101100010001110111001000110101011101101101100101000111011010001110000001110110010000011010011101011111010000100111010110100101011101110101010101011011011101010000010011000111010010110010110001110100010111111001011101000000101101000111001110110101111001110011010111110101011100110000011110110111001010101110111101110010010101010010011100011111101000110111000110011110001001110001010000010000011100001110001011000111000010000011011101110000001000110000011011111100000110000110111101011110111101101110111110110101011011101001011010100110111000110000110101101101110010100000011011010110001000100110110011111001001001101100100011110010011011000010010000100110101110111000000001101011010010101110011010101101110011000110101001101101100101101001111111010101011010011000110000010110100100011001110101101000101001101001011010000011001001010110011110111101000001100111010001101100011001101100111101110110011001010111001101100101110111011111011001010110001110110110010011101000100001100100011011000101011000111110111100100110001101110001000101100010111100011111011000100111000111110110000111110000111101100001011011110001011000001110110000110110000001101000011001011111111000111010010111110101111000000101111011010111011101011110010011111111010111011100011110010101110100111110010001011100101101000001010111000010100100000101101110011101000001011011000100000011010110101000001001110101100111110011110101011001011001000110010110001101010000000101100001000010110101010111101100001100010101110001110111100101011010001010001101010101111101011010010101010110000000110101010011001010000001010100001100101111010100111001101100100101001100000010100001010010011010010001010100011100111011010101000100110011110001010000100101111111010011111111101101100100111101011110000001001110101111111110010011100010000100000100110110000001011001001100111000001111010011000011111111010100101110011110000001001010111110110110010010100101100000010100100110110100000101001001000011110101010010000110100111100100011111000011110001000111000111001110010001100111010101100100010111001101001101000101001001000101010001000111101011000100001111010000100101000011001001011100010000100111101001000100000111001110000101000001001000010101010000000111001111110011111111000101111000111111000101110100001111100110100000000011110110111000001100111101000001111100001111000101011010110011101110100101000100111010111100101110001110100100000000100011100110001100110100111000110110001111001110000010010010010011011101101111100100110110101110100010001101100000010000010011010101001101100100110100100101101000001100111101111011110011001100100110111000110010011011100101001100011011010101000011000011111011110000110000010000011100001011111000011101010010111011001100011000101110000100010000001011010101010100110010110010011000111100101011110111000101001010110001111100110010101001100001101100101001101000111100001010001110010101110010100000100110101100100111011001111010001001101010100000100010010111101000010000100101001010000000001001000110011101110010001110100110100000100010111001010100001000100010001110100010000101100001101100100000100111110111000111111101110011100001111100011001111100011110010101101100000111011001001101010001110011001111100100011100000010111000000110110100011100110001101010000010101000011001101111011101000110001111100010110001100000110011011000010111011011011101000101101010100000010001010111100010000100010101000110111110000101000101010101110001001110001110111000010010110010000001000100100000000100010001000100111001111100010000011100101010000011111010101100100000111011100011100000001110000110111100000011010101001111100000110010001011110100001011110000111011000010101111101101100000101000110011000000001001011010101001000010001010001000000000011111011001011000000111000100001010000001100100011111100000010101111111000000000100101101100010000000111110110100100000001100100100001100000010010110110010000000011001001000100000000011001001000100000000000000000000; // (isignal)
  initial
    memory = 20480'b11111111001101101111111111100110110111101111110110100100111011111100110110111101111111000001001011101111101101001001111011111010100000010000111110011011100000101111100011101111011011111000001001101010111101110101111000001111011010010101011111110101110011010000111101010000010010101111010000111100010111110011011101000011111100101010110000101111000111100100010011110001000111001000111100000101010011101110111110001101011011101110110001100001111011011111111011111110110100110111111111101100011100010010111010111010101010011110101011100100001011101010000111011111111010010101011111111110100010010010001111100111110011001010111001110000011101011110011001000010001111100101011111010110111001001011100011011110001111110100100011100011001100000111111000100110110010111110000110101001010011100000111001100001111000000010001100101101111101100000100111011110100111100101110111011101110001101101110100011010110011011100010110011000110110111001100010011101101011011000000011011010000101111100110110010101011111101101100010011000011011010111110110010101110101110001101010011101011001011100010011010101100111100101110101001110000011011101010000100011101111010011011001110001110100101010101011011101000111101111000011010001001100111010110100000111100010111100111110111110010011001111000001000100110011100100101011001100110110010001101111001100110110010010110011000010000100011100101101101001100011001010101100100111110010011111101111111100100101000101111011001000100100000111110001111101101101111100011100100111000111000110011100110011110001011011111111101100010100001101001011000100010110101111110000111010100101011100001011111000010011000010010001111101110000011001100000001100000011101000110011000000001110100010101111111000110000011011111011011110101110111110001100011111101111011000010111001011110011011010010010111100001011110111101110111000010101001011101011011011101110111010001100101101101110011000101010101011100011100011001010111000001111000100101101111001011000101011011011110000101110110110010010111111101101011010011111111011010100000100101010110100011000100000101100111100000000111011001100011111000110110010011111101010101100011101111100001011000101000000001010110000101000100000101100000000010010101010111101101000000110101110110011000100101011100011000100111010110110010110111110101100111111011000101011000110010011101010101111001101000110101011001101100000101010101001111111011010101000001010011010101001011101011101101010001110001000101010100001001111010010100111101111010011101001110010110000001010011010011011101010100110000011000011101001010111110110011010010011101111110110100100011000110000101000111101011100001010001101001011111110100010110000011100101000100011100001111010000110110000000110100001001010001001101000001010001000001010000000011100011010011111100101111010100111110001001111011001111010010000111110011110000011110001100111011000111000011001110100001110000110011100100011101111100111000001000011101001101110010011101110011011000101111000100110101001110001011001101000100010000110011001101010001101100110010011000010011001100010111001010010011000010000110000100101111100110110111001011101011001011110010110111001100011100101100111001111111001011000000010101110010101100100100111100101010010001101001001010010110101001010010100010010000000100100111101101111101001001101110000111010010011000001101110100100101001110111101001001000110110000010010001110011110011100100010110100101101001000100000100101110010000101000010001100100000011111010001000111111011101000010001111011111001001100011110001110101001000111010111111000010001110011000011110100011100000010111011000110110101010111010001101010100010001100011001111100001011000110010100000101110001100010010100010100010111111010011001000101110100000011110001011010011010100100010101111101101001000101010101010010110001010010110101001100010100000101111101000100110111110011010001001011100100000100010010010011011001000100011011100101110001000100100111100100010000100101111111000100000000101010110000111101111111110100001110111101110011000011100111000011010000110111101100110100001101011010110011000011001110101111110000110001101110111100001011111101000101000010110111110000010000101100000110001100001010100100101001000010100010000101110000100110110010100100001001010001100011000010001101110000010000100001110100011100001000000011110001000001111010110000110000011101001011101100000110111011011001000001101001000111110000011000111000100100000101111000011011000001011000110100110000010100111011000100000100111010110111000001001001111000110000010001010011011100000100000010101111000000111100010100010000001110000001011100000011010000000111000000110000000110110000001011000101100100000010100010111011000000100101010001110000001000011111011100000001111011010001000000011011110100010000000110001111011100000001011001000111000000010011101111010000000100010101100100000000111100011101000000001101000010010000000010110001110100000000100101010111000000000111101110010000000001100100000100000000010011110011000000000011110010110000000000101100100100000000000111110001000000000001001111110000000000001011010100000000000001010001000000000000000101110000000000000000001100000000000000010111000000000000010100010000000000001011010100000000000100111111000000000001111100010000000000101100100100000000001111001011000000000100111100110000000001100100000100000000011110111001000000001001010101110000000010110001110100000000110100001001000000001111000111010000000100010101100100000001001110111101000000010110010001110000000110001111011100000001101111010001000000011110110100010000001000011111011100000010010101000111000000101000101110110000001011000101100100000011000000011011000000110100000001110000001110000001011100000011110001010001000001000000101011110000010001010011011100000100100111100011000001001110101101110000010100111011000100000101100011010011000001011110000110110000011000111000100100000110100100011111000001101110110110010000011101001011101100000111101011000011000010000000111100010000100001110100011100001000110111000001000010010100011000110000100110110010100100001010001000010111000010101001001010010000101100000110001100001011011111000001000010111111010001010000110001101110111100001100111010111111000011010110101100110000110111101100110100001110011100001101000011101111011100110000111101111111110100010000000010101011000100001001011111110001000100100111100100010001101110010111000100100100110110010001001011100100000100010011011111001101000101000001011111010001010010110101001100010101010101001011000101011111011010010001011010011010100100010111010000001111000101111110100110010001100010010100010100011001010000010111000110011111000010110001101010100010001100011011010101011101000111000000101110110001110011000011110100011101011111100001000111100011101010010001111011111001001100011111101110100001001000000111110100010010000101000010001100100010000010010111001000101101001011010010001110011110011100100100011011000001001001010011101111010010011000001101110100100110111000011101001001111011011111010010100010010000000100101001011010100101001010100100011010010010101100100100111100101100000001010111001011001110011111110010110111001100011100101110101100101111001011111001101101110011000010000110000100110001011100101001001100100110000100110011001101010001101100110100010001000011001101010011100010110011011000101111000100110111001001110111001110000010000111010011100100011101111100111010000111000011001110110001110000110011110000011110001100111101001000011111001111100010011110110011111100101111010101000000001110001101010000010100010000010100001001010001001101000011011000000011010001000111000011110100010110000011100101000110100101111111010001111010111000010100100011000110000101001001110111111011010010101111101100110100110000011000011101001101001101110101010011100101100000010100111101111010011101010000100111101001010100011100010001010101001011101011101101010100000101001101010101010011111110110101011001101100000101010111100110100011010110001100100111010101100111111011000101011011001011011111010111000110001001110101110110011000100101011110110100000011011000000000100101010110000101000100000101100010100000000101011000111011111000010110010011111101010101100110001111100011011001111000000001110110100011000100000101101010000010010101011010110100111111110110110010010111111101101101111000010111011011110010110001010111000001111000100101110001110001100101011100110001010101010111010001100101101101110101101101110111011101110000101010010111100001011110111101111001101101001001011110110000101110010111110001100011111101111101101111010111011111110001100000111000000001110100010110000001110100011001100000110011000000011000010010001111101110000101111100001001100001110101001010111000100010110101111110001010000110100101100010110111111111011000110011100110011110001110010011100011100011111011011011111001000100100000111110010010100010111101100100111111011111111001010101100100111110010110110100110001100110000100001000111001100110110010010110011011001000110111100111001001010110011001111000001000100110011111011111001001101000001111000101111010001001100111010110100011110111100001101001010101010110111010011011001110001110101000010001110111101010011100000110111010101100111100101110101100101110001001101011100011010100111010111110110010101110110001001100001101101100101010111111011011010000101111100110110101101100000001101101110011000100111011100010110011000110111010001101011001101110111011100011011011110100111100101110111110110000010011110000000100011001011100000111001100001111000011010100101001110001001101100101111100011001100000111111000111111010010001110010010111000110111100101011111010110111001100100001000111110011100000111010111100111110011001010111010001001001000111110100101010111111111101010000111011111111010101110010000101110101110101010100111101100011100010010111011010011011111111110110111111110111111101110110001100001111011111000110101101111000001010100111011110001000111001000111100011110010001001111001010101100001011110011011101000011111101000011110001011111010100000100101011110101110011010000111101101001010101111111011101011110000011111000001001101010111110001110111101101111100110111000001011111010100000010000111110110100100111101111110000010010111011111100110110111101111111011010010011101111111001101101111011111111001101101111000000000000000000000000000011001001000100000001100100100010000000100101101100100000001100100100001100000011111011010010000001001011011000100000010101111111000000000110010001111110000001110001000010100000011111011001011000001000101000100000000010010110101010010000101000110011000000001010111110110110000010111100001110110000110010001011110100001101010100111110000011100001101111000000111011100011100000001111101010110010000100000111001010100001000100111001111100010010000000010001000100101100100000010001001110001110111000010100010101010111000101010001101111100001010111100010000100010110101010000001000101110110110111010001100000110011011000011000111110001011000110011011110111010001101010000010101000011011010001110011000111000000101110000001110011001111100100011101100100110101000111100101011011000001111100011001111100011111110111001110001000001001111101110010000101100001101100100010001000111010001000101110010101000010001110100110100000100100011001110111001001010010100000000010010111101000010000100110101010000010001001110110011110100010100000100110101100101000111001010111001010011010001111000010101001100001101100101011000111110011001010111101110001010010110010011000111100101101010101010011001011100001000100000010111011001100011000101111100001110101001100000100000111000011000011111011110000110001101101010100001100100110111001010011001100100110111000110011110111101111001101001001011010000011010101001101100100110110000001000001001101101011101000100011011101101111100100111000001001001001001110001101100011110011100110001100110100111010010000000010001110101111001011100011101110100101000100111100010101101011001111010000011111000011110110111000001100111110011010000000001111110001011101000011111111000101111001000000011100111111010000010010000101010100000111001110000101000010011110100100010000110010010111000100001111010000100101000100011110101100010001010010010001010100010111001101001101000110011101010110010001110001110011100100011111000011110001001000011010011110010010010000111101010100100110110100000101001010010110000001010010101111101101100100101110011110000001001100001111111101010011001110000011110100110110000001011001001110001000010000010011101011111111100100111101011110000001001111111110110110010100001001011111110101000100110011110001010001110011101101010100100110100100010101001100000010100001010011100110110010010101000011001011110101010011001010000001010101011000000011010101011111010110100101011010001010001101010111000111011110010101111011000011000101100001000010110101011000110101000000010110010110010001100101100111110011110101011010100000100111010110110001000000110101101110011101000001011100001010010000010111001011010000010101110100111110010001011101110001111001010111100100111111110101111011010111011101011111010111100000010111111110001110100110000001101000011001100000111011000011011000010110111100010110000111110000111101100010011100011111011000101111000111110110001101110001000101100011111011110010011001000110110001010110010011101000100001100101011000111011011001011101110111110110011001010111001101100110110011110111011001110100011011000110011110111101000001101000001100100101011010001010011010010110100100011001110101101001100011000001011010011111110101010110101001101101100101101010110111001100011010110100101011100110101110111000000001101100001001000010011011001000111100100110110011111001001001101101011000100010011011011100101000000110111000110000110101101110100101101010011011101111101101010110111101011110111101101111110000011000011100000010001100000111000010000011011101110000111000101100011100010100000100000111000110011110001001110001111110100011011100100101010100100111001010101110111101110011000001111011011100110101111101010111001110110101111001110100000010110100011101000101111110010111010010110010110001110101000001001100011101010101010110110111010110100101011101110101111101000010011101100100000110100111011010001110000001110110110110010100011101110010001101010111011101101100010001110111101101000001011101111111101010110111100001000000001001111000100001000111011110001100011110100111100100001001101001111001010010100111011110011000101000010111100111001000100101111010000001011110011110100100001000000111101001111100111101111010101101101100011110101110111101010111101100100110110001111011010111001111011110111001001000000111101111000101110101111011111110001000011111000010100111110111110001011010001101111100100010010100011111001011011100010111110011100011110001111101000011110011011111010011100101110111110101100010100001111101100010100101011111011011000011110111110111010110010101111101111110101001011111100001110110000111111000111111010101111110010111111101011111100111111100110111111010011101010001111110101110100011011111101101010111010111111011110000010101111111000010011000011111110010000110000111111100111000010101111111010011011101011111110110001000100111111101110101010001111111100001110010011111111001011111000111111110100111001001111111101101010101011111111100001001000111111111001110000001111111110110000111011111111110000110110111111111101001110001111111111100001000011111111111011000010111111111111010011001111111111111011000011111111111111101010111111111111111111101111111111111110101011111111111110110000111111111111010011001111111111101100001011111111111000010000111111111101001110001111111111000011011011111111101100001110111111111001110000001111111110000100100011111111011010101010111111110100111001001111111100101111100011111111000011100100111111101110101010001111111011000100010011111110100110111010111111100111000010101111111001000011000011111110000100110000111111011110000010101111110110101011101011111101011101000110111111010011101010001111110011111110011011111100101111111010111111000111111010101111110000111011000011111011111101010010111110111010110010101111101101100001111011111011000101001010111110101100010100001111101001110010111011111010000111100110111110011100011110001111100101101110001011111001000100101000111110001011010001101111100001010011111011110111111100010000111101111000101110101111011100100100000011110110101110011110111101100100110110001111010111011110101011110101011011011000111101001111100111101111010010000100000011110100000010111100111100111001000100101111001100010100001011110010100101001110111100100001001101001111000110001111010011110001000010001110111100001000000001001110111111110101011011101111011010000010111011101101100010001110111001000110101011101101101100101000111011010001110000001110110010000011010011101011111010000100111010110100101011101110101010101011011011101010000010011000111010010110010110001110100010111111001011101000000101101000111001110110101111001110011010111110101011100110000011110110111001010101110111101110010010101010010011100011111101000110111000110011110001001110001010000010000011100001110001011000111000010000011011101110000001000110000011011111100000110000110111101011110111101101110111110110101011011101001011010100110111000110000110101101101110010100000011011010110001000100110110011111001001001101100100011110010011011000010010000100110101110111000000001101011010010101110011010101101110011000110101001101101100101101001111111010101011010011000110000010110100100011001110101101000101001101001011010000011001001010110011110111101000001100111010001101100011001101100111101110110011001010111001101100101110111011111011001010110001110110110010011101000100001100100011011000101011000111110111100100110001101110001000101100010111100011111011000100111000111110110000111110000111101100001011011110001011000001110110000110110000001101000011001011111111000111010010111110101111000000101111011010111011101011110010011111111010111011100011110010101110100111110010001011100101101000001010111000010100100000101101110011101000001011011000100000011010110101000001001110101100111110011110101011001011001000110010110001101010000000101100001000010110101010111101100001100010101110001110111100101011010001010001101010101111101011010010101010110000000110101010011001010000001010100001100101111010100111001101100100101001100000010100001010010011010010001010100011100111011010101000100110011110001010000100101111111010011111111101101100100111101011110000001001110101111111110010011100010000100000100110110000001011001001100111000001111010011000011111111010100101110011110000001001010111110110110010010100101100000010100100110110100000101001001000011110101010010000110100111100100011111000011110001000111000111001110010001100111010101100100010111001101001101000101001001000101010001000111101011000100001111010000100101000011001001011100010000100111101001000100000111001110000101000001001000010101010000000111001111110011111111000101111000111111000101110100001111100110100000000011110110111000001100111101000001111100001111000101011010110011101110100101000100111010111100101110001110100100000000100011100110001100110100111000110110001111001110000010010010010011011101101111100100110110101110100010001101100000010000010011010101001101100100110100100101101000001100111101111011110011001100100110111000110010011011100101001100011011010101000011000011111011110000110000010000011100001011111000011101010010111011001100011000101110000100010000001011010101010100110010110010011000111100101011110111000101001010110001111100110010101001100001101100101001101000111100001010001110010101110010100000100110101100100111011001111010001001101010100000100010010111101000010000100101001010000000001001000110011101110010001110100110100000100010111001010100001000100010001110100010000101100001101100100000100111110111000111111101110011100001111100011001111100011110010101101100000111011001001101010001110011001111100100011100000010111000000110110100011100110001101010000010101000011001101111011101000110001111100010110001100000110011011000010111011011011101000101101010100000010001010111100010000100010101000110111110000101000101010101110001001110001110111000010010110010000001000100100000000100010001000100111001111100010000011100101010000011111010101100100000111011100011100000001110000110111100000011010101001111100000110010001011110100001011110000111011000010101111101101100000101000110011000000001001011010101001000010001010001000000000011111011001011000000111000100001010000001100100011111100000010101111111000000000100101101100010000000111110110100100000001100100100001100000010010110110010000000011001001000100000000011001001000100000000000000000000;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\bram_dp_sin_lut.vhdl:1063:28 */
  reg [19:0] n194[1023:0] ; // memory
  initial begin
    n194[1023] = 20'b11111111001101101111;
    n194[1022] = 20'b11111110011011011110;
    n194[1021] = 20'b11111101101001001110;
    n194[1020] = 20'b11111100110110111101;
    n194[1019] = 20'b11111100000100101110;
    n194[1018] = 20'b11111011010010011110;
    n194[1017] = 20'b11111010100000010000;
    n194[1016] = 20'b11111001101110000010;
    n194[1015] = 20'b11111000111011110110;
    n194[1014] = 20'b11111000001001101010;
    n194[1013] = 20'b11110111010111100000;
    n194[1012] = 20'b11110110100101010111;
    n194[1011] = 20'b11110101110011010000;
    n194[1010] = 20'b11110101000001001010;
    n194[1009] = 20'b11110100001111000101;
    n194[1008] = 20'b11110011011101000011;
    n194[1007] = 20'b11110010101011000010;
    n194[1006] = 20'b11110001111001000100;
    n194[1005] = 20'b11110001000111001000;
    n194[1004] = 20'b11110000010101001110;
    n194[1003] = 20'b11101111100011010110;
    n194[1002] = 20'b11101110110001100001;
    n194[1001] = 20'b11101101111111101111;
    n194[1000] = 20'b11101101001101111111;
    n194[999] = 20'b11101100011100010010;
    n194[998] = 20'b11101011101010101001;
    n194[997] = 20'b11101010111001000010;
    n194[996] = 20'b11101010000111011111;
    n194[995] = 20'b11101001010101111111;
    n194[994] = 20'b11101000100100100011;
    n194[993] = 20'b11100111110011001010;
    n194[992] = 20'b11100111000001110101;
    n194[991] = 20'b11100110010000100011;
    n194[990] = 20'b11100101011111010110;
    n194[989] = 20'b11100100101110001101;
    n194[988] = 20'b11100011111101001000;
    n194[987] = 20'b11100011001100000111;
    n194[986] = 20'b11100010011011001011;
    n194[985] = 20'b11100001101010010100;
    n194[984] = 20'b11100000111001100001;
    n194[983] = 20'b11100000001000110010;
    n194[982] = 20'b11011111011000001001;
    n194[981] = 20'b11011110100111100101;
    n194[980] = 20'b11011101110111000110;
    n194[979] = 20'b11011101000110101100;
    n194[978] = 20'b11011100010110011000;
    n194[977] = 20'b11011011100110001001;
    n194[976] = 20'b11011010110110000000;
    n194[975] = 20'b11011010000101111100;
    n194[974] = 20'b11011001010101111110;
    n194[973] = 20'b11011000100110000110;
    n194[972] = 20'b11010111110110010101;
    n194[971] = 20'b11010111000110101001;
    n194[970] = 20'b11010110010111000100;
    n194[969] = 20'b11010101100111100101;
    n194[968] = 20'b11010100111000001101;
    n194[967] = 20'b11010100001000111011;
    n194[966] = 20'b11010011011001110001;
    n194[965] = 20'b11010010101010101101;
    n194[964] = 20'b11010001111011110000;
    n194[963] = 20'b11010001001100111010;
    n194[962] = 20'b11010000011110001011;
    n194[961] = 20'b11001111101111100100;
    n194[960] = 20'b11001111000001000100;
    n194[959] = 20'b11001110010010101100;
    n194[958] = 20'b11001101100100011011;
    n194[957] = 20'b11001100110110010010;
    n194[956] = 20'b11001100001000010001;
    n194[955] = 20'b11001011011010011000;
    n194[954] = 20'b11001010101100100111;
    n194[953] = 20'b11001001111110111111;
    n194[952] = 20'b11001001010001011110;
    n194[951] = 20'b11001000100100000111;
    n194[950] = 20'b11000111110110110111;
    n194[949] = 20'b11000111001001110001;
    n194[948] = 20'b11000110011100110011;
    n194[947] = 20'b11000101101111111110;
    n194[946] = 20'b11000101000011010010;
    n194[945] = 20'b11000100010110101111;
    n194[944] = 20'b11000011101010010101;
    n194[943] = 20'b11000010111110000100;
    n194[942] = 20'b11000010010001111101;
    n194[941] = 20'b11000001100110000000;
    n194[940] = 20'b11000000111010001100;
    n194[939] = 20'b11000000001110100010;
    n194[938] = 20'b10111111100011000001;
    n194[937] = 20'b10111110110111101011;
    n194[936] = 20'b10111110001100011111;
    n194[935] = 20'b10111101100001011100;
    n194[934] = 20'b10111100110110100100;
    n194[933] = 20'b10111100001011110111;
    n194[932] = 20'b10111011100001010100;
    n194[931] = 20'b10111010110110111011;
    n194[930] = 20'b10111010001100101101;
    n194[929] = 20'b10111001100010101010;
    n194[928] = 20'b10111000111000110010;
    n194[927] = 20'b10111000001111000100;
    n194[926] = 20'b10110111100101100010;
    n194[925] = 20'b10110110111100001011;
    n194[924] = 20'b10110110010010111111;
    n194[923] = 20'b10110101101001111111;
    n194[922] = 20'b10110101000001001010;
    n194[921] = 20'b10110100011000100000;
    n194[920] = 20'b10110011110000000011;
    n194[919] = 20'b10110011000111110001;
    n194[918] = 20'b10110010011111101010;
    n194[917] = 20'b10110001110111110000;
    n194[916] = 20'b10110001010000000010;
    n194[915] = 20'b10110000101000100000;
    n194[914] = 20'b10110000000001001010;
    n194[913] = 20'b10101111011010000001;
    n194[912] = 20'b10101110110011000100;
    n194[911] = 20'b10101110001100010011;
    n194[910] = 20'b10101101100101101111;
    n194[909] = 20'b10101100111111011000;
    n194[908] = 20'b10101100011001001110;
    n194[907] = 20'b10101011110011010001;
    n194[906] = 20'b10101011001101100000;
    n194[905] = 20'b10101010100111111101;
    n194[904] = 20'b10101010000010100110;
    n194[903] = 20'b10101001011101011101;
    n194[902] = 20'b10101000111000100010;
    n194[901] = 20'b10101000010011110100;
    n194[900] = 20'b10100111101111010011;
    n194[899] = 20'b10100111001011000000;
    n194[898] = 20'b10100110100110111010;
    n194[897] = 20'b10100110000011000011;
    n194[896] = 20'b10100101011111011001;
    n194[895] = 20'b10100100111011111101;
    n194[894] = 20'b10100100011000110000;
    n194[893] = 20'b10100011110101110000;
    n194[892] = 20'b10100011010010111111;
    n194[891] = 20'b10100010110000011100;
    n194[890] = 20'b10100010001110000111;
    n194[889] = 20'b10100001101100000001;
    n194[888] = 20'b10100001001010001001;
    n194[887] = 20'b10100000101000100000;
    n194[886] = 20'b10100000000111000110;
    n194[885] = 20'b10011111100101111010;
    n194[884] = 20'b10011111000100111101;
    n194[883] = 20'b10011110100100001111;
    n194[882] = 20'b10011110000011110001;
    n194[881] = 20'b10011101100011100001;
    n194[880] = 20'b10011101000011100001;
    n194[879] = 20'b10011100100011101111;
    n194[878] = 20'b10011100000100001110;
    n194[877] = 20'b10011011100100111011;
    n194[876] = 20'b10011011000101111000;
    n194[875] = 20'b10011010100111000101;
    n194[874] = 20'b10011010001000100001;
    n194[873] = 20'b10011001101010001101;
    n194[872] = 20'b10011001001100001001;
    n194[871] = 20'b10011000101110010100;
    n194[870] = 20'b10011000010000110000;
    n194[869] = 20'b10010111110011011011;
    n194[868] = 20'b10010111010110010111;
    n194[867] = 20'b10010110111001100011;
    n194[866] = 20'b10010110011100111111;
    n194[865] = 20'b10010110000000101011;
    n194[864] = 20'b10010101100100100111;
    n194[863] = 20'b10010101001000110100;
    n194[862] = 20'b10010100101101010010;
    n194[861] = 20'b10010100010010000000;
    n194[860] = 20'b10010011110110111110;
    n194[859] = 20'b10010011011100001110;
    n194[858] = 20'b10010011000001101110;
    n194[857] = 20'b10010010100111011110;
    n194[856] = 20'b10010010001101100000;
    n194[855] = 20'b10010001110011110011;
    n194[854] = 20'b10010001011010010110;
    n194[853] = 20'b10010001000001001011;
    n194[852] = 20'b10010000101000010001;
    n194[851] = 20'b10010000001111101000;
    n194[850] = 20'b10001111110111010000;
    n194[849] = 20'b10001111011111001001;
    n194[848] = 20'b10001111000111010100;
    n194[847] = 20'b10001110101111110000;
    n194[846] = 20'b10001110011000011110;
    n194[845] = 20'b10001110000001011101;
    n194[844] = 20'b10001101101010101110;
    n194[843] = 20'b10001101010100010001;
    n194[842] = 20'b10001100111110000101;
    n194[841] = 20'b10001100101000001011;
    n194[840] = 20'b10001100010010100010;
    n194[839] = 20'b10001011111101001100;
    n194[838] = 20'b10001011101000000111;
    n194[837] = 20'b10001011010011010100;
    n194[836] = 20'b10001010111110110100;
    n194[835] = 20'b10001010101010100101;
    n194[834] = 20'b10001010010110101001;
    n194[833] = 20'b10001010000010111110;
    n194[832] = 20'b10001001101111100110;
    n194[831] = 20'b10001001011100100000;
    n194[830] = 20'b10001001001001101100;
    n194[829] = 20'b10001000110111001011;
    n194[828] = 20'b10001000100100111100;
    n194[827] = 20'b10001000010010111111;
    n194[826] = 20'b10001000000001010101;
    n194[825] = 20'b10000111101111111110;
    n194[824] = 20'b10000111011110111001;
    n194[823] = 20'b10000111001110000110;
    n194[822] = 20'b10000110111101100110;
    n194[821] = 20'b10000110101101011001;
    n194[820] = 20'b10000110011101011111;
    n194[819] = 20'b10000110001101110111;
    n194[818] = 20'b10000101111110100010;
    n194[817] = 20'b10000101101111100000;
    n194[816] = 20'b10000101100000110001;
    n194[815] = 20'b10000101010010010100;
    n194[814] = 20'b10000101000100001011;
    n194[813] = 20'b10000100110110010100;
    n194[812] = 20'b10000100101000110001;
    n194[811] = 20'b10000100011011100000;
    n194[810] = 20'b10000100001110100011;
    n194[809] = 20'b10000100000001111000;
    n194[808] = 20'b10000011110101100001;
    n194[807] = 20'b10000011101001011101;
    n194[806] = 20'b10000011011101101100;
    n194[805] = 20'b10000011010010001111;
    n194[804] = 20'b10000011000111000100;
    n194[803] = 20'b10000010111100001101;
    n194[802] = 20'b10000010110001101001;
    n194[801] = 20'b10000010100111011000;
    n194[800] = 20'b10000010011101011011;
    n194[799] = 20'b10000010010011110001;
    n194[798] = 20'b10000010001010011011;
    n194[797] = 20'b10000010000001010111;
    n194[796] = 20'b10000001111000101000;
    n194[795] = 20'b10000001110000001011;
    n194[794] = 20'b10000001101000000011;
    n194[793] = 20'b10000001100000001101;
    n194[792] = 20'b10000001011000101100;
    n194[791] = 20'b10000001010001011101;
    n194[790] = 20'b10000001001010100011;
    n194[789] = 20'b10000001000011111011;
    n194[788] = 20'b10000000111101101000;
    n194[787] = 20'b10000000110111101000;
    n194[786] = 20'b10000000110001111011;
    n194[785] = 20'b10000000101100100011;
    n194[784] = 20'b10000000100111011110;
    n194[783] = 20'b10000000100010101100;
    n194[782] = 20'b10000000011110001110;
    n194[781] = 20'b10000000011010000100;
    n194[780] = 20'b10000000010110001110;
    n194[779] = 20'b10000000010010101011;
    n194[778] = 20'b10000000001111011100;
    n194[777] = 20'b10000000001100100000;
    n194[776] = 20'b10000000001001111001;
    n194[775] = 20'b10000000000111100101;
    n194[774] = 20'b10000000000101100100;
    n194[773] = 20'b10000000000011111000;
    n194[772] = 20'b10000000000010011111;
    n194[771] = 20'b10000000000001011010;
    n194[770] = 20'b10000000000000101000;
    n194[769] = 20'b10000000000000001011;
    n194[768] = 20'b10000000000000000001;
    n194[767] = 20'b10000000000000001011;
    n194[766] = 20'b10000000000000101000;
    n194[765] = 20'b10000000000001011010;
    n194[764] = 20'b10000000000010011111;
    n194[763] = 20'b10000000000011111000;
    n194[762] = 20'b10000000000101100100;
    n194[761] = 20'b10000000000111100101;
    n194[760] = 20'b10000000001001111001;
    n194[759] = 20'b10000000001100100000;
    n194[758] = 20'b10000000001111011100;
    n194[757] = 20'b10000000010010101011;
    n194[756] = 20'b10000000010110001110;
    n194[755] = 20'b10000000011010000100;
    n194[754] = 20'b10000000011110001110;
    n194[753] = 20'b10000000100010101100;
    n194[752] = 20'b10000000100111011110;
    n194[751] = 20'b10000000101100100011;
    n194[750] = 20'b10000000110001111011;
    n194[749] = 20'b10000000110111101000;
    n194[748] = 20'b10000000111101101000;
    n194[747] = 20'b10000001000011111011;
    n194[746] = 20'b10000001001010100011;
    n194[745] = 20'b10000001010001011101;
    n194[744] = 20'b10000001011000101100;
    n194[743] = 20'b10000001100000001101;
    n194[742] = 20'b10000001101000000011;
    n194[741] = 20'b10000001110000001011;
    n194[740] = 20'b10000001111000101000;
    n194[739] = 20'b10000010000001010111;
    n194[738] = 20'b10000010001010011011;
    n194[737] = 20'b10000010010011110001;
    n194[736] = 20'b10000010011101011011;
    n194[735] = 20'b10000010100111011000;
    n194[734] = 20'b10000010110001101001;
    n194[733] = 20'b10000010111100001101;
    n194[732] = 20'b10000011000111000100;
    n194[731] = 20'b10000011010010001111;
    n194[730] = 20'b10000011011101101100;
    n194[729] = 20'b10000011101001011101;
    n194[728] = 20'b10000011110101100001;
    n194[727] = 20'b10000100000001111000;
    n194[726] = 20'b10000100001110100011;
    n194[725] = 20'b10000100011011100000;
    n194[724] = 20'b10000100101000110001;
    n194[723] = 20'b10000100110110010100;
    n194[722] = 20'b10000101000100001011;
    n194[721] = 20'b10000101010010010100;
    n194[720] = 20'b10000101100000110001;
    n194[719] = 20'b10000101101111100000;
    n194[718] = 20'b10000101111110100010;
    n194[717] = 20'b10000110001101110111;
    n194[716] = 20'b10000110011101011111;
    n194[715] = 20'b10000110101101011001;
    n194[714] = 20'b10000110111101100110;
    n194[713] = 20'b10000111001110000110;
    n194[712] = 20'b10000111011110111001;
    n194[711] = 20'b10000111101111111110;
    n194[710] = 20'b10001000000001010101;
    n194[709] = 20'b10001000010010111111;
    n194[708] = 20'b10001000100100111100;
    n194[707] = 20'b10001000110111001011;
    n194[706] = 20'b10001001001001101100;
    n194[705] = 20'b10001001011100100000;
    n194[704] = 20'b10001001101111100110;
    n194[703] = 20'b10001010000010111110;
    n194[702] = 20'b10001010010110101001;
    n194[701] = 20'b10001010101010100101;
    n194[700] = 20'b10001010111110110100;
    n194[699] = 20'b10001011010011010100;
    n194[698] = 20'b10001011101000000111;
    n194[697] = 20'b10001011111101001100;
    n194[696] = 20'b10001100010010100010;
    n194[695] = 20'b10001100101000001011;
    n194[694] = 20'b10001100111110000101;
    n194[693] = 20'b10001101010100010001;
    n194[692] = 20'b10001101101010101110;
    n194[691] = 20'b10001110000001011101;
    n194[690] = 20'b10001110011000011110;
    n194[689] = 20'b10001110101111110000;
    n194[688] = 20'b10001111000111010100;
    n194[687] = 20'b10001111011111001001;
    n194[686] = 20'b10001111110111010000;
    n194[685] = 20'b10010000001111101000;
    n194[684] = 20'b10010000101000010001;
    n194[683] = 20'b10010001000001001011;
    n194[682] = 20'b10010001011010010110;
    n194[681] = 20'b10010001110011110011;
    n194[680] = 20'b10010010001101100000;
    n194[679] = 20'b10010010100111011110;
    n194[678] = 20'b10010011000001101110;
    n194[677] = 20'b10010011011100001110;
    n194[676] = 20'b10010011110110111110;
    n194[675] = 20'b10010100010010000000;
    n194[674] = 20'b10010100101101010010;
    n194[673] = 20'b10010101001000110100;
    n194[672] = 20'b10010101100100100111;
    n194[671] = 20'b10010110000000101011;
    n194[670] = 20'b10010110011100111111;
    n194[669] = 20'b10010110111001100011;
    n194[668] = 20'b10010111010110010111;
    n194[667] = 20'b10010111110011011011;
    n194[666] = 20'b10011000010000110000;
    n194[665] = 20'b10011000101110010100;
    n194[664] = 20'b10011001001100001001;
    n194[663] = 20'b10011001101010001101;
    n194[662] = 20'b10011010001000100001;
    n194[661] = 20'b10011010100111000101;
    n194[660] = 20'b10011011000101111000;
    n194[659] = 20'b10011011100100111011;
    n194[658] = 20'b10011100000100001110;
    n194[657] = 20'b10011100100011101111;
    n194[656] = 20'b10011101000011100001;
    n194[655] = 20'b10011101100011100001;
    n194[654] = 20'b10011110000011110001;
    n194[653] = 20'b10011110100100001111;
    n194[652] = 20'b10011111000100111101;
    n194[651] = 20'b10011111100101111010;
    n194[650] = 20'b10100000000111000110;
    n194[649] = 20'b10100000101000100000;
    n194[648] = 20'b10100001001010001001;
    n194[647] = 20'b10100001101100000001;
    n194[646] = 20'b10100010001110000111;
    n194[645] = 20'b10100010110000011100;
    n194[644] = 20'b10100011010010111111;
    n194[643] = 20'b10100011110101110000;
    n194[642] = 20'b10100100011000110000;
    n194[641] = 20'b10100100111011111101;
    n194[640] = 20'b10100101011111011001;
    n194[639] = 20'b10100110000011000011;
    n194[638] = 20'b10100110100110111010;
    n194[637] = 20'b10100111001011000000;
    n194[636] = 20'b10100111101111010011;
    n194[635] = 20'b10101000010011110100;
    n194[634] = 20'b10101000111000100010;
    n194[633] = 20'b10101001011101011101;
    n194[632] = 20'b10101010000010100110;
    n194[631] = 20'b10101010100111111101;
    n194[630] = 20'b10101011001101100000;
    n194[629] = 20'b10101011110011010001;
    n194[628] = 20'b10101100011001001110;
    n194[627] = 20'b10101100111111011000;
    n194[626] = 20'b10101101100101101111;
    n194[625] = 20'b10101110001100010011;
    n194[624] = 20'b10101110110011000100;
    n194[623] = 20'b10101111011010000001;
    n194[622] = 20'b10110000000001001010;
    n194[621] = 20'b10110000101000100000;
    n194[620] = 20'b10110001010000000010;
    n194[619] = 20'b10110001110111110000;
    n194[618] = 20'b10110010011111101010;
    n194[617] = 20'b10110011000111110001;
    n194[616] = 20'b10110011110000000011;
    n194[615] = 20'b10110100011000100000;
    n194[614] = 20'b10110101000001001010;
    n194[613] = 20'b10110101101001111111;
    n194[612] = 20'b10110110010010111111;
    n194[611] = 20'b10110110111100001011;
    n194[610] = 20'b10110111100101100010;
    n194[609] = 20'b10111000001111000100;
    n194[608] = 20'b10111000111000110010;
    n194[607] = 20'b10111001100010101010;
    n194[606] = 20'b10111010001100101101;
    n194[605] = 20'b10111010110110111011;
    n194[604] = 20'b10111011100001010100;
    n194[603] = 20'b10111100001011110111;
    n194[602] = 20'b10111100110110100100;
    n194[601] = 20'b10111101100001011100;
    n194[600] = 20'b10111110001100011111;
    n194[599] = 20'b10111110110111101011;
    n194[598] = 20'b10111111100011000001;
    n194[597] = 20'b11000000001110100010;
    n194[596] = 20'b11000000111010001100;
    n194[595] = 20'b11000001100110000000;
    n194[594] = 20'b11000010010001111101;
    n194[593] = 20'b11000010111110000100;
    n194[592] = 20'b11000011101010010101;
    n194[591] = 20'b11000100010110101111;
    n194[590] = 20'b11000101000011010010;
    n194[589] = 20'b11000101101111111110;
    n194[588] = 20'b11000110011100110011;
    n194[587] = 20'b11000111001001110001;
    n194[586] = 20'b11000111110110110111;
    n194[585] = 20'b11001000100100000111;
    n194[584] = 20'b11001001010001011110;
    n194[583] = 20'b11001001111110111111;
    n194[582] = 20'b11001010101100100111;
    n194[581] = 20'b11001011011010011000;
    n194[580] = 20'b11001100001000010001;
    n194[579] = 20'b11001100110110010010;
    n194[578] = 20'b11001101100100011011;
    n194[577] = 20'b11001110010010101100;
    n194[576] = 20'b11001111000001000100;
    n194[575] = 20'b11001111101111100100;
    n194[574] = 20'b11010000011110001011;
    n194[573] = 20'b11010001001100111010;
    n194[572] = 20'b11010001111011110000;
    n194[571] = 20'b11010010101010101101;
    n194[570] = 20'b11010011011001110001;
    n194[569] = 20'b11010100001000111011;
    n194[568] = 20'b11010100111000001101;
    n194[567] = 20'b11010101100111100101;
    n194[566] = 20'b11010110010111000100;
    n194[565] = 20'b11010111000110101001;
    n194[564] = 20'b11010111110110010101;
    n194[563] = 20'b11011000100110000110;
    n194[562] = 20'b11011001010101111110;
    n194[561] = 20'b11011010000101111100;
    n194[560] = 20'b11011010110110000000;
    n194[559] = 20'b11011011100110001001;
    n194[558] = 20'b11011100010110011000;
    n194[557] = 20'b11011101000110101100;
    n194[556] = 20'b11011101110111000110;
    n194[555] = 20'b11011110100111100101;
    n194[554] = 20'b11011111011000001001;
    n194[553] = 20'b11100000001000110010;
    n194[552] = 20'b11100000111001100001;
    n194[551] = 20'b11100001101010010100;
    n194[550] = 20'b11100010011011001011;
    n194[549] = 20'b11100011001100000111;
    n194[548] = 20'b11100011111101001000;
    n194[547] = 20'b11100100101110001101;
    n194[546] = 20'b11100101011111010110;
    n194[545] = 20'b11100110010000100011;
    n194[544] = 20'b11100111000001110101;
    n194[543] = 20'b11100111110011001010;
    n194[542] = 20'b11101000100100100011;
    n194[541] = 20'b11101001010101111111;
    n194[540] = 20'b11101010000111011111;
    n194[539] = 20'b11101010111001000010;
    n194[538] = 20'b11101011101010101001;
    n194[537] = 20'b11101100011100010010;
    n194[536] = 20'b11101101001101111111;
    n194[535] = 20'b11101101111111101111;
    n194[534] = 20'b11101110110001100001;
    n194[533] = 20'b11101111100011010110;
    n194[532] = 20'b11110000010101001110;
    n194[531] = 20'b11110001000111001000;
    n194[530] = 20'b11110001111001000100;
    n194[529] = 20'b11110010101011000010;
    n194[528] = 20'b11110011011101000011;
    n194[527] = 20'b11110100001111000101;
    n194[526] = 20'b11110101000001001010;
    n194[525] = 20'b11110101110011010000;
    n194[524] = 20'b11110110100101010111;
    n194[523] = 20'b11110111010111100000;
    n194[522] = 20'b11111000001001101010;
    n194[521] = 20'b11111000111011110110;
    n194[520] = 20'b11111001101110000010;
    n194[519] = 20'b11111010100000010000;
    n194[518] = 20'b11111011010010011110;
    n194[517] = 20'b11111100000100101110;
    n194[516] = 20'b11111100110110111101;
    n194[515] = 20'b11111101101001001110;
    n194[514] = 20'b11111110011011011110;
    n194[513] = 20'b11111111001101101111;
    n194[512] = 20'b00000000000000000000;
    n194[511] = 20'b00000000110010010001;
    n194[510] = 20'b00000001100100100010;
    n194[509] = 20'b00000010010110110010;
    n194[508] = 20'b00000011001001000011;
    n194[507] = 20'b00000011111011010010;
    n194[506] = 20'b00000100101101100010;
    n194[505] = 20'b00000101011111110000;
    n194[504] = 20'b00000110010001111110;
    n194[503] = 20'b00000111000100001010;
    n194[502] = 20'b00000111110110010110;
    n194[501] = 20'b00001000101000100000;
    n194[500] = 20'b00001001011010101001;
    n194[499] = 20'b00001010001100110000;
    n194[498] = 20'b00001010111110110110;
    n194[497] = 20'b00001011110000111011;
    n194[496] = 20'b00001100100010111101;
    n194[495] = 20'b00001101010100111110;
    n194[494] = 20'b00001110000110111100;
    n194[493] = 20'b00001110111000111000;
    n194[492] = 20'b00001111101010110010;
    n194[491] = 20'b00010000011100101010;
    n194[490] = 20'b00010001001110011111;
    n194[489] = 20'b00010010000000010001;
    n194[488] = 20'b00010010110010000001;
    n194[487] = 20'b00010011100011101110;
    n194[486] = 20'b00010100010101010111;
    n194[485] = 20'b00010101000110111110;
    n194[484] = 20'b00010101111000100001;
    n194[483] = 20'b00010110101010000001;
    n194[482] = 20'b00010111011011011101;
    n194[481] = 20'b00011000001100110110;
    n194[480] = 20'b00011000111110001011;
    n194[479] = 20'b00011001101111011101;
    n194[478] = 20'b00011010100000101010;
    n194[477] = 20'b00011011010001110011;
    n194[476] = 20'b00011100000010111000;
    n194[475] = 20'b00011100110011111001;
    n194[474] = 20'b00011101100100110101;
    n194[473] = 20'b00011110010101101100;
    n194[472] = 20'b00011111000110011111;
    n194[471] = 20'b00011111110111001110;
    n194[470] = 20'b00100000100111110111;
    n194[469] = 20'b00100001011000011011;
    n194[468] = 20'b00100010001000111010;
    n194[467] = 20'b00100010111001010100;
    n194[466] = 20'b00100011101001101000;
    n194[465] = 20'b00100100011001110111;
    n194[464] = 20'b00100101001010000000;
    n194[463] = 20'b00100101111010000100;
    n194[462] = 20'b00100110101010000010;
    n194[461] = 20'b00100111011001111010;
    n194[460] = 20'b00101000001001101011;
    n194[459] = 20'b00101000111001010111;
    n194[458] = 20'b00101001101000111100;
    n194[457] = 20'b00101010011000011011;
    n194[456] = 20'b00101011000111110011;
    n194[455] = 20'b00101011110111000101;
    n194[454] = 20'b00101100100110001111;
    n194[453] = 20'b00101101010101010011;
    n194[452] = 20'b00101110000100010000;
    n194[451] = 20'b00101110110011000110;
    n194[450] = 20'b00101111100001110101;
    n194[449] = 20'b00110000010000011100;
    n194[448] = 20'b00110000111110111100;
    n194[447] = 20'b00110001101101010100;
    n194[446] = 20'b00110010011011100101;
    n194[445] = 20'b00110011001001101110;
    n194[444] = 20'b00110011110111101111;
    n194[443] = 20'b00110100100101101000;
    n194[442] = 20'b00110101010011011001;
    n194[441] = 20'b00110110000001000001;
    n194[440] = 20'b00110110101110100010;
    n194[439] = 20'b00110111011011111001;
    n194[438] = 20'b00111000001001001001;
    n194[437] = 20'b00111000110110001111;
    n194[436] = 20'b00111001100011001101;
    n194[435] = 20'b00111010010000000010;
    n194[434] = 20'b00111010111100101110;
    n194[433] = 20'b00111011101001010001;
    n194[432] = 20'b00111100010101101011;
    n194[431] = 20'b00111101000001111100;
    n194[430] = 20'b00111101101110000011;
    n194[429] = 20'b00111110011010000000;
    n194[428] = 20'b00111111000101110100;
    n194[427] = 20'b00111111110001011110;
    n194[426] = 20'b01000000011100111111;
    n194[425] = 20'b01000001001000010101;
    n194[424] = 20'b01000001110011100001;
    n194[423] = 20'b01000010011110100100;
    n194[422] = 20'b01000011001001011100;
    n194[421] = 20'b01000011110100001001;
    n194[420] = 20'b01000100011110101100;
    n194[419] = 20'b01000101001001000101;
    n194[418] = 20'b01000101110011010011;
    n194[417] = 20'b01000110011101010110;
    n194[416] = 20'b01000111000111001110;
    n194[415] = 20'b01000111110000111100;
    n194[414] = 20'b01001000011010011110;
    n194[413] = 20'b01001001000011110101;
    n194[412] = 20'b01001001101101000001;
    n194[411] = 20'b01001010010110000001;
    n194[410] = 20'b01001010111110110110;
    n194[409] = 20'b01001011100111100000;
    n194[408] = 20'b01001100001111111101;
    n194[407] = 20'b01001100111000001111;
    n194[406] = 20'b01001101100000010110;
    n194[405] = 20'b01001110001000010000;
    n194[404] = 20'b01001110101111111110;
    n194[403] = 20'b01001111010111100000;
    n194[402] = 20'b01001111111110110110;
    n194[401] = 20'b01010000100101111111;
    n194[400] = 20'b01010001001100111100;
    n194[399] = 20'b01010001110011101101;
    n194[398] = 20'b01010010011010010001;
    n194[397] = 20'b01010011000000101000;
    n194[396] = 20'b01010011100110110010;
    n194[395] = 20'b01010100001100101111;
    n194[394] = 20'b01010100110010100000;
    n194[393] = 20'b01010101011000000011;
    n194[392] = 20'b01010101111101011010;
    n194[391] = 20'b01010110100010100011;
    n194[390] = 20'b01010111000111011110;
    n194[389] = 20'b01010111101100001100;
    n194[388] = 20'b01011000010000101101;
    n194[387] = 20'b01011000110101000000;
    n194[386] = 20'b01011001011001000110;
    n194[385] = 20'b01011001111100111101;
    n194[384] = 20'b01011010100000100111;
    n194[383] = 20'b01011011000100000011;
    n194[382] = 20'b01011011100111010000;
    n194[381] = 20'b01011100001010010000;
    n194[380] = 20'b01011100101101000001;
    n194[379] = 20'b01011101001111100100;
    n194[378] = 20'b01011101110001111001;
    n194[377] = 20'b01011110010011111111;
    n194[376] = 20'b01011110110101110111;
    n194[375] = 20'b01011111010111100000;
    n194[374] = 20'b01011111111000111010;
    n194[373] = 20'b01100000011010000110;
    n194[372] = 20'b01100000111011000011;
    n194[371] = 20'b01100001011011110001;
    n194[370] = 20'b01100001111100001111;
    n194[369] = 20'b01100010011100011111;
    n194[368] = 20'b01100010111100011111;
    n194[367] = 20'b01100011011100010001;
    n194[366] = 20'b01100011111011110010;
    n194[365] = 20'b01100100011011000101;
    n194[364] = 20'b01100100111010001000;
    n194[363] = 20'b01100101011000111011;
    n194[362] = 20'b01100101110111011111;
    n194[361] = 20'b01100110010101110011;
    n194[360] = 20'b01100110110011110111;
    n194[359] = 20'b01100111010001101100;
    n194[358] = 20'b01100111101111010000;
    n194[357] = 20'b01101000001100100101;
    n194[356] = 20'b01101000101001101001;
    n194[355] = 20'b01101001000110011101;
    n194[354] = 20'b01101001100011000001;
    n194[353] = 20'b01101001111111010101;
    n194[352] = 20'b01101010011011011001;
    n194[351] = 20'b01101010110111001100;
    n194[350] = 20'b01101011010010101110;
    n194[349] = 20'b01101011101110000000;
    n194[348] = 20'b01101100001001000010;
    n194[347] = 20'b01101100100011110010;
    n194[346] = 20'b01101100111110010010;
    n194[345] = 20'b01101101011000100010;
    n194[344] = 20'b01101101110010100000;
    n194[343] = 20'b01101110001100001101;
    n194[342] = 20'b01101110100101101010;
    n194[341] = 20'b01101110111110110101;
    n194[340] = 20'b01101111010111101111;
    n194[339] = 20'b01101111110000011000;
    n194[338] = 20'b01110000001000110000;
    n194[337] = 20'b01110000100000110111;
    n194[336] = 20'b01110000111000101100;
    n194[335] = 20'b01110001010000010000;
    n194[334] = 20'b01110001100111100010;
    n194[333] = 20'b01110001111110100011;
    n194[332] = 20'b01110010010101010010;
    n194[331] = 20'b01110010101011101111;
    n194[330] = 20'b01110011000001111011;
    n194[329] = 20'b01110011010111110101;
    n194[328] = 20'b01110011101101011110;
    n194[327] = 20'b01110100000010110100;
    n194[326] = 20'b01110100010111111001;
    n194[325] = 20'b01110100101100101100;
    n194[324] = 20'b01110101000001001100;
    n194[323] = 20'b01110101010101011011;
    n194[322] = 20'b01110101101001010111;
    n194[321] = 20'b01110101111101000010;
    n194[320] = 20'b01110110010000011010;
    n194[319] = 20'b01110110100011100000;
    n194[318] = 20'b01110110110110010100;
    n194[317] = 20'b01110111001000110101;
    n194[316] = 20'b01110111011011000100;
    n194[315] = 20'b01110111101101000001;
    n194[314] = 20'b01110111111110101011;
    n194[313] = 20'b01111000010000000010;
    n194[312] = 20'b01111000100001000111;
    n194[311] = 20'b01111000110001111010;
    n194[310] = 20'b01111001000010011010;
    n194[309] = 20'b01111001010010100111;
    n194[308] = 20'b01111001100010100001;
    n194[307] = 20'b01111001110010001001;
    n194[306] = 20'b01111010000001011110;
    n194[305] = 20'b01111010010000100000;
    n194[304] = 20'b01111010011111001111;
    n194[303] = 20'b01111010101101101100;
    n194[302] = 20'b01111010111011110101;
    n194[301] = 20'b01111011001001101100;
    n194[300] = 20'b01111011010111001111;
    n194[299] = 20'b01111011100100100000;
    n194[298] = 20'b01111011110001011101;
    n194[297] = 20'b01111011111110001000;
    n194[296] = 20'b01111100001010011111;
    n194[295] = 20'b01111100010110100011;
    n194[294] = 20'b01111100100010010100;
    n194[293] = 20'b01111100101101110001;
    n194[292] = 20'b01111100111000111100;
    n194[291] = 20'b01111101000011110011;
    n194[290] = 20'b01111101001110010111;
    n194[289] = 20'b01111101011000101000;
    n194[288] = 20'b01111101100010100101;
    n194[287] = 20'b01111101101100001111;
    n194[286] = 20'b01111101110101100101;
    n194[285] = 20'b01111101111110101001;
    n194[284] = 20'b01111110000111011000;
    n194[283] = 20'b01111110001111110101;
    n194[282] = 20'b01111110010111111101;
    n194[281] = 20'b01111110011111110011;
    n194[280] = 20'b01111110100111010100;
    n194[279] = 20'b01111110101110100011;
    n194[278] = 20'b01111110110101011101;
    n194[277] = 20'b01111110111100000101;
    n194[276] = 20'b01111111000010011000;
    n194[275] = 20'b01111111001000011000;
    n194[274] = 20'b01111111001110000101;
    n194[273] = 20'b01111111010011011101;
    n194[272] = 20'b01111111011000100010;
    n194[271] = 20'b01111111011101010100;
    n194[270] = 20'b01111111100001110010;
    n194[269] = 20'b01111111100101111100;
    n194[268] = 20'b01111111101001110010;
    n194[267] = 20'b01111111101101010101;
    n194[266] = 20'b01111111110000100100;
    n194[265] = 20'b01111111110011100000;
    n194[264] = 20'b01111111110110000111;
    n194[263] = 20'b01111111111000011011;
    n194[262] = 20'b01111111111010011100;
    n194[261] = 20'b01111111111100001000;
    n194[260] = 20'b01111111111101100001;
    n194[259] = 20'b01111111111110100110;
    n194[258] = 20'b01111111111111011000;
    n194[257] = 20'b01111111111111110101;
    n194[256] = 20'b01111111111111111111;
    n194[255] = 20'b01111111111111110101;
    n194[254] = 20'b01111111111111011000;
    n194[253] = 20'b01111111111110100110;
    n194[252] = 20'b01111111111101100001;
    n194[251] = 20'b01111111111100001000;
    n194[250] = 20'b01111111111010011100;
    n194[249] = 20'b01111111111000011011;
    n194[248] = 20'b01111111110110000111;
    n194[247] = 20'b01111111110011100000;
    n194[246] = 20'b01111111110000100100;
    n194[245] = 20'b01111111101101010101;
    n194[244] = 20'b01111111101001110010;
    n194[243] = 20'b01111111100101111100;
    n194[242] = 20'b01111111100001110010;
    n194[241] = 20'b01111111011101010100;
    n194[240] = 20'b01111111011000100010;
    n194[239] = 20'b01111111010011011101;
    n194[238] = 20'b01111111001110000101;
    n194[237] = 20'b01111111001000011000;
    n194[236] = 20'b01111111000010011000;
    n194[235] = 20'b01111110111100000101;
    n194[234] = 20'b01111110110101011101;
    n194[233] = 20'b01111110101110100011;
    n194[232] = 20'b01111110100111010100;
    n194[231] = 20'b01111110011111110011;
    n194[230] = 20'b01111110010111111101;
    n194[229] = 20'b01111110001111110101;
    n194[228] = 20'b01111110000111011000;
    n194[227] = 20'b01111101111110101001;
    n194[226] = 20'b01111101110101100101;
    n194[225] = 20'b01111101101100001111;
    n194[224] = 20'b01111101100010100101;
    n194[223] = 20'b01111101011000101000;
    n194[222] = 20'b01111101001110010111;
    n194[221] = 20'b01111101000011110011;
    n194[220] = 20'b01111100111000111100;
    n194[219] = 20'b01111100101101110001;
    n194[218] = 20'b01111100100010010100;
    n194[217] = 20'b01111100010110100011;
    n194[216] = 20'b01111100001010011111;
    n194[215] = 20'b01111011111110001000;
    n194[214] = 20'b01111011110001011101;
    n194[213] = 20'b01111011100100100000;
    n194[212] = 20'b01111011010111001111;
    n194[211] = 20'b01111011001001101100;
    n194[210] = 20'b01111010111011110101;
    n194[209] = 20'b01111010101101101100;
    n194[208] = 20'b01111010011111001111;
    n194[207] = 20'b01111010010000100000;
    n194[206] = 20'b01111010000001011110;
    n194[205] = 20'b01111001110010001001;
    n194[204] = 20'b01111001100010100001;
    n194[203] = 20'b01111001010010100111;
    n194[202] = 20'b01111001000010011010;
    n194[201] = 20'b01111000110001111010;
    n194[200] = 20'b01111000100001000111;
    n194[199] = 20'b01111000010000000010;
    n194[198] = 20'b01110111111110101011;
    n194[197] = 20'b01110111101101000001;
    n194[196] = 20'b01110111011011000100;
    n194[195] = 20'b01110111001000110101;
    n194[194] = 20'b01110110110110010100;
    n194[193] = 20'b01110110100011100000;
    n194[192] = 20'b01110110010000011010;
    n194[191] = 20'b01110101111101000010;
    n194[190] = 20'b01110101101001010111;
    n194[189] = 20'b01110101010101011011;
    n194[188] = 20'b01110101000001001100;
    n194[187] = 20'b01110100101100101100;
    n194[186] = 20'b01110100010111111001;
    n194[185] = 20'b01110100000010110100;
    n194[184] = 20'b01110011101101011110;
    n194[183] = 20'b01110011010111110101;
    n194[182] = 20'b01110011000001111011;
    n194[181] = 20'b01110010101011101111;
    n194[180] = 20'b01110010010101010010;
    n194[179] = 20'b01110001111110100011;
    n194[178] = 20'b01110001100111100010;
    n194[177] = 20'b01110001010000010000;
    n194[176] = 20'b01110000111000101100;
    n194[175] = 20'b01110000100000110111;
    n194[174] = 20'b01110000001000110000;
    n194[173] = 20'b01101111110000011000;
    n194[172] = 20'b01101111010111101111;
    n194[171] = 20'b01101110111110110101;
    n194[170] = 20'b01101110100101101010;
    n194[169] = 20'b01101110001100001101;
    n194[168] = 20'b01101101110010100000;
    n194[167] = 20'b01101101011000100010;
    n194[166] = 20'b01101100111110010010;
    n194[165] = 20'b01101100100011110010;
    n194[164] = 20'b01101100001001000010;
    n194[163] = 20'b01101011101110000000;
    n194[162] = 20'b01101011010010101110;
    n194[161] = 20'b01101010110111001100;
    n194[160] = 20'b01101010011011011001;
    n194[159] = 20'b01101001111111010101;
    n194[158] = 20'b01101001100011000001;
    n194[157] = 20'b01101001000110011101;
    n194[156] = 20'b01101000101001101001;
    n194[155] = 20'b01101000001100100101;
    n194[154] = 20'b01100111101111010000;
    n194[153] = 20'b01100111010001101100;
    n194[152] = 20'b01100110110011110111;
    n194[151] = 20'b01100110010101110011;
    n194[150] = 20'b01100101110111011111;
    n194[149] = 20'b01100101011000111011;
    n194[148] = 20'b01100100111010001000;
    n194[147] = 20'b01100100011011000101;
    n194[146] = 20'b01100011111011110010;
    n194[145] = 20'b01100011011100010001;
    n194[144] = 20'b01100010111100011111;
    n194[143] = 20'b01100010011100011111;
    n194[142] = 20'b01100001111100001111;
    n194[141] = 20'b01100001011011110001;
    n194[140] = 20'b01100000111011000011;
    n194[139] = 20'b01100000011010000110;
    n194[138] = 20'b01011111111000111010;
    n194[137] = 20'b01011111010111100000;
    n194[136] = 20'b01011110110101110111;
    n194[135] = 20'b01011110010011111111;
    n194[134] = 20'b01011101110001111001;
    n194[133] = 20'b01011101001111100100;
    n194[132] = 20'b01011100101101000001;
    n194[131] = 20'b01011100001010010000;
    n194[130] = 20'b01011011100111010000;
    n194[129] = 20'b01011011000100000011;
    n194[128] = 20'b01011010100000100111;
    n194[127] = 20'b01011001111100111101;
    n194[126] = 20'b01011001011001000110;
    n194[125] = 20'b01011000110101000000;
    n194[124] = 20'b01011000010000101101;
    n194[123] = 20'b01010111101100001100;
    n194[122] = 20'b01010111000111011110;
    n194[121] = 20'b01010110100010100011;
    n194[120] = 20'b01010101111101011010;
    n194[119] = 20'b01010101011000000011;
    n194[118] = 20'b01010100110010100000;
    n194[117] = 20'b01010100001100101111;
    n194[116] = 20'b01010011100110110010;
    n194[115] = 20'b01010011000000101000;
    n194[114] = 20'b01010010011010010001;
    n194[113] = 20'b01010001110011101101;
    n194[112] = 20'b01010001001100111100;
    n194[111] = 20'b01010000100101111111;
    n194[110] = 20'b01001111111110110110;
    n194[109] = 20'b01001111010111100000;
    n194[108] = 20'b01001110101111111110;
    n194[107] = 20'b01001110001000010000;
    n194[106] = 20'b01001101100000010110;
    n194[105] = 20'b01001100111000001111;
    n194[104] = 20'b01001100001111111101;
    n194[103] = 20'b01001011100111100000;
    n194[102] = 20'b01001010111110110110;
    n194[101] = 20'b01001010010110000001;
    n194[100] = 20'b01001001101101000001;
    n194[99] = 20'b01001001000011110101;
    n194[98] = 20'b01001000011010011110;
    n194[97] = 20'b01000111110000111100;
    n194[96] = 20'b01000111000111001110;
    n194[95] = 20'b01000110011101010110;
    n194[94] = 20'b01000101110011010011;
    n194[93] = 20'b01000101001001000101;
    n194[92] = 20'b01000100011110101100;
    n194[91] = 20'b01000011110100001001;
    n194[90] = 20'b01000011001001011100;
    n194[89] = 20'b01000010011110100100;
    n194[88] = 20'b01000001110011100001;
    n194[87] = 20'b01000001001000010101;
    n194[86] = 20'b01000000011100111111;
    n194[85] = 20'b00111111110001011110;
    n194[84] = 20'b00111111000101110100;
    n194[83] = 20'b00111110011010000000;
    n194[82] = 20'b00111101101110000011;
    n194[81] = 20'b00111101000001111100;
    n194[80] = 20'b00111100010101101011;
    n194[79] = 20'b00111011101001010001;
    n194[78] = 20'b00111010111100101110;
    n194[77] = 20'b00111010010000000010;
    n194[76] = 20'b00111001100011001101;
    n194[75] = 20'b00111000110110001111;
    n194[74] = 20'b00111000001001001001;
    n194[73] = 20'b00110111011011111001;
    n194[72] = 20'b00110110101110100010;
    n194[71] = 20'b00110110000001000001;
    n194[70] = 20'b00110101010011011001;
    n194[69] = 20'b00110100100101101000;
    n194[68] = 20'b00110011110111101111;
    n194[67] = 20'b00110011001001101110;
    n194[66] = 20'b00110010011011100101;
    n194[65] = 20'b00110001101101010100;
    n194[64] = 20'b00110000111110111100;
    n194[63] = 20'b00110000010000011100;
    n194[62] = 20'b00101111100001110101;
    n194[61] = 20'b00101110110011000110;
    n194[60] = 20'b00101110000100010000;
    n194[59] = 20'b00101101010101010011;
    n194[58] = 20'b00101100100110001111;
    n194[57] = 20'b00101011110111000101;
    n194[56] = 20'b00101011000111110011;
    n194[55] = 20'b00101010011000011011;
    n194[54] = 20'b00101001101000111100;
    n194[53] = 20'b00101000111001010111;
    n194[52] = 20'b00101000001001101011;
    n194[51] = 20'b00100111011001111010;
    n194[50] = 20'b00100110101010000010;
    n194[49] = 20'b00100101111010000100;
    n194[48] = 20'b00100101001010000000;
    n194[47] = 20'b00100100011001110111;
    n194[46] = 20'b00100011101001101000;
    n194[45] = 20'b00100010111001010100;
    n194[44] = 20'b00100010001000111010;
    n194[43] = 20'b00100001011000011011;
    n194[42] = 20'b00100000100111110111;
    n194[41] = 20'b00011111110111001110;
    n194[40] = 20'b00011111000110011111;
    n194[39] = 20'b00011110010101101100;
    n194[38] = 20'b00011101100100110101;
    n194[37] = 20'b00011100110011111001;
    n194[36] = 20'b00011100000010111000;
    n194[35] = 20'b00011011010001110011;
    n194[34] = 20'b00011010100000101010;
    n194[33] = 20'b00011001101111011101;
    n194[32] = 20'b00011000111110001011;
    n194[31] = 20'b00011000001100110110;
    n194[30] = 20'b00010111011011011101;
    n194[29] = 20'b00010110101010000001;
    n194[28] = 20'b00010101111000100001;
    n194[27] = 20'b00010101000110111110;
    n194[26] = 20'b00010100010101010111;
    n194[25] = 20'b00010011100011101110;
    n194[24] = 20'b00010010110010000001;
    n194[23] = 20'b00010010000000010001;
    n194[22] = 20'b00010001001110011111;
    n194[21] = 20'b00010000011100101010;
    n194[20] = 20'b00001111101010110010;
    n194[19] = 20'b00001110111000111000;
    n194[18] = 20'b00001110000110111100;
    n194[17] = 20'b00001101010100111110;
    n194[16] = 20'b00001100100010111101;
    n194[15] = 20'b00001011110000111011;
    n194[14] = 20'b00001010111110110110;
    n194[13] = 20'b00001010001100110000;
    n194[12] = 20'b00001001011010101001;
    n194[11] = 20'b00001000101000100000;
    n194[10] = 20'b00000111110110010110;
    n194[9] = 20'b00000111000100001010;
    n194[8] = 20'b00000110010001111110;
    n194[7] = 20'b00000101011111110000;
    n194[6] = 20'b00000100101101100010;
    n194[5] = 20'b00000011111011010010;
    n194[4] = 20'b00000011001001000011;
    n194[3] = 20'b00000010010110110010;
    n194[2] = 20'b00000001100100100010;
    n194[1] = 20'b00000000110010010001;
    n194[0] = 20'b00000000000000000000;
    end
  always @(posedge clk_b)
    if (1'b1)
      n197 <= n194[addr_b];
  always @(posedge clk_a)
    if (1'b1)
      n199 <= n194[addr_a];
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\bram_dp_sin_lut.vhdl:1070:28 */
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\bram_dp_sin_lut.vhdl:1070:27 */
endmodule

module zector_dds_ip_Brtl_32_10_20_16_8
  (input  clk,
   input  [19:0] lut_di_0,
   input  [19:0] lut_di_1,
   input  [31:0] m,
   input  [31:0] phase,
   input  [15:0] scale,
   output [7:0] y,
   output [9:0] lut_addr_0,
   output [9:0] lut_addr_1);
  reg [31:0] accumulator;
  reg [31:0] phase_word;
  wire [7:0] fraction_reg;
  wire [20:0] diff_reg;
  wire [20:0] y0_d1;
  wire [7:0] fraction_d1;
  wire [29:0] product_reg;
  wire [20:0] y0_d2;
  wire [20:0] y0_d3;
  wire [29:0] interp_sum;
  wire [20:0] interp_reg;
  wire [7:0] dac_reg;
  wire [19:0] interp_lo_prod;
  wire [19:0] interp_hi_prod;
  wire [29:0] scale_lo_product;
  wire [28:0] scale_hi_product;
  wire [36:0] scale_combined;
  wire [15:0] scale_reg;
  wire [31:0] m_reg;
  wire [31:0] phase_reg;
  wire [31:0] n78;
  wire [9:0] n79;
  wire [9:0] n80;
  wire [9:0] n82;
  wire [29:0] n83;
  wire [29:0] n85;
  wire [29:0] n86;
  wire [36:0] n87;
  wire [36:0] n89;
  wire [36:0] n90;
  wire [36:0] n91;
  wire [31:0] n94;
  wire [7:0] n95;
  wire [20:0] n96;
  wire [20:0] n97;
  wire [20:0] n98;
  wire [20:0] n99;
  wire [9:0] n100;
  wire [10:0] n102;
  wire [8:0] n104;
  wire [19:0] n105;
  wire [19:0] n106;
  wire [19:0] n107;
  wire [10:0] n108;
  wire [8:0] n110;
  wire [19:0] n111;
  wire [19:0] n112;
  wire [19:0] n113;
  wire [29:0] n114;
  wire [29:0] n115;
  wire [29:0] n117;
  wire [29:0] n118;
  wire [20:0] n119;
  wire [7:0] n120;
  wire [8:0] n122;
  wire [29:0] n123;
  wire [29:0] n124;
  wire [29:0] n125;
  wire [7:0] n126;
  wire [28:0] n127;
  wire [28:0] n128;
  wire [28:0] n129;
  wire [7:0] n130;
  wire n131;
  wire n132;
  wire [6:0] n133;
  wire [7:0] n134;
  reg [7:0] n153;
  reg [31:0] n154;
  reg [7:0] n155;
  reg [20:0] n156;
  reg [20:0] n157;
  reg [7:0] n158;
  reg [29:0] n159;
  reg [20:0] n160;
  reg [20:0] n161;
  reg [20:0] n162;
  reg [7:0] n163;
  reg [19:0] n164;
  reg [19:0] n165;
  reg [29:0] n166;
  reg [28:0] n167;
  reg [15:0] n168;
  reg [31:0] n169;
  reg [31:0] n170;
  assign y = n153; //(module output)
  assign lut_addr_0 = n79; //(module output)
  assign lut_addr_1 = n82; //(module output)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:39:12 */
  always @*
    accumulator = n154; // (isignal)
  initial
    accumulator = 32'b00000000000000000000000000000000;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:41:12 */
  always @*
    phase_word = n78; // (isignal)
  initial
    phase_word = 32'b00000000000000000000000000000000;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:44:12 */
  assign fraction_reg = n155; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:47:12 */
  assign diff_reg = n156; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:48:12 */
  assign y0_d1 = n157; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:49:12 */
  assign fraction_d1 = n158; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:52:12 */
  assign product_reg = n159; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:53:12 */
  assign y0_d2 = n160; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:55:12 */
  assign y0_d3 = n161; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:59:12 */
  assign interp_sum = n86; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:60:12 */
  assign interp_reg = n162; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:65:12 */
  assign dac_reg = n163; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:71:12 */
  assign interp_lo_prod = n164; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:72:12 */
  assign interp_hi_prod = n165; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:75:12 */
  assign scale_lo_product = n166; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:76:12 */
  assign scale_hi_product = n167; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:79:12 */
  assign scale_combined = n91; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:81:12 */
  assign scale_reg = n168; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:82:12 */
  assign m_reg = n169; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:83:12 */
  assign phase_reg = n170; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:120:31 */
  assign n78 = accumulator + phase_reg;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:123:29 */
  assign n79 = phase_word[31:22]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:124:29 */
  assign n80 = phase_word[31:22]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:124:90 */
  assign n82 = n80 + 10'b0000000001;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:127:30 */
  assign n83 = {{9{y0_d3[20]}}, y0_d3}; // sext
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:127:19 */
  assign n85 = n83 << 31'b0000000000000000000000000001000;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:127:92 */
  assign n86 = n85 + product_reg;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:133:20 */
  assign n87 = {{8{scale_hi_product[28]}}, scale_hi_product}; // sext
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:133:9 */
  assign n89 = n87 << 31'b0000000000000000000000000001000;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:134:11 */
  assign n90 = {{7{scale_lo_product[29]}}, scale_lo_product}; // sext
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:134:9 */
  assign n91 = n89 + n90;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:140:39 */
  assign n94 = accumulator + m_reg;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:143:39 */
  assign n95 = phase_word[21:14]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:146:25 */
  assign n96 = {{1{lut_di_1[19]}}, lut_di_1}; // sext
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:146:62 */
  assign n97 = {{1{lut_di_0[19]}}, lut_di_0}; // sext
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:146:60 */
  assign n98 = n96 - n97;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:147:22 */
  assign n99 = {{1{lut_di_0[19]}}, lut_di_0}; // sext
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:158:52 */
  assign n100 = diff_reg[9:0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:158:42 */
  assign n102 = {1'b0, n100};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:158:79 */
  assign n104 = {1'b0, fraction_d1};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:158:66 */
  assign n105 = {{9{n102[10]}}, n102}; // sext
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:158:66 */
  assign n106 = {{11{n104[8]}}, n104}; // sext
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:158:66 */
  assign n107 = $signed(n105) * $signed(n106); // smul
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:159:39 */
  assign n108 = diff_reg[20:10]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:159:66 */
  assign n110 = {1'b0, fraction_d1};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:159:54 */
  assign n111 = {{9{n108[10]}}, n108}; // sext
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:159:54 */
  assign n112 = {{11{n110[8]}}, n110}; // sext
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:159:54 */
  assign n113 = $signed(n111) * $signed(n112); // smul
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:162:28 */
  assign n114 = {{10{interp_lo_prod[19]}}, interp_lo_prod}; // sext
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:162:68 */
  assign n115 = {{10{interp_hi_prod[19]}}, interp_hi_prod}; // sext
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:162:57 */
  assign n117 = n115 << 31'b0000000000000000000000000001010;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:162:55 */
  assign n118 = n114 + n117;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:170:44 */
  assign n119 = interp_sum[28:8]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:174:52 */
  assign n120 = scale_reg[7:0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:174:41 */
  assign n122 = {1'b0, n120};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:174:28 */
  assign n123 = {{9{interp_reg[20]}}, interp_reg}; // sext
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:174:28 */
  assign n124 = {{21{n122[8]}}, n122}; // sext
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:174:28 */
  assign n125 = $signed(n123) * $signed(n124); // smul
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:177:39 */
  assign n126 = scale_reg[15:8]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:177:28 */
  assign n127 = {{8{interp_reg[20]}}, interp_reg}; // sext
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:177:28 */
  assign n128 = {{21{n126[7]}}, n126}; // sext
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:177:28 */
  assign n129 = $signed(n127) * $signed(n128); // smul
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:181:38 */
  assign n130 = scale_combined[34:27]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:182:29 */
  assign n131 = dac_reg[7]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:182:18 */
  assign n132 = ~n131;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:182:72 */
  assign n133 = dac_reg[6:0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:182:46 */
  assign n134 = {n132, n133};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n153 <= n134;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n154 <= n94;
  initial
    n154 = 32'b00000000000000000000000000000000;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n155 <= n95;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n156 <= n98;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n157 <= n99;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n158 <= fraction_reg;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n159 <= n118;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n160 <= y0_d1;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n161 <= y0_d2;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n162 <= n119;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n163 <= n130;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n164 <= n107;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n165 <= n113;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n166 <= n125;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n167 <= n129;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:110:9 */
  always @(posedge clk)
    n168 <= scale;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:110:9 */
  always @(posedge clk)
    n169 <= m;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:110:9 */
  always @(posedge clk)
    n170 <= phase;
endmodule

module SPI_MEM_TOP
  (input  clk_10_MHz,
   input  clk_dds,
   input  spi_clk,
   input  spi_mosi,
   output spi_miso,
   input  spi_ncs,
   output [7:0] dac_out);
  wire [9:0] lut_addr_a;
  wire [9:0] lut_addr_b;
  wire [19:0] lut_data_a;
  wire [19:0] lut_data_b;
  wire spi_rnw;
  wire [6:0] spi_addr;
  wire [31:0] spi_data;
  wire spi_update;
  wire [39:0] bram_spi_data;
  wire en_bram_b;
  wire we_cfg;
  wire [39:0] bram_rfs_data;
  wire [31:0] rfs_cfg_data;
  wire [9:0] bram_rfs_addr;
  wire [6:0] rfs_cfg_addr;
  wire [511:0] cfg_regs;
  wire clk_100_mhz;
  reg clk_25_mhz;
  reg [1:0] clk_divider;
  wire w_spi_clk;
  wire w_spi_mosi;
  wire w_spi_ncs;
  wire [1:0] n12;
  wire n15;
  wire \pll_inst.USR_PLL_LOCKED_STDY ;
  wire \pll_inst.USR_PLL_LOCKED ;
  wire \pll_inst.CLK90 ;
  wire \pll_inst.CLK180 ;
  wire \pll_inst.CLK270 ;
  wire \pll_inst.CLK_REF_OUT ;
  localparam n16 = 1'b0;
  localparam n17 = 1'b0;
  localparam n18 = 1'b0;
  wire [7:0] \dds_inst.y ;
  wire [31:0] n20;
  wire [31:0] n21;
  wire [15:0] n22;
  localparam n26 = 1'b0;
  localparam n27 = 1'b0;
  localparam [19:0] n28 = 20'b00000000000000000000;
  localparam [19:0] n29 = 20'b00000000000000000000;
  wire [31:0] \cfg_register.o_reg_0 ;
  wire [31:0] \cfg_register.o_reg_1 ;
  wire [31:0] \cfg_register.o_reg_2 ;
  wire [31:0] n37;
  wire \spi_slave.o_miso ;
  wire [31:0] n45;
  wire n47;
  wire [9:0] n49;
  wire [39:0] n51;
  localparam n53 = 1'b0;
  localparam [39:0] n54 = 40'b0000000000000000000000000000000000000000;
  wire [511:0] n64;
  localparam [7:0] n65 = 8'bZ;
  reg [1:0] n66;
  assign spi_miso = \spi_slave.o_miso ; //(module output)
  assign dac_out = n65; //(module output)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:101:12 */
  assign cfg_regs = n64; // (signal)
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:104:12 */
  always @*
    clk_25_mhz = n15; // (isignal)
  initial
    clk_25_mhz = 1'b0;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:106:12 */
  always @*
    clk_divider = n66; // (isignal)
  initial
    clk_divider = 2'b00;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:118:5 */
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
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:129:5 */
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
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:140:5 */
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
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:155:40 */
  assign n12 = clk_divider + 2'b01;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:159:30 */
  assign n15 = clk_divider[1]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:161:5 */
  CC_PLL #(
    .REF_CLK(1.0e1),
    .OUT_CLK(1.0e2),
    .PERF_MD("SPEED"),
    .LOW_JITTER(1),
    .LOCK_REQ(1),
    .CLK270_DOUB(0),
    .CLK180_DOUB(0),
    .CI_FILTER_CONST(2),
    .CP_FILTER_CONST(4))
    pll_inst (
    .CLK_REF(clk_10_MHz),
    .USR_CLK_REF(1'b0),
    .CLK_FEEDBACK(1'b0),
    .USR_LOCKED_STDY_RST(1'b0),
    .USR_PLL_LOCKED_STDY(),
    .USR_PLL_LOCKED(),
    .CLK0(clk_100_mhz),
    .CLK90(),
    .CLK180(),
    .CLK270(),
    .CLK_REF_OUT());
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:189:5 */
  zector_dds_ip_Brtl_32_10_20_16_8 dds_inst (
    .clk(clk_25_mhz),
    .lut_di_0(lut_data_a),
    .lut_di_1(lut_data_b),
    .m(n20),
    .phase(n21),
    .scale(n22),
    .y(),
    .lut_addr_0(lut_addr_a),
    .lut_addr_1(lut_addr_b));
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:202:45 */
  assign n20 = cfg_regs[511:480]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:203:43 */
  assign n21 = cfg_regs[479:448]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:204:46 */
  assign n22 = cfg_regs[431:416]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:214:5 */
  bram_dp_sin_lut_Brtl_20_10 bram_inst (
    .we_a(1'b0),
    .we_b(1'b0),
    .clk_a(clk_25_mhz),
    .clk_b(clk_25_mhz),
    .di_a(20'b00000000000000000000),
    .di_b(20'b00000000000000000000),
    .addr_a(lut_addr_a),
    .addr_b(lut_addr_b),
    .do_a(lut_data_a),
    .do_b(lut_data_b));
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:232:5 */
  zector_cfg_registers_ip_Brtl_32_7 cfg_register (
    .i_clk(clk_25_mhz),
    .i_we(we_cfg),
    .i_addr(rfs_cfg_addr),
    .i_di(rfs_cfg_data),
    .o_reg_0(\cfg_register.o_reg_0 ),
    .o_reg_1(\cfg_register.o_reg_1 ),
    .o_reg_2(\cfg_register.o_reg_2 ));
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:266:5 */
  refresh_sch_Brtl reg_refresh (
    .i_clk(clk_25_mhz),
    .i_di(n37),
    .o_en_bram(en_bram_b),
    .o_we_reg(we_cfg),
    .o_do(rfs_cfg_data),
    .o_addr_bram(bram_rfs_addr),
    .o_addr_reg(rfs_cfg_addr));
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:274:41 */
  assign n37 = bram_rfs_data[31:0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:281:5 */
  zector_spi_ip_Brtl_32_7 spi_slave (
    .i_clk(clk_100_mhz),
    .i_spi_clk(w_spi_clk),
    .i_mosi(w_spi_mosi),
    .i_ncs(w_spi_ncs),
    .i_data(n45),
    .o_miso(\spi_slave.o_miso ),
    .o_rnw(spi_rnw),
    .o_addr(spi_addr),
    .o_data(spi_data),
    .o_update(spi_update));
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:294:41 */
  assign n45 = bram_spi_data[31:0]; // extract
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:301:5 */
  zector_40k_dp_bram_ip_Brtl_40_10 cfg_bram (
    .clk_a(clk_100_mhz),
    .clk_b(clk_25_mhz),
    .en_a(spi_update),
    .we_a(n47),
    .addr_a(n49),
    .di_a(n51),
    .en_b(en_bram_b),
    .we_b(1'b0),
    .addr_b(bram_rfs_addr),
    .di_b(40'b0000000000000000000000000000000000000000),
    .do_a(bram_spi_data),
    .do_b(bram_rfs_data));
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:313:24 */
  assign n47 = ~spi_rnw;
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:314:30 */
  assign n49 = {3'b000, spi_addr};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:315:36 */
  assign n51 = {8'b00000000, spi_data};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:101:12 */
  assign n64 = {\cfg_register.o_reg_0 , \cfg_register.o_reg_1 , \cfg_register.o_reg_2 , 416'bZ};
  /*# C:\Users\TK32FF\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:154:9 */
  always @(posedge clk_100_mhz)
    n66 <= n12;
  initial
    n66 = 2'b00;
endmodule

