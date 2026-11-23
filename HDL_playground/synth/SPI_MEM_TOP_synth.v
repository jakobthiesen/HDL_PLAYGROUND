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
  wire [15:0] n572;
  wire [15:0] n574;
  wire [39:0] \bram_inst.A_DO ;
  wire [39:0] \bram_inst.B_DO ;
  wire \bram_inst.A_CO ;
  wire \bram_inst.B_CO ;
  wire \bram_inst.A_ECC_1B_ERR ;
  wire \bram_inst.B_ECC_1B_ERR ;
  wire \bram_inst.A_ECC_2B_ERR ;
  wire \bram_inst.B_ECC_2B_ERR ;
  localparam [39:0] n575 = 40'b1111111111111111111111111111111111111111;
  localparam [39:0] n576 = 40'b1111111111111111111111111111111111111111;
  assign do_a = \bram_inst.A_DO ; //(module output)
  assign do_b = \bram_inst.B_DO ; //(module output)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_40k_DP_BRAM_IP.vhdl:63:12 */
  assign bram_addr_a = n572; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_40k_DP_BRAM_IP.vhdl:64:12 */
  assign bram_addr_b = n574; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_40k_DP_BRAM_IP.vhdl:74:27 */
  assign n572 = {addr_a, 6'b000000};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_40k_DP_BRAM_IP.vhdl:75:27 */
  assign n574 = {addr_b, 6'b000000};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_40k_DP_BRAM_IP.vhdl:77:5 */
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

module spi_slave_ip_Brtl_32_7
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
  wire [6:0] addr_shift;
  wire [31:0] rx_shift;
  wire [31:0] tx_shift;
  wire [3:0] addr_counter;
  wire [5:0] rx_counter;
  wire [5:0] tx_counter;
  reg rw_reg;
  reg [6:0] addr_reg;
  reg [31:0] data_reg;
  reg tx_begin;
  reg rx_begin;
  reg rx_done;
  reg tx_done;
  reg addr_last;
  reg rx_last;
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
  wire n346;
  wire n347;
  wire n348;
  wire n349;
  wire n355;
  wire n376;
  wire n377;
  wire n378;
  wire n380;
  wire [5:0] n381;
  wire [6:0] n382;
  wire [6:0] n383;
  wire n384;
  wire n386;
  wire n388;
  wire [5:0] n389;
  wire [6:0] n390;
  wire n392;
  wire n394;
  wire n397;
  wire [6:0] n398;
  wire n399;
  wire n400;
  wire n402;
  wire [3:0] n404;
  wire [6:0] n405;
  wire [3:0] n406;
  wire n407;
  wire n408;
  wire n409;
  wire n410;
  wire n411;
  wire n413;
  wire n414;
  wire n415;
  wire n416;
  wire n417;
  wire n418;
  wire n419;
  wire n420;
  wire n422;
  wire [6:0] n423;
  wire [3:0] n425;
  wire n426;
  wire [6:0] n427;
  wire n429;
  wire n431;
  wire n433;
  wire n435;
  wire n448;
  wire n449;
  wire [30:0] n450;
  wire [31:0] n451;
  wire n453;
  wire n455;
  wire [30:0] n456;
  wire [31:0] n457;
  wire [5:0] n459;
  wire [5:0] n460;
  wire [31:0] n461;
  wire n463;
  wire n466;
  wire [31:0] n467;
  wire [5:0] n468;
  wire n469;
  wire n470;
  wire n471;
  wire n473;
  wire n474;
  wire n475;
  wire n476;
  wire n477;
  wire n478;
  wire n480;
  wire [31:0] n481;
  wire [5:0] n483;
  wire [31:0] n484;
  wire n486;
  wire n488;
  wire n490;
  wire n501;
  wire n502;
  wire n504;
  wire n505;
  wire [30:0] n506;
  wire [31:0] n508;
  wire n509;
  wire [30:0] n510;
  wire [31:0] n512;
  wire n513;
  wire [31:0] n514;
  wire n516;
  wire [5:0] n518;
  wire [5:0] n519;
  wire n521;
  wire n522;
  wire [31:0] n523;
  wire [5:0] n524;
  wire n525;
  wire n526;
  wire n527;
  wire n528;
  wire n529;
  wire n530;
  wire [31:0] n531;
  wire [5:0] n533;
  wire n535;
  reg n541;
  reg n542;
  reg [6:0] n543;
  reg [31:0] n544;
  reg [31:0] n545;
  reg [3:0] n546;
  reg [5:0] n547;
  reg [5:0] n548;
  reg n549;
  reg [6:0] n550;
  reg [31:0] n551;
  reg n552;
  reg n553;
  reg n554;
  reg n555;
  reg n556;
  reg n557;
  reg n558;
  reg n559;
  reg n560;
  reg n561;
  reg n562;
  reg n563;
  reg n564;
  reg n565;
  reg n566;
  reg n567;
  reg n568;
  assign o_miso = n541; //(module output)
  assign o_rnw = rw_reg; //(module output)
  assign o_addr = addr_reg; //(module output)
  assign o_data = data_reg; //(module output)
  assign o_update = n542; //(module output)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:26:12 */
  assign addr_shift = n543; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:27:12 */
  assign rx_shift = n544; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:28:12 */
  assign tx_shift = n545; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:31:12 */
  assign addr_counter = n546; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:32:12 */
  assign rx_counter = n547; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:33:12 */
  assign tx_counter = n548; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:40:12 */
  always @*
    rw_reg = n549; // (isignal)
  initial
    rw_reg = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:41:12 */
  always @*
    addr_reg = n550; // (isignal)
  initial
    addr_reg = 7'b0000000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:42:12 */
  always @*
    data_reg = n551; // (isignal)
  initial
    data_reg = 32'b00000000000000000000000000000000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:43:12 */
  always @*
    tx_begin = n552; // (isignal)
  initial
    tx_begin = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:44:12 */
  always @*
    rx_begin = n553; // (isignal)
  initial
    rx_begin = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:45:12 */
  always @*
    rx_done = n554; // (isignal)
  initial
    rx_done = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:46:12 */
  always @*
    tx_done = n555; // (isignal)
  initial
    tx_done = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:48:12 */
  always @*
    addr_last = n556; // (isignal)
  initial
    addr_last = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:49:12 */
  always @*
    rx_last = n557; // (isignal)
  initial
    rx_last = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:51:12 */
  always @*
    spi_clk_meta = n558; // (isignal)
  initial
    spi_clk_meta = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:52:12 */
  always @*
    spi_clk_sync = n559; // (isignal)
  initial
    spi_clk_sync = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:53:12 */
  always @*
    spi_clk_prev = n560; // (isignal)
  initial
    spi_clk_prev = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:55:12 */
  always @*
    spi_mosi_meta = n561; // (isignal)
  initial
    spi_mosi_meta = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:56:12 */
  always @*
    spi_mosi_sync = n562; // (isignal)
  initial
    spi_mosi_sync = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:58:12 */
  always @*
    spi_ncs_meta = n563; // (isignal)
  initial
    spi_ncs_meta = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:59:12 */
  always @*
    spi_ncs_sync = n564; // (isignal)
  initial
    spi_ncs_sync = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:61:12 */
  always @*
    spi_pos_edge = n565; // (isignal)
  initial
    spi_pos_edge = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:62:12 */
  always @*
    spi_neg_edge = n566; // (isignal)
  initial
    spi_neg_edge = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:64:12 */
  always @*
    addr_valid = n567; // (isignal)
  initial
    addr_valid = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:65:12 */
  always @*
    rx_valid = n568; // (isignal)
  initial
    rx_valid = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:76:46 */
  assign n346 = ~spi_clk_prev;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:76:42 */
  assign n347 = spi_clk_sync & n346;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:77:29 */
  assign n348 = ~spi_clk_sync;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:77:46 */
  assign n349 = n348 & spi_clk_prev;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:84:36 */
  assign n355 = addr_valid | rx_valid;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:124:29 */
  assign n376 = ~rx_begin;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:124:48 */
  assign n377 = ~tx_begin;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:124:35 */
  assign n378 = n377 & n376;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:126:37 */
  assign n380 = addr_counter == 4'b0000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:129:49 */
  assign n381 = addr_shift[5:0]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:129:73 */
  assign n382 = {n381, spi_mosi_sync};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:126:21 */
  assign n383 = n380 ? addr_shift : n382;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:123:13 */
  assign n384 = n416 ? spi_mosi_sync : rw_reg;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:134:37 */
  assign n386 = addr_counter == 4'b0110;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:123:13 */
  assign n388 = n420 ? 1'b1 : addr_last;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:139:47 */
  assign n389 = addr_shift[5:0]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:139:71 */
  assign n390 = {n389, spi_mosi_sync};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:123:13 */
  assign n392 = n418 ? 1'b1 : tx_begin;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:140:25 */
  assign n394 = rw_reg ? rx_begin : 1'b1;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:140:25 */
  assign n397 = rw_reg ? 1'b1 : 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:123:13 */
  assign n398 = n417 ? n390 : addr_reg;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:138:21 */
  assign n399 = rw_reg & addr_last;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:123:13 */
  assign n400 = n419 ? n394 : rx_begin;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:138:21 */
  assign n402 = addr_last ? n397 : 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:147:50 */
  assign n404 = addr_counter + 4'b0001;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:123:13 */
  assign n405 = n414 ? n383 : addr_shift;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:123:13 */
  assign n406 = n415 ? n404 : addr_counter;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:124:17 */
  assign n407 = n380 & n378;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:124:17 */
  assign n408 = addr_last & n378;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:124:17 */
  assign n409 = n399 & n378;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:124:17 */
  assign n410 = addr_last & n378;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:124:17 */
  assign n411 = n386 & n378;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:124:17 */
  assign n413 = n378 ? n402 : 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:123:13 */
  assign n414 = n378 & spi_pos_edge;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:123:13 */
  assign n415 = n378 & spi_pos_edge;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:123:13 */
  assign n416 = n407 & spi_pos_edge;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:123:13 */
  assign n417 = n408 & spi_pos_edge;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:123:13 */
  assign n418 = n409 & spi_pos_edge;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:123:13 */
  assign n419 = n410 & spi_pos_edge;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:123:13 */
  assign n420 = n411 & spi_pos_edge;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:123:13 */
  assign n422 = spi_pos_edge ? n413 : 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:118:13 */
  assign n423 = spi_ncs_sync ? addr_shift : n405;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:118:13 */
  assign n425 = spi_ncs_sync ? 4'b0000 : n406;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:118:13 */
  assign n426 = spi_ncs_sync ? rw_reg : n384;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:118:13 */
  assign n427 = spi_ncs_sync ? addr_reg : n398;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:118:13 */
  assign n429 = spi_ncs_sync ? 1'b0 : n392;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:118:13 */
  assign n431 = spi_ncs_sync ? 1'b0 : n400;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:118:13 */
  assign n433 = spi_ncs_sync ? 1'b0 : n388;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:118:13 */
  assign n435 = spi_ncs_sync ? 1'b0 : n422;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:163:52 */
  assign n448 = ~rx_done;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:163:40 */
  assign n449 = n448 & rx_begin;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:164:41 */
  assign n450 = rx_shift[30:0]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:164:65 */
  assign n451 = {n450, spi_mosi_sync};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:166:35 */
  assign n453 = rx_counter == 6'b011110;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:162:13 */
  assign n455 = n478 ? 1'b1 : rx_last;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:171:45 */
  assign n456 = rx_shift[30:0]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:171:69 */
  assign n457 = {n456, spi_mosi_sync};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:175:50 */
  assign n459 = rx_counter + 6'b000001;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:170:21 */
  assign n460 = rx_last ? rx_counter : n459;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:162:13 */
  assign n461 = n476 ? n457 : data_reg;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:162:13 */
  assign n463 = n477 ? 1'b1 : rx_done;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:170:21 */
  assign n466 = rx_last ? 1'b1 : 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:162:13 */
  assign n467 = n474 ? n451 : rx_shift;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:162:13 */
  assign n468 = n475 ? n460 : rx_counter;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:163:17 */
  assign n469 = rx_last & n449;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:163:17 */
  assign n470 = rx_last & n449;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:163:17 */
  assign n471 = n453 & n449;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:163:17 */
  assign n473 = n449 ? n466 : 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:162:13 */
  assign n474 = n449 & spi_pos_edge;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:162:13 */
  assign n475 = n449 & spi_pos_edge;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:162:13 */
  assign n476 = n469 & spi_pos_edge;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:162:13 */
  assign n477 = n470 & spi_pos_edge;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:162:13 */
  assign n478 = n471 & spi_pos_edge;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:162:13 */
  assign n480 = spi_pos_edge ? n473 : 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:158:13 */
  assign n481 = spi_ncs_sync ? rx_shift : n467;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:158:13 */
  assign n483 = spi_ncs_sync ? 6'b000000 : n468;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:158:13 */
  assign n484 = spi_ncs_sync ? data_reg : n461;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:158:13 */
  assign n486 = spi_ncs_sync ? 1'b0 : n463;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:158:13 */
  assign n488 = spi_ncs_sync ? 1'b0 : n455;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:158:13 */
  assign n490 = spi_ncs_sync ? 1'b0 : n480;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:191:52 */
  assign n501 = ~tx_done;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:191:40 */
  assign n502 = n501 & tx_begin;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:192:35 */
  assign n504 = tx_counter == 6'b000000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:193:41 */
  assign n505 = i_data[31]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:194:43 */
  assign n506 = i_data[30:0]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:194:67 */
  assign n508 = {n506, 1'b0};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:197:43 */
  assign n509 = tx_shift[31]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:198:45 */
  assign n510 = tx_shift[30:0]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:198:69 */
  assign n512 = {n510, 1'b0};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:192:21 */
  assign n513 = n504 ? n505 : n509;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:192:21 */
  assign n514 = n504 ? n508 : n512;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:201:35 */
  assign n516 = tx_counter == 6'b011111;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:204:50 */
  assign n518 = tx_counter + 6'b000001;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:201:21 */
  assign n519 = n516 ? tx_counter : n518;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:190:13 */
  assign n521 = n529 ? 1'b1 : tx_done;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:190:13 */
  assign n522 = n526 ? n513 : n541;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:190:13 */
  assign n523 = n527 ? n514 : tx_shift;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:190:13 */
  assign n524 = n528 ? n519 : tx_counter;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:191:17 */
  assign n525 = n516 & n502;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:190:13 */
  assign n526 = n502 & spi_neg_edge;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:190:13 */
  assign n527 = n502 & spi_neg_edge;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:190:13 */
  assign n528 = n502 & spi_neg_edge;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:190:13 */
  assign n529 = n525 & spi_neg_edge;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:186:13 */
  assign n530 = spi_ncs_sync ? n541 : n522;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:186:13 */
  assign n531 = spi_ncs_sync ? tx_shift : n523;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:186:13 */
  assign n533 = spi_ncs_sync ? 6'b000000 : n524;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:186:13 */
  assign n535 = spi_ncs_sync ? 1'b0 : n521;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:185:9 */
  always @(posedge i_clk)
    n541 <= n530;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:83:9 */
  always @(posedge i_clk)
    n542 <= n355;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:116:9 */
  always @(posedge i_clk)
    n543 <= n423;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:156:9 */
  always @(posedge i_clk)
    n544 <= n481;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:185:9 */
  always @(posedge i_clk)
    n545 <= n531;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:116:9 */
  always @(posedge i_clk)
    n546 <= n425;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:156:9 */
  always @(posedge i_clk)
    n547 <= n483;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:185:9 */
  always @(posedge i_clk)
    n548 <= n533;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:116:9 */
  always @(posedge i_clk)
    n549 <= n426;
  initial
    n549 = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:116:9 */
  always @(posedge i_clk)
    n550 <= n427;
  initial
    n550 = 7'b0000000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:156:9 */
  always @(posedge i_clk)
    n551 <= n484;
  initial
    n551 = 32'b00000000000000000000000000000000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:116:9 */
  always @(posedge i_clk)
    n552 <= n429;
  initial
    n552 = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:116:9 */
  always @(posedge i_clk)
    n553 <= n431;
  initial
    n553 = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:156:9 */
  always @(posedge i_clk)
    n554 <= n486;
  initial
    n554 = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:185:9 */
  always @(posedge i_clk)
    n555 <= n535;
  initial
    n555 = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:116:9 */
  always @(posedge i_clk)
    n556 <= n433;
  initial
    n556 = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:156:9 */
  always @(posedge i_clk)
    n557 <= n488;
  initial
    n557 = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:90:9 */
  always @(posedge i_clk)
    n558 <= i_spi_clk;
  initial
    n558 = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:90:9 */
  always @(posedge i_clk)
    n559 <= spi_clk_meta;
  initial
    n559 = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:90:9 */
  always @(posedge i_clk)
    n560 <= spi_clk_sync;
  initial
    n560 = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:107:9 */
  always @(posedge i_clk)
    n561 <= i_mosi;
  initial
    n561 = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:107:9 */
  always @(posedge i_clk)
    n562 <= spi_mosi_meta;
  initial
    n562 = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:99:9 */
  always @(posedge i_clk)
    n563 <= i_ncs;
  initial
    n563 = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:99:9 */
  always @(posedge i_clk)
    n564 <= spi_ncs_meta;
  initial
    n564 = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:75:9 */
  always @(posedge i_clk)
    n565 <= n347;
  initial
    n565 = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:75:9 */
  always @(posedge i_clk)
    n566 <= n349;
  initial
    n566 = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:116:9 */
  always @(posedge i_clk)
    n567 <= n435;
  initial
    n567 = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_SLAVE_IP.vhdl:156:9 */
  always @(posedge i_clk)
    n568 <= n490;
  initial
    n568 = 1'b0;
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
  wire n243;
  wire [3:0] n245;
  wire [3:0] n247;
  wire n250;
  wire [9:0] n256;
  wire n260;
  wire n262;
  wire n264;
  wire n266;
  wire n268;
  wire [6:0] n270;
  wire n272;
  wire [5:0] n273;
  reg [2:0] n281;
  reg [6:0] n283;
  reg [31:0] n285;
  reg n289;
  reg n293;
  wire n298;
  wire n301;
  wire [2:0] n309;
  reg [2:0] n310;
  wire [6:0] n311;
  reg [6:0] n312;
  wire [31:0] n313;
  reg [31:0] n314;
  reg [3:0] n315;
  reg n316;
  reg n317;
  reg n318;
  assign o_en_bram = en_bram; //(module output)
  assign o_we_reg = we_reg; //(module output)
  assign o_do = data_reg; //(module output)
  assign o_addr_bram = n256; //(module output)
  assign o_addr_reg = addr_count; //(module output)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:33:12 */
  always @*
    state = n310; // (isignal)
  initial
    state = 3'b000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:34:12 */
  always @*
    addr_count = n312; // (isignal)
  initial
    addr_count = 7'b0000000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:35:12 */
  always @*
    data_reg = n314; // (isignal)
  initial
    data_reg = 32'b00000000000000000000000000000000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:37:12 */
  always @*
    ce_counter = n315; // (isignal)
  initial
    ce_counter = 4'b0000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:38:12 */
  always @*
    ce_refresh = n316; // (isignal)
  initial
    ce_refresh = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:40:12 */
  always @*
    en_bram = n317; // (isignal)
  initial
    en_bram = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:41:12 */
  always @*
    we_reg = n318; // (isignal)
  initial
    we_reg = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:51:23 */
  assign n243 = ce_counter == 4'b1001;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:55:38 */
  assign n245 = ce_counter + 4'b0001;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:51:9 */
  assign n247 = n243 ? 4'b0000 : n245;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:51:9 */
  assign n250 = n243 ? 1'b1 : 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:60:22 */
  assign n256 = {3'b000, addr_count};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:74:17 */
  assign n260 = state == 3'b000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:76:17 */
  assign n262 = state == 3'b001;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:79:17 */
  assign n264 = state == 3'b010;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:81:17 */
  assign n266 = state == 3'b011;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:84:17 */
  assign n268 = state == 3'b100;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:88:45 */
  assign n270 = addr_count + 7'b0000001;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:87:17 */
  assign n272 = state == 3'b101;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:73:13 */
  assign n273 = {n272, n268, n266, n264, n262, n260};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:73:13 */
  always @*
    case (n273)
      6'b100000: n281 = 3'b000;
      6'b010000: n281 = 3'b101;
      6'b001000: n281 = 3'b100;
      6'b000100: n281 = 3'b011;
      6'b000010: n281 = 3'b010;
      6'b000001: n281 = 3'b001;
      default: n281 = 3'bX;
    endcase
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:73:13 */
  always @*
    case (n273)
      6'b100000: n283 = n270;
      6'b010000: n283 = addr_count;
      6'b001000: n283 = addr_count;
      6'b000100: n283 = addr_count;
      6'b000010: n283 = addr_count;
      6'b000001: n283 = addr_count;
      default: n283 = 7'bX;
    endcase
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:73:13 */
  always @*
    case (n273)
      6'b100000: n285 = data_reg;
      6'b010000: n285 = data_reg;
      6'b001000: n285 = i_di;
      6'b000100: n285 = data_reg;
      6'b000010: n285 = data_reg;
      6'b000001: n285 = data_reg;
      default: n285 = 32'bX;
    endcase
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:73:13 */
  always @*
    case (n273)
      6'b100000: n289 = 1'b0;
      6'b010000: n289 = 1'b0;
      6'b001000: n289 = 1'b0;
      6'b000100: n289 = 1'b0;
      6'b000010: n289 = 1'b1;
      6'b000001: n289 = 1'b0;
      default: n289 = 1'bX;
    endcase
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:73:13 */
  always @*
    case (n273)
      6'b100000: n293 = 1'b0;
      6'b010000: n293 = 1'b1;
      6'b001000: n293 = 1'b0;
      6'b000100: n293 = 1'b0;
      6'b000010: n293 = 1'b0;
      6'b000001: n293 = 1'b0;
      default: n293 = 1'bX;
    endcase
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:72:9 */
  assign n298 = ce_refresh ? n289 : 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:72:9 */
  assign n301 = ce_refresh ? n293 : 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:68:5 */
  assign n309 = ce_refresh ? n281 : state;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:68:5 */
  always @(posedge i_clk)
    n310 <= n309;
  initial
    n310 = 3'b000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:68:5 */
  assign n311 = ce_refresh ? n283 : addr_count;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:68:5 */
  always @(posedge i_clk)
    n312 <= n311;
  initial
    n312 = 7'b0000000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:68:5 */
  assign n313 = ce_refresh ? n285 : data_reg;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:68:5 */
  always @(posedge i_clk)
    n314 <= n313;
  initial
    n314 = 32'b00000000000000000000000000000000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:48:5 */
  always @(posedge i_clk)
    n315 <= n247;
  initial
    n315 = 4'b0000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:48:5 */
  always @(posedge i_clk)
    n316 <= n250;
  initial
    n316 = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:68:5 */
  always @(posedge i_clk)
    n317 <= n298;
  initial
    n317 = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\REFRESH_SCH.vhdl:68:5 */
  always @(posedge i_clk)
    n318 <= n301;
  initial
    n318 = 1'b0;
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
  wire [30:0] n204;
  wire n206;
  wire n208;
  wire n210;
  wire [2:0] n211;
  reg [31:0] n212;
  reg [31:0] n213;
  reg [31:0] n214;
  wire [31:0] n222;
  reg [31:0] n223;
  wire [31:0] n224;
  reg [31:0] n225;
  wire [31:0] n226;
  reg [31:0] n227;
  assign o_reg_0 = reg_0; //(module output)
  assign o_reg_1 = reg_1; //(module output)
  assign o_reg_2 = reg_2; //(module output)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:25:12 */
  always @*
    reg_0 = n223; // (isignal)
  initial
    reg_0 = 32'b00000000000001101000110110111001;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:28:12 */
  always @*
    reg_1 = n225; // (isignal)
  initial
    reg_1 = 32'b00000000000000000111111111111111;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:31:12 */
  always @*
    reg_2 = n227; // (isignal)
  initial
    reg_2 = 32'b00000000000000000111111111111111;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:42:22 */
  assign n204 = {24'b0, i_addr};  // uext
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:44:21 */
  assign n206 = n204 == 31'b0000000000000000000000000000000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:47:21 */
  assign n208 = n204 == 31'b0000000000000000000000000000001;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:50:21 */
  assign n210 = n204 == 31'b0000000000000000000000000000010;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:42:17 */
  assign n211 = {n210, n208, n206};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:42:17 */
  always @*
    case (n211)
      3'b100: n212 = reg_0;
      3'b010: n212 = reg_0;
      3'b001: n212 = i_di;
      default: n212 = reg_0;
    endcase
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:42:17 */
  always @*
    case (n211)
      3'b100: n213 = reg_1;
      3'b010: n213 = i_di;
      3'b001: n213 = reg_1;
      default: n213 = reg_1;
    endcase
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:42:17 */
  always @*
    case (n211)
      3'b100: n214 = i_di;
      3'b010: n214 = reg_2;
      3'b001: n214 = reg_2;
      default: n214 = reg_2;
    endcase
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:38:9 */
  assign n222 = i_we ? n212 : reg_0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:38:9 */
  always @(posedge i_clk)
    n223 <= n222;
  initial
    n223 = 32'b00000000000001101000110110111001;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:38:9 */
  assign n224 = i_we ? n213 : reg_1;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:38:9 */
  always @(posedge i_clk)
    n225 <= n224;
  initial
    n225 = 32'b00000000000000000111111111111111;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:38:9 */
  assign n226 = i_we ? n214 : reg_2;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_CFG_REGISTERS_IP.vhdl:38:9 */
  always @(posedge i_clk)
    n227 <= n226;
  initial
    n227 = 32'b00000000000000000111111111111111;
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
  reg [19:0] n192; // mem_rd
  reg [19:0] n194; // mem_rd
  assign do_a = n194; //(module output)
  assign do_b = n192; //(module output)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\bram_dp_sin_lut.vhdl:30:12 */
  always @*
    memory = 20480'b11111111001101101111111111100110110111101111110110100100111011111100110110111101111111000001001011101111101101001001111011111010100000010000111110011011100000101111100011101111011011111000001001101010111101110101111000001111011010010101011111110101110011010000111101010000010010101111010000111100010111110011011101000011111100101010110000101111000111100100010011110001000111001000111100000101010011101110111110001101011011101110110001100001111011011111111011111110110100110111111111101100011100010010111010111010101010011110101011100100001011101010000111011111111010010101011111111110100010010010001111100111110011001010111001110000011101011110011001000010001111100101011111010110111001001011100011011110001111110100100011100011001100000111111000100110110010111110000110101001010011100000111001100001111000000010001100101101111101100000100111011110100111100101110111011101110001101101110100011010110011011100010110011000110110111001100010011101101011011000000011011010000101111100110110010101011111101101100010011000011011010111110110010101110101110001101010011101011001011100010011010101100111100101110101001110000011011101010000100011101111010011011001110001110100101010101011011101000111101111000011010001001100111010110100000111100010111100111110111110010011001111000001000100110011100100101011001100110110010001101111001100110110010010110011000010000100011100101101101001100011001010101100100111110010011111101111111100100101000101111011001000100100000111110001111101101101111100011100100111000111000110011100110011110001011011111111101100010100001101001011000100010110101111110000111010100101011100001011111000010011000010010001111101110000011001100000001100000011101000110011000000001110100010101111111000110000011011111011011110101110111110001100011111101111011000010111001011110011011010010010111100001011110111101110111000010101001011101011011011101110111010001100101101101110011000101010101011100011100011001010111000001111000100101101111001011000101011011011110000101110110110010010111111101101011010011111111011010100000100101010110100011000100000101100111100000000111011001100011111000110110010011111101010101100011101111100001011000101000000001010110000101000100000101100000000010010101010111101101000000110101110110011000100101011100011000100111010110110010110111110101100111111011000101011000110010011101010101111001101000110101011001101100000101010101001111111011010101000001010011010101001011101011101101010001110001000101010100001001111010010100111101111010011101001110010110000001010011010011011101010100110000011000011101001010111110110011010010011101111110110100100011000110000101000111101011100001010001101001011111110100010110000011100101000100011100001111010000110110000000110100001001010001001101000001010001000001010000000011100011010011111100101111010100111110001001111011001111010010000111110011110000011110001100111011000111000011001110100001110000110011100100011101111100111000001000011101001101110010011101110011011000101111000100110101001110001011001101000100010000110011001101010001101100110010011000010011001100010111001010010011000010000110000100101111100110110111001011101011001011110010110111001100011100101100111001111111001011000000010101110010101100100100111100101010010001101001001010010110101001010010100010010000000100100111101101111101001001101110000111010010011000001101110100100101001110111101001001000110110000010010001110011110011100100010110100101101001000100000100101110010000101000010001100100000011111010001000111111011101000010001111011111001001100011110001110101001000111010111111000010001110011000011110100011100000010111011000110110101010111010001101010100010001100011001111100001011000110010100000101110001100010010100010100010111111010011001000101110100000011110001011010011010100100010101111101101001000101010101010010110001010010110101001100010100000101111101000100110111110011010001001011100100000100010010010011011001000100011011100101110001000100100111100100010000100101111111000100000000101010110000111101111111110100001110111101110011000011100111000011010000110111101100110100001101011010110011000011001110101111110000110001101110111100001011111101000101000010110111110000010000101100000110001100001010100100101001000010100010000101110000100110110010100100001001010001100011000010001101110000010000100001110100011100001000000011110001000001111010110000110000011101001011101100000110111011011001000001101001000111110000011000111000100100000101111000011011000001011000110100110000010100111011000100000100111010110111000001001001111000110000010001010011011100000100000010101111000000111100010100010000001110000001011100000011010000000111000000110000000110110000001011000101100100000010100010111011000000100101010001110000001000011111011100000001111011010001000000011011110100010000000110001111011100000001011001000111000000010011101111010000000100010101100100000000111100011101000000001101000010010000000010110001110100000000100101010111000000000111101110010000000001100100000100000000010011110011000000000011110010110000000000101100100100000000000111110001000000000001001111110000000000001011010100000000000001010001000000000000000101110000000000000000001100000000000000010111000000000000010100010000000000001011010100000000000100111111000000000001111100010000000000101100100100000000001111001011000000000100111100110000000001100100000100000000011110111001000000001001010101110000000010110001110100000000110100001001000000001111000111010000000100010101100100000001001110111101000000010110010001110000000110001111011100000001101111010001000000011110110100010000001000011111011100000010010101000111000000101000101110110000001011000101100100000011000000011011000000110100000001110000001110000001011100000011110001010001000001000000101011110000010001010011011100000100100111100011000001001110101101110000010100111011000100000101100011010011000001011110000110110000011000111000100100000110100100011111000001101110110110010000011101001011101100000111101011000011000010000000111100010000100001110100011100001000110111000001000010010100011000110000100110110010100100001010001000010111000010101001001010010000101100000110001100001011011111000001000010111111010001010000110001101110111100001100111010111111000011010110101100110000110111101100110100001110011100001101000011101111011100110000111101111111110100010000000010101011000100001001011111110001000100100111100100010001101110010111000100100100110110010001001011100100000100010011011111001101000101000001011111010001010010110101001100010101010101001011000101011111011010010001011010011010100100010111010000001111000101111110100110010001100010010100010100011001010000010111000110011111000010110001101010100010001100011011010101011101000111000000101110110001110011000011110100011101011111100001000111100011101010010001111011111001001100011111101110100001001000000111110100010010000101000010001100100010000010010111001000101101001011010010001110011110011100100100011011000001001001010011101111010010011000001101110100100110111000011101001001111011011111010010100010010000000100101001011010100101001010100100011010010010101100100100111100101100000001010111001011001110011111110010110111001100011100101110101100101111001011111001101101110011000010000110000100110001011100101001001100100110000100110011001101010001101100110100010001000011001101010011100010110011011000101111000100110111001001110111001110000010000111010011100100011101111100111010000111000011001110110001110000110011110000011110001100111101001000011111001111100010011110110011111100101111010101000000001110001101010000010100010000010100001001010001001101000011011000000011010001000111000011110100010110000011100101000110100101111111010001111010111000010100100011000110000101001001110111111011010010101111101100110100110000011000011101001101001101110101010011100101100000010100111101111010011101010000100111101001010100011100010001010101001011101011101101010100000101001101010101010011111110110101011001101100000101010111100110100011010110001100100111010101100111111011000101011011001011011111010111000110001001110101110110011000100101011110110100000011011000000000100101010110000101000100000101100010100000000101011000111011111000010110010011111101010101100110001111100011011001111000000001110110100011000100000101101010000010010101011010110100111111110110110010010111111101101101111000010111011011110010110001010111000001111000100101110001110001100101011100110001010101010111010001100101101101110101101101110111011101110000101010010111100001011110111101111001101101001001011110110000101110010111110001100011111101111101101111010111011111110001100000111000000001110100010110000001110100011001100000110011000000011000010010001111101110000101111100001001100001110101001010111000100010110101111110001010000110100101100010110111111111011000110011100110011110001110010011100011100011111011011011111001000100100000111110010010100010111101100100111111011111111001010101100100111110010110110100110001100110000100001000111001100110110010010110011011001000110111100111001001010110011001111000001000100110011111011111001001101000001111000101111010001001100111010110100011110111100001101001010101010110111010011011001110001110101000010001110111101010011100000110111010101100111100101110101100101110001001101011100011010100111010111110110010101110110001001100001101101100101010111111011011010000101111100110110101101100000001101101110011000100111011100010110011000110111010001101011001101110111011100011011011110100111100101110111110110000010011110000000100011001011100000111001100001111000011010100101001110001001101100101111100011001100000111111000111111010010001110010010111000110111100101011111010110111001100100001000111110011100000111010111100111110011001010111010001001001000111110100101010111111111101010000111011111111010101110010000101110101110101010100111101100011100010010111011010011011111111110110111111110111111101110110001100001111011111000110101101111000001010100111011110001000111001000111100011110010001001111001010101100001011110011011101000011111101000011110001011111010100000100101011110101110011010000111101101001010101111111011101011110000011111000001001101010111110001110111101101111100110111000001011111010100000010000111110110100100111101111110000010010111011111100110110111101111111011010010011101111111001101101111011111111001101101111000000000000000000000000000011001001000100000001100100100010000000100101101100100000001100100100001100000011111011010010000001001011011000100000010101111111000000000110010001111110000001110001000010100000011111011001011000001000101000100000000010010110101010010000101000110011000000001010111110110110000010111100001110110000110010001011110100001101010100111110000011100001101111000000111011100011100000001111101010110010000100000111001010100001000100111001111100010010000000010001000100101100100000010001001110001110111000010100010101010111000101010001101111100001010111100010000100010110101010000001000101110110110111010001100000110011011000011000111110001011000110011011110111010001101010000010101000011011010001110011000111000000101110000001110011001111100100011101100100110101000111100101011011000001111100011001111100011111110111001110001000001001111101110010000101100001101100100010001000111010001000101110010101000010001110100110100000100100011001110111001001010010100000000010010111101000010000100110101010000010001001110110011110100010100000100110101100101000111001010111001010011010001111000010101001100001101100101011000111110011001010111101110001010010110010011000111100101101010101010011001011100001000100000010111011001100011000101111100001110101001100000100000111000011000011111011110000110001101101010100001100100110111001010011001100100110111000110011110111101111001101001001011010000011010101001101100100110110000001000001001101101011101000100011011101101111100100111000001001001001001110001101100011110011100110001100110100111010010000000010001110101111001011100011101110100101000100111100010101101011001111010000011111000011110110111000001100111110011010000000001111110001011101000011111111000101111001000000011100111111010000010010000101010100000111001110000101000010011110100100010000110010010111000100001111010000100101000100011110101100010001010010010001010100010111001101001101000110011101010110010001110001110011100100011111000011110001001000011010011110010010010000111101010100100110110100000101001010010110000001010010101111101101100100101110011110000001001100001111111101010011001110000011110100110110000001011001001110001000010000010011101011111111100100111101011110000001001111111110110110010100001001011111110101000100110011110001010001110011101101010100100110100100010101001100000010100001010011100110110010010101000011001011110101010011001010000001010101011000000011010101011111010110100101011010001010001101010111000111011110010101111011000011000101100001000010110101011000110101000000010110010110010001100101100111110011110101011010100000100111010110110001000000110101101110011101000001011100001010010000010111001011010000010101110100111110010001011101110001111001010111100100111111110101111011010111011101011111010111100000010111111110001110100110000001101000011001100000111011000011011000010110111100010110000111110000111101100010011100011111011000101111000111110110001101110001000101100011111011110010011001000110110001010110010011101000100001100101011000111011011001011101110111110110011001010111001101100110110011110111011001110100011011000110011110111101000001101000001100100101011010001010011010010110100100011001110101101001100011000001011010011111110101010110101001101101100101101010110111001100011010110100101011100110101110111000000001101100001001000010011011001000111100100110110011111001001001101101011000100010011011011100101000000110111000110000110101101110100101101010011011101111101101010110111101011110111101101111110000011000011100000010001100000111000010000011011101110000111000101100011100010100000100000111000110011110001001110001111110100011011100100101010100100111001010101110111101110011000001111011011100110101111101010111001110110101111001110100000010110100011101000101111110010111010010110010110001110101000001001100011101010101010110110111010110100101011101110101111101000010011101100100000110100111011010001110000001110110110110010100011101110010001101010111011101101100010001110111101101000001011101111111101010110111100001000000001001111000100001000111011110001100011110100111100100001001101001111001010010100111011110011000101000010111100111001000100101111010000001011110011110100100001000000111101001111100111101111010101101101100011110101110111101010111101100100110110001111011010111001111011110111001001000000111101111000101110101111011111110001000011111000010100111110111110001011010001101111100100010010100011111001011011100010111110011100011110001111101000011110011011111010011100101110111110101100010100001111101100010100101011111011011000011110111110111010110010101111101111110101001011111100001110110000111111000111111010101111110010111111101011111100111111100110111111010011101010001111110101110100011011111101101010111010111111011110000010101111111000010011000011111110010000110000111111100111000010101111111010011011101011111110110001000100111111101110101010001111111100001110010011111111001011111000111111110100111001001111111101101010101011111111100001001000111111111001110000001111111110110000111011111111110000110110111111111101001110001111111111100001000011111111111011000010111111111111010011001111111111111011000011111111111111101010111111111111111111101111111111111110101011111111111110110000111111111111010011001111111111101100001011111111111000010000111111111101001110001111111111000011011011111111101100001110111111111001110000001111111110000100100011111111011010101010111111110100111001001111111100101111100011111111000011100100111111101110101010001111111011000100010011111110100110111010111111100111000010101111111001000011000011111110000100110000111111011110000010101111110110101011101011111101011101000110111111010011101010001111110011111110011011111100101111111010111111000111111010101111110000111011000011111011111101010010111110111010110010101111101101100001111011111011000101001010111110101100010100001111101001110010111011111010000111100110111110011100011110001111100101101110001011111001000100101000111110001011010001101111100001010011111011110111111100010000111101111000101110101111011100100100000011110110101110011110111101100100110110001111010111011110101011110101011011011000111101001111100111101111010010000100000011110100000010111100111100111001000100101111001100010100001011110010100101001110111100100001001101001111000110001111010011110001000010001110111100001000000001001110111111110101011011101111011010000010111011101101100010001110111001000110101011101101101100101000111011010001110000001110110010000011010011101011111010000100111010110100101011101110101010101011011011101010000010011000111010010110010110001110100010111111001011101000000101101000111001110110101111001110011010111110101011100110000011110110111001010101110111101110010010101010010011100011111101000110111000110011110001001110001010000010000011100001110001011000111000010000011011101110000001000110000011011111100000110000110111101011110111101101110111110110101011011101001011010100110111000110000110101101101110010100000011011010110001000100110110011111001001001101100100011110010011011000010010000100110101110111000000001101011010010101110011010101101110011000110101001101101100101101001111111010101011010011000110000010110100100011001110101101000101001101001011010000011001001010110011110111101000001100111010001101100011001101100111101110110011001010111001101100101110111011111011001010110001110110110010011101000100001100100011011000101011000111110111100100110001101110001000101100010111100011111011000100111000111110110000111110000111101100001011011110001011000001110110000110110000001101000011001011111111000111010010111110101111000000101111011010111011101011110010011111111010111011100011110010101110100111110010001011100101101000001010111000010100100000101101110011101000001011011000100000011010110101000001001110101100111110011110101011001011001000110010110001101010000000101100001000010110101010111101100001100010101110001110111100101011010001010001101010101111101011010010101010110000000110101010011001010000001010100001100101111010100111001101100100101001100000010100001010010011010010001010100011100111011010101000100110011110001010000100101111111010011111111101101100100111101011110000001001110101111111110010011100010000100000100110110000001011001001100111000001111010011000011111111010100101110011110000001001010111110110110010010100101100000010100100110110100000101001001000011110101010010000110100111100100011111000011110001000111000111001110010001100111010101100100010111001101001101000101001001000101010001000111101011000100001111010000100101000011001001011100010000100111101001000100000111001110000101000001001000010101010000000111001111110011111111000101111000111111000101110100001111100110100000000011110110111000001100111101000001111100001111000101011010110011101110100101000100111010111100101110001110100100000000100011100110001100110100111000110110001111001110000010010010010011011101101111100100110110101110100010001101100000010000010011010101001101100100110100100101101000001100111101111011110011001100100110111000110010011011100101001100011011010101000011000011111011110000110000010000011100001011111000011101010010111011001100011000101110000100010000001011010101010100110010110010011000111100101011110111000101001010110001111100110010101001100001101100101001101000111100001010001110010101110010100000100110101100100111011001111010001001101010100000100010010111101000010000100101001010000000001001000110011101110010001110100110100000100010111001010100001000100010001110100010000101100001101100100000100111110111000111111101110011100001111100011001111100011110010101101100000111011001001101010001110011001111100100011100000010111000000110110100011100110001101010000010101000011001101111011101000110001111100010110001100000110011011000010111011011011101000101101010100000010001010111100010000100010101000110111110000101000101010101110001001110001110111000010010110010000001000100100000000100010001000100111001111100010000011100101010000011111010101100100000111011100011100000001110000110111100000011010101001111100000110010001011110100001011110000111011000010101111101101100000101000110011000000001001011010101001000010001010001000000000011111011001011000000111000100001010000001100100011111100000010101111111000000000100101101100010000000111110110100100000001100100100001100000010010110110010000000011001001000100000000011001001000100000000000000000000; // (isignal)
  initial
    memory = 20480'b11111111001101101111111111100110110111101111110110100100111011111100110110111101111111000001001011101111101101001001111011111010100000010000111110011011100000101111100011101111011011111000001001101010111101110101111000001111011010010101011111110101110011010000111101010000010010101111010000111100010111110011011101000011111100101010110000101111000111100100010011110001000111001000111100000101010011101110111110001101011011101110110001100001111011011111111011111110110100110111111111101100011100010010111010111010101010011110101011100100001011101010000111011111111010010101011111111110100010010010001111100111110011001010111001110000011101011110011001000010001111100101011111010110111001001011100011011110001111110100100011100011001100000111111000100110110010111110000110101001010011100000111001100001111000000010001100101101111101100000100111011110100111100101110111011101110001101101110100011010110011011100010110011000110110111001100010011101101011011000000011011010000101111100110110010101011111101101100010011000011011010111110110010101110101110001101010011101011001011100010011010101100111100101110101001110000011011101010000100011101111010011011001110001110100101010101011011101000111101111000011010001001100111010110100000111100010111100111110111110010011001111000001000100110011100100101011001100110110010001101111001100110110010010110011000010000100011100101101101001100011001010101100100111110010011111101111111100100101000101111011001000100100000111110001111101101101111100011100100111000111000110011100110011110001011011111111101100010100001101001011000100010110101111110000111010100101011100001011111000010011000010010001111101110000011001100000001100000011101000110011000000001110100010101111111000110000011011111011011110101110111110001100011111101111011000010111001011110011011010010010111100001011110111101110111000010101001011101011011011101110111010001100101101101110011000101010101011100011100011001010111000001111000100101101111001011000101011011011110000101110110110010010111111101101011010011111111011010100000100101010110100011000100000101100111100000000111011001100011111000110110010011111101010101100011101111100001011000101000000001010110000101000100000101100000000010010101010111101101000000110101110110011000100101011100011000100111010110110010110111110101100111111011000101011000110010011101010101111001101000110101011001101100000101010101001111111011010101000001010011010101001011101011101101010001110001000101010100001001111010010100111101111010011101001110010110000001010011010011011101010100110000011000011101001010111110110011010010011101111110110100100011000110000101000111101011100001010001101001011111110100010110000011100101000100011100001111010000110110000000110100001001010001001101000001010001000001010000000011100011010011111100101111010100111110001001111011001111010010000111110011110000011110001100111011000111000011001110100001110000110011100100011101111100111000001000011101001101110010011101110011011000101111000100110101001110001011001101000100010000110011001101010001101100110010011000010011001100010111001010010011000010000110000100101111100110110111001011101011001011110010110111001100011100101100111001111111001011000000010101110010101100100100111100101010010001101001001010010110101001010010100010010000000100100111101101111101001001101110000111010010011000001101110100100101001110111101001001000110110000010010001110011110011100100010110100101101001000100000100101110010000101000010001100100000011111010001000111111011101000010001111011111001001100011110001110101001000111010111111000010001110011000011110100011100000010111011000110110101010111010001101010100010001100011001111100001011000110010100000101110001100010010100010100010111111010011001000101110100000011110001011010011010100100010101111101101001000101010101010010110001010010110101001100010100000101111101000100110111110011010001001011100100000100010010010011011001000100011011100101110001000100100111100100010000100101111111000100000000101010110000111101111111110100001110111101110011000011100111000011010000110111101100110100001101011010110011000011001110101111110000110001101110111100001011111101000101000010110111110000010000101100000110001100001010100100101001000010100010000101110000100110110010100100001001010001100011000010001101110000010000100001110100011100001000000011110001000001111010110000110000011101001011101100000110111011011001000001101001000111110000011000111000100100000101111000011011000001011000110100110000010100111011000100000100111010110111000001001001111000110000010001010011011100000100000010101111000000111100010100010000001110000001011100000011010000000111000000110000000110110000001011000101100100000010100010111011000000100101010001110000001000011111011100000001111011010001000000011011110100010000000110001111011100000001011001000111000000010011101111010000000100010101100100000000111100011101000000001101000010010000000010110001110100000000100101010111000000000111101110010000000001100100000100000000010011110011000000000011110010110000000000101100100100000000000111110001000000000001001111110000000000001011010100000000000001010001000000000000000101110000000000000000001100000000000000010111000000000000010100010000000000001011010100000000000100111111000000000001111100010000000000101100100100000000001111001011000000000100111100110000000001100100000100000000011110111001000000001001010101110000000010110001110100000000110100001001000000001111000111010000000100010101100100000001001110111101000000010110010001110000000110001111011100000001101111010001000000011110110100010000001000011111011100000010010101000111000000101000101110110000001011000101100100000011000000011011000000110100000001110000001110000001011100000011110001010001000001000000101011110000010001010011011100000100100111100011000001001110101101110000010100111011000100000101100011010011000001011110000110110000011000111000100100000110100100011111000001101110110110010000011101001011101100000111101011000011000010000000111100010000100001110100011100001000110111000001000010010100011000110000100110110010100100001010001000010111000010101001001010010000101100000110001100001011011111000001000010111111010001010000110001101110111100001100111010111111000011010110101100110000110111101100110100001110011100001101000011101111011100110000111101111111110100010000000010101011000100001001011111110001000100100111100100010001101110010111000100100100110110010001001011100100000100010011011111001101000101000001011111010001010010110101001100010101010101001011000101011111011010010001011010011010100100010111010000001111000101111110100110010001100010010100010100011001010000010111000110011111000010110001101010100010001100011011010101011101000111000000101110110001110011000011110100011101011111100001000111100011101010010001111011111001001100011111101110100001001000000111110100010010000101000010001100100010000010010111001000101101001011010010001110011110011100100100011011000001001001010011101111010010011000001101110100100110111000011101001001111011011111010010100010010000000100101001011010100101001010100100011010010010101100100100111100101100000001010111001011001110011111110010110111001100011100101110101100101111001011111001101101110011000010000110000100110001011100101001001100100110000100110011001101010001101100110100010001000011001101010011100010110011011000101111000100110111001001110111001110000010000111010011100100011101111100111010000111000011001110110001110000110011110000011110001100111101001000011111001111100010011110110011111100101111010101000000001110001101010000010100010000010100001001010001001101000011011000000011010001000111000011110100010110000011100101000110100101111111010001111010111000010100100011000110000101001001110111111011010010101111101100110100110000011000011101001101001101110101010011100101100000010100111101111010011101010000100111101001010100011100010001010101001011101011101101010100000101001101010101010011111110110101011001101100000101010111100110100011010110001100100111010101100111111011000101011011001011011111010111000110001001110101110110011000100101011110110100000011011000000000100101010110000101000100000101100010100000000101011000111011111000010110010011111101010101100110001111100011011001111000000001110110100011000100000101101010000010010101011010110100111111110110110010010111111101101101111000010111011011110010110001010111000001111000100101110001110001100101011100110001010101010111010001100101101101110101101101110111011101110000101010010111100001011110111101111001101101001001011110110000101110010111110001100011111101111101101111010111011111110001100000111000000001110100010110000001110100011001100000110011000000011000010010001111101110000101111100001001100001110101001010111000100010110101111110001010000110100101100010110111111111011000110011100110011110001110010011100011100011111011011011111001000100100000111110010010100010111101100100111111011111111001010101100100111110010110110100110001100110000100001000111001100110110010010110011011001000110111100111001001010110011001111000001000100110011111011111001001101000001111000101111010001001100111010110100011110111100001101001010101010110111010011011001110001110101000010001110111101010011100000110111010101100111100101110101100101110001001101011100011010100111010111110110010101110110001001100001101101100101010111111011011010000101111100110110101101100000001101101110011000100111011100010110011000110111010001101011001101110111011100011011011110100111100101110111110110000010011110000000100011001011100000111001100001111000011010100101001110001001101100101111100011001100000111111000111111010010001110010010111000110111100101011111010110111001100100001000111110011100000111010111100111110011001010111010001001001000111110100101010111111111101010000111011111111010101110010000101110101110101010100111101100011100010010111011010011011111111110110111111110111111101110110001100001111011111000110101101111000001010100111011110001000111001000111100011110010001001111001010101100001011110011011101000011111101000011110001011111010100000100101011110101110011010000111101101001010101111111011101011110000011111000001001101010111110001110111101101111100110111000001011111010100000010000111110110100100111101111110000010010111011111100110110111101111111011010010011101111111001101101111011111111001101101111000000000000000000000000000011001001000100000001100100100010000000100101101100100000001100100100001100000011111011010010000001001011011000100000010101111111000000000110010001111110000001110001000010100000011111011001011000001000101000100000000010010110101010010000101000110011000000001010111110110110000010111100001110110000110010001011110100001101010100111110000011100001101111000000111011100011100000001111101010110010000100000111001010100001000100111001111100010010000000010001000100101100100000010001001110001110111000010100010101010111000101010001101111100001010111100010000100010110101010000001000101110110110111010001100000110011011000011000111110001011000110011011110111010001101010000010101000011011010001110011000111000000101110000001110011001111100100011101100100110101000111100101011011000001111100011001111100011111110111001110001000001001111101110010000101100001101100100010001000111010001000101110010101000010001110100110100000100100011001110111001001010010100000000010010111101000010000100110101010000010001001110110011110100010100000100110101100101000111001010111001010011010001111000010101001100001101100101011000111110011001010111101110001010010110010011000111100101101010101010011001011100001000100000010111011001100011000101111100001110101001100000100000111000011000011111011110000110001101101010100001100100110111001010011001100100110111000110011110111101111001101001001011010000011010101001101100100110110000001000001001101101011101000100011011101101111100100111000001001001001001110001101100011110011100110001100110100111010010000000010001110101111001011100011101110100101000100111100010101101011001111010000011111000011110110111000001100111110011010000000001111110001011101000011111111000101111001000000011100111111010000010010000101010100000111001110000101000010011110100100010000110010010111000100001111010000100101000100011110101100010001010010010001010100010111001101001101000110011101010110010001110001110011100100011111000011110001001000011010011110010010010000111101010100100110110100000101001010010110000001010010101111101101100100101110011110000001001100001111111101010011001110000011110100110110000001011001001110001000010000010011101011111111100100111101011110000001001111111110110110010100001001011111110101000100110011110001010001110011101101010100100110100100010101001100000010100001010011100110110010010101000011001011110101010011001010000001010101011000000011010101011111010110100101011010001010001101010111000111011110010101111011000011000101100001000010110101011000110101000000010110010110010001100101100111110011110101011010100000100111010110110001000000110101101110011101000001011100001010010000010111001011010000010101110100111110010001011101110001111001010111100100111111110101111011010111011101011111010111100000010111111110001110100110000001101000011001100000111011000011011000010110111100010110000111110000111101100010011100011111011000101111000111110110001101110001000101100011111011110010011001000110110001010110010011101000100001100101011000111011011001011101110111110110011001010111001101100110110011110111011001110100011011000110011110111101000001101000001100100101011010001010011010010110100100011001110101101001100011000001011010011111110101010110101001101101100101101010110111001100011010110100101011100110101110111000000001101100001001000010011011001000111100100110110011111001001001101101011000100010011011011100101000000110111000110000110101101110100101101010011011101111101101010110111101011110111101101111110000011000011100000010001100000111000010000011011101110000111000101100011100010100000100000111000110011110001001110001111110100011011100100101010100100111001010101110111101110011000001111011011100110101111101010111001110110101111001110100000010110100011101000101111110010111010010110010110001110101000001001100011101010101010110110111010110100101011101110101111101000010011101100100000110100111011010001110000001110110110110010100011101110010001101010111011101101100010001110111101101000001011101111111101010110111100001000000001001111000100001000111011110001100011110100111100100001001101001111001010010100111011110011000101000010111100111001000100101111010000001011110011110100100001000000111101001111100111101111010101101101100011110101110111101010111101100100110110001111011010111001111011110111001001000000111101111000101110101111011111110001000011111000010100111110111110001011010001101111100100010010100011111001011011100010111110011100011110001111101000011110011011111010011100101110111110101100010100001111101100010100101011111011011000011110111110111010110010101111101111110101001011111100001110110000111111000111111010101111110010111111101011111100111111100110111111010011101010001111110101110100011011111101101010111010111111011110000010101111111000010011000011111110010000110000111111100111000010101111111010011011101011111110110001000100111111101110101010001111111100001110010011111111001011111000111111110100111001001111111101101010101011111111100001001000111111111001110000001111111110110000111011111111110000110110111111111101001110001111111111100001000011111111111011000010111111111111010011001111111111111011000011111111111111101010111111111111111111101111111111111110101011111111111110110000111111111111010011001111111111101100001011111111111000010000111111111101001110001111111111000011011011111111101100001110111111111001110000001111111110000100100011111111011010101010111111110100111001001111111100101111100011111111000011100100111111101110101010001111111011000100010011111110100110111010111111100111000010101111111001000011000011111110000100110000111111011110000010101111110110101011101011111101011101000110111111010011101010001111110011111110011011111100101111111010111111000111111010101111110000111011000011111011111101010010111110111010110010101111101101100001111011111011000101001010111110101100010100001111101001110010111011111010000111100110111110011100011110001111100101101110001011111001000100101000111110001011010001101111100001010011111011110111111100010000111101111000101110101111011100100100000011110110101110011110111101100100110110001111010111011110101011110101011011011000111101001111100111101111010010000100000011110100000010111100111100111001000100101111001100010100001011110010100101001110111100100001001101001111000110001111010011110001000010001110111100001000000001001110111111110101011011101111011010000010111011101101100010001110111001000110101011101101101100101000111011010001110000001110110010000011010011101011111010000100111010110100101011101110101010101011011011101010000010011000111010010110010110001110100010111111001011101000000101101000111001110110101111001110011010111110101011100110000011110110111001010101110111101110010010101010010011100011111101000110111000110011110001001110001010000010000011100001110001011000111000010000011011101110000001000110000011011111100000110000110111101011110111101101110111110110101011011101001011010100110111000110000110101101101110010100000011011010110001000100110110011111001001001101100100011110010011011000010010000100110101110111000000001101011010010101110011010101101110011000110101001101101100101101001111111010101011010011000110000010110100100011001110101101000101001101001011010000011001001010110011110111101000001100111010001101100011001101100111101110110011001010111001101100101110111011111011001010110001110110110010011101000100001100100011011000101011000111110111100100110001101110001000101100010111100011111011000100111000111110110000111110000111101100001011011110001011000001110110000110110000001101000011001011111111000111010010111110101111000000101111011010111011101011110010011111111010111011100011110010101110100111110010001011100101101000001010111000010100100000101101110011101000001011011000100000011010110101000001001110101100111110011110101011001011001000110010110001101010000000101100001000010110101010111101100001100010101110001110111100101011010001010001101010101111101011010010101010110000000110101010011001010000001010100001100101111010100111001101100100101001100000010100001010010011010010001010100011100111011010101000100110011110001010000100101111111010011111111101101100100111101011110000001001110101111111110010011100010000100000100110110000001011001001100111000001111010011000011111111010100101110011110000001001010111110110110010010100101100000010100100110110100000101001001000011110101010010000110100111100100011111000011110001000111000111001110010001100111010101100100010111001101001101000101001001000101010001000111101011000100001111010000100101000011001001011100010000100111101001000100000111001110000101000001001000010101010000000111001111110011111111000101111000111111000101110100001111100110100000000011110110111000001100111101000001111100001111000101011010110011101110100101000100111010111100101110001110100100000000100011100110001100110100111000110110001111001110000010010010010011011101101111100100110110101110100010001101100000010000010011010101001101100100110100100101101000001100111101111011110011001100100110111000110010011011100101001100011011010101000011000011111011110000110000010000011100001011111000011101010010111011001100011000101110000100010000001011010101010100110010110010011000111100101011110111000101001010110001111100110010101001100001101100101001101000111100001010001110010101110010100000100110101100100111011001111010001001101010100000100010010111101000010000100101001010000000001001000110011101110010001110100110100000100010111001010100001000100010001110100010000101100001101100100000100111110111000111111101110011100001111100011001111100011110010101101100000111011001001101010001110011001111100100011100000010111000000110110100011100110001101010000010101000011001101111011101000110001111100010110001100000110011011000010111011011011101000101101010100000010001010111100010000100010101000110111110000101000101010101110001001110001110111000010010110010000001000100100000000100010001000100111001111100010000011100101010000011111010101100100000111011100011100000001110000110111100000011010101001111100000110010001011110100001011110000111011000010101111101101100000101000110011000000001001011010101001000010001010001000000000011111011001011000000111000100001010000001100100011111100000010101111111000000000100101101100010000000111110110100100000001100100100001100000010010110110010000000011001001000100000000011001001000100000000000000000000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\bram_dp_sin_lut.vhdl:1063:28 */
  reg [19:0] n189[1023:0] ; // memory
  initial begin
    n189[1023] = 20'b11111111001101101111;
    n189[1022] = 20'b11111110011011011110;
    n189[1021] = 20'b11111101101001001110;
    n189[1020] = 20'b11111100110110111101;
    n189[1019] = 20'b11111100000100101110;
    n189[1018] = 20'b11111011010010011110;
    n189[1017] = 20'b11111010100000010000;
    n189[1016] = 20'b11111001101110000010;
    n189[1015] = 20'b11111000111011110110;
    n189[1014] = 20'b11111000001001101010;
    n189[1013] = 20'b11110111010111100000;
    n189[1012] = 20'b11110110100101010111;
    n189[1011] = 20'b11110101110011010000;
    n189[1010] = 20'b11110101000001001010;
    n189[1009] = 20'b11110100001111000101;
    n189[1008] = 20'b11110011011101000011;
    n189[1007] = 20'b11110010101011000010;
    n189[1006] = 20'b11110001111001000100;
    n189[1005] = 20'b11110001000111001000;
    n189[1004] = 20'b11110000010101001110;
    n189[1003] = 20'b11101111100011010110;
    n189[1002] = 20'b11101110110001100001;
    n189[1001] = 20'b11101101111111101111;
    n189[1000] = 20'b11101101001101111111;
    n189[999] = 20'b11101100011100010010;
    n189[998] = 20'b11101011101010101001;
    n189[997] = 20'b11101010111001000010;
    n189[996] = 20'b11101010000111011111;
    n189[995] = 20'b11101001010101111111;
    n189[994] = 20'b11101000100100100011;
    n189[993] = 20'b11100111110011001010;
    n189[992] = 20'b11100111000001110101;
    n189[991] = 20'b11100110010000100011;
    n189[990] = 20'b11100101011111010110;
    n189[989] = 20'b11100100101110001101;
    n189[988] = 20'b11100011111101001000;
    n189[987] = 20'b11100011001100000111;
    n189[986] = 20'b11100010011011001011;
    n189[985] = 20'b11100001101010010100;
    n189[984] = 20'b11100000111001100001;
    n189[983] = 20'b11100000001000110010;
    n189[982] = 20'b11011111011000001001;
    n189[981] = 20'b11011110100111100101;
    n189[980] = 20'b11011101110111000110;
    n189[979] = 20'b11011101000110101100;
    n189[978] = 20'b11011100010110011000;
    n189[977] = 20'b11011011100110001001;
    n189[976] = 20'b11011010110110000000;
    n189[975] = 20'b11011010000101111100;
    n189[974] = 20'b11011001010101111110;
    n189[973] = 20'b11011000100110000110;
    n189[972] = 20'b11010111110110010101;
    n189[971] = 20'b11010111000110101001;
    n189[970] = 20'b11010110010111000100;
    n189[969] = 20'b11010101100111100101;
    n189[968] = 20'b11010100111000001101;
    n189[967] = 20'b11010100001000111011;
    n189[966] = 20'b11010011011001110001;
    n189[965] = 20'b11010010101010101101;
    n189[964] = 20'b11010001111011110000;
    n189[963] = 20'b11010001001100111010;
    n189[962] = 20'b11010000011110001011;
    n189[961] = 20'b11001111101111100100;
    n189[960] = 20'b11001111000001000100;
    n189[959] = 20'b11001110010010101100;
    n189[958] = 20'b11001101100100011011;
    n189[957] = 20'b11001100110110010010;
    n189[956] = 20'b11001100001000010001;
    n189[955] = 20'b11001011011010011000;
    n189[954] = 20'b11001010101100100111;
    n189[953] = 20'b11001001111110111111;
    n189[952] = 20'b11001001010001011110;
    n189[951] = 20'b11001000100100000111;
    n189[950] = 20'b11000111110110110111;
    n189[949] = 20'b11000111001001110001;
    n189[948] = 20'b11000110011100110011;
    n189[947] = 20'b11000101101111111110;
    n189[946] = 20'b11000101000011010010;
    n189[945] = 20'b11000100010110101111;
    n189[944] = 20'b11000011101010010101;
    n189[943] = 20'b11000010111110000100;
    n189[942] = 20'b11000010010001111101;
    n189[941] = 20'b11000001100110000000;
    n189[940] = 20'b11000000111010001100;
    n189[939] = 20'b11000000001110100010;
    n189[938] = 20'b10111111100011000001;
    n189[937] = 20'b10111110110111101011;
    n189[936] = 20'b10111110001100011111;
    n189[935] = 20'b10111101100001011100;
    n189[934] = 20'b10111100110110100100;
    n189[933] = 20'b10111100001011110111;
    n189[932] = 20'b10111011100001010100;
    n189[931] = 20'b10111010110110111011;
    n189[930] = 20'b10111010001100101101;
    n189[929] = 20'b10111001100010101010;
    n189[928] = 20'b10111000111000110010;
    n189[927] = 20'b10111000001111000100;
    n189[926] = 20'b10110111100101100010;
    n189[925] = 20'b10110110111100001011;
    n189[924] = 20'b10110110010010111111;
    n189[923] = 20'b10110101101001111111;
    n189[922] = 20'b10110101000001001010;
    n189[921] = 20'b10110100011000100000;
    n189[920] = 20'b10110011110000000011;
    n189[919] = 20'b10110011000111110001;
    n189[918] = 20'b10110010011111101010;
    n189[917] = 20'b10110001110111110000;
    n189[916] = 20'b10110001010000000010;
    n189[915] = 20'b10110000101000100000;
    n189[914] = 20'b10110000000001001010;
    n189[913] = 20'b10101111011010000001;
    n189[912] = 20'b10101110110011000100;
    n189[911] = 20'b10101110001100010011;
    n189[910] = 20'b10101101100101101111;
    n189[909] = 20'b10101100111111011000;
    n189[908] = 20'b10101100011001001110;
    n189[907] = 20'b10101011110011010001;
    n189[906] = 20'b10101011001101100000;
    n189[905] = 20'b10101010100111111101;
    n189[904] = 20'b10101010000010100110;
    n189[903] = 20'b10101001011101011101;
    n189[902] = 20'b10101000111000100010;
    n189[901] = 20'b10101000010011110100;
    n189[900] = 20'b10100111101111010011;
    n189[899] = 20'b10100111001011000000;
    n189[898] = 20'b10100110100110111010;
    n189[897] = 20'b10100110000011000011;
    n189[896] = 20'b10100101011111011001;
    n189[895] = 20'b10100100111011111101;
    n189[894] = 20'b10100100011000110000;
    n189[893] = 20'b10100011110101110000;
    n189[892] = 20'b10100011010010111111;
    n189[891] = 20'b10100010110000011100;
    n189[890] = 20'b10100010001110000111;
    n189[889] = 20'b10100001101100000001;
    n189[888] = 20'b10100001001010001001;
    n189[887] = 20'b10100000101000100000;
    n189[886] = 20'b10100000000111000110;
    n189[885] = 20'b10011111100101111010;
    n189[884] = 20'b10011111000100111101;
    n189[883] = 20'b10011110100100001111;
    n189[882] = 20'b10011110000011110001;
    n189[881] = 20'b10011101100011100001;
    n189[880] = 20'b10011101000011100001;
    n189[879] = 20'b10011100100011101111;
    n189[878] = 20'b10011100000100001110;
    n189[877] = 20'b10011011100100111011;
    n189[876] = 20'b10011011000101111000;
    n189[875] = 20'b10011010100111000101;
    n189[874] = 20'b10011010001000100001;
    n189[873] = 20'b10011001101010001101;
    n189[872] = 20'b10011001001100001001;
    n189[871] = 20'b10011000101110010100;
    n189[870] = 20'b10011000010000110000;
    n189[869] = 20'b10010111110011011011;
    n189[868] = 20'b10010111010110010111;
    n189[867] = 20'b10010110111001100011;
    n189[866] = 20'b10010110011100111111;
    n189[865] = 20'b10010110000000101011;
    n189[864] = 20'b10010101100100100111;
    n189[863] = 20'b10010101001000110100;
    n189[862] = 20'b10010100101101010010;
    n189[861] = 20'b10010100010010000000;
    n189[860] = 20'b10010011110110111110;
    n189[859] = 20'b10010011011100001110;
    n189[858] = 20'b10010011000001101110;
    n189[857] = 20'b10010010100111011110;
    n189[856] = 20'b10010010001101100000;
    n189[855] = 20'b10010001110011110011;
    n189[854] = 20'b10010001011010010110;
    n189[853] = 20'b10010001000001001011;
    n189[852] = 20'b10010000101000010001;
    n189[851] = 20'b10010000001111101000;
    n189[850] = 20'b10001111110111010000;
    n189[849] = 20'b10001111011111001001;
    n189[848] = 20'b10001111000111010100;
    n189[847] = 20'b10001110101111110000;
    n189[846] = 20'b10001110011000011110;
    n189[845] = 20'b10001110000001011101;
    n189[844] = 20'b10001101101010101110;
    n189[843] = 20'b10001101010100010001;
    n189[842] = 20'b10001100111110000101;
    n189[841] = 20'b10001100101000001011;
    n189[840] = 20'b10001100010010100010;
    n189[839] = 20'b10001011111101001100;
    n189[838] = 20'b10001011101000000111;
    n189[837] = 20'b10001011010011010100;
    n189[836] = 20'b10001010111110110100;
    n189[835] = 20'b10001010101010100101;
    n189[834] = 20'b10001010010110101001;
    n189[833] = 20'b10001010000010111110;
    n189[832] = 20'b10001001101111100110;
    n189[831] = 20'b10001001011100100000;
    n189[830] = 20'b10001001001001101100;
    n189[829] = 20'b10001000110111001011;
    n189[828] = 20'b10001000100100111100;
    n189[827] = 20'b10001000010010111111;
    n189[826] = 20'b10001000000001010101;
    n189[825] = 20'b10000111101111111110;
    n189[824] = 20'b10000111011110111001;
    n189[823] = 20'b10000111001110000110;
    n189[822] = 20'b10000110111101100110;
    n189[821] = 20'b10000110101101011001;
    n189[820] = 20'b10000110011101011111;
    n189[819] = 20'b10000110001101110111;
    n189[818] = 20'b10000101111110100010;
    n189[817] = 20'b10000101101111100000;
    n189[816] = 20'b10000101100000110001;
    n189[815] = 20'b10000101010010010100;
    n189[814] = 20'b10000101000100001011;
    n189[813] = 20'b10000100110110010100;
    n189[812] = 20'b10000100101000110001;
    n189[811] = 20'b10000100011011100000;
    n189[810] = 20'b10000100001110100011;
    n189[809] = 20'b10000100000001111000;
    n189[808] = 20'b10000011110101100001;
    n189[807] = 20'b10000011101001011101;
    n189[806] = 20'b10000011011101101100;
    n189[805] = 20'b10000011010010001111;
    n189[804] = 20'b10000011000111000100;
    n189[803] = 20'b10000010111100001101;
    n189[802] = 20'b10000010110001101001;
    n189[801] = 20'b10000010100111011000;
    n189[800] = 20'b10000010011101011011;
    n189[799] = 20'b10000010010011110001;
    n189[798] = 20'b10000010001010011011;
    n189[797] = 20'b10000010000001010111;
    n189[796] = 20'b10000001111000101000;
    n189[795] = 20'b10000001110000001011;
    n189[794] = 20'b10000001101000000011;
    n189[793] = 20'b10000001100000001101;
    n189[792] = 20'b10000001011000101100;
    n189[791] = 20'b10000001010001011101;
    n189[790] = 20'b10000001001010100011;
    n189[789] = 20'b10000001000011111011;
    n189[788] = 20'b10000000111101101000;
    n189[787] = 20'b10000000110111101000;
    n189[786] = 20'b10000000110001111011;
    n189[785] = 20'b10000000101100100011;
    n189[784] = 20'b10000000100111011110;
    n189[783] = 20'b10000000100010101100;
    n189[782] = 20'b10000000011110001110;
    n189[781] = 20'b10000000011010000100;
    n189[780] = 20'b10000000010110001110;
    n189[779] = 20'b10000000010010101011;
    n189[778] = 20'b10000000001111011100;
    n189[777] = 20'b10000000001100100000;
    n189[776] = 20'b10000000001001111001;
    n189[775] = 20'b10000000000111100101;
    n189[774] = 20'b10000000000101100100;
    n189[773] = 20'b10000000000011111000;
    n189[772] = 20'b10000000000010011111;
    n189[771] = 20'b10000000000001011010;
    n189[770] = 20'b10000000000000101000;
    n189[769] = 20'b10000000000000001011;
    n189[768] = 20'b10000000000000000001;
    n189[767] = 20'b10000000000000001011;
    n189[766] = 20'b10000000000000101000;
    n189[765] = 20'b10000000000001011010;
    n189[764] = 20'b10000000000010011111;
    n189[763] = 20'b10000000000011111000;
    n189[762] = 20'b10000000000101100100;
    n189[761] = 20'b10000000000111100101;
    n189[760] = 20'b10000000001001111001;
    n189[759] = 20'b10000000001100100000;
    n189[758] = 20'b10000000001111011100;
    n189[757] = 20'b10000000010010101011;
    n189[756] = 20'b10000000010110001110;
    n189[755] = 20'b10000000011010000100;
    n189[754] = 20'b10000000011110001110;
    n189[753] = 20'b10000000100010101100;
    n189[752] = 20'b10000000100111011110;
    n189[751] = 20'b10000000101100100011;
    n189[750] = 20'b10000000110001111011;
    n189[749] = 20'b10000000110111101000;
    n189[748] = 20'b10000000111101101000;
    n189[747] = 20'b10000001000011111011;
    n189[746] = 20'b10000001001010100011;
    n189[745] = 20'b10000001010001011101;
    n189[744] = 20'b10000001011000101100;
    n189[743] = 20'b10000001100000001101;
    n189[742] = 20'b10000001101000000011;
    n189[741] = 20'b10000001110000001011;
    n189[740] = 20'b10000001111000101000;
    n189[739] = 20'b10000010000001010111;
    n189[738] = 20'b10000010001010011011;
    n189[737] = 20'b10000010010011110001;
    n189[736] = 20'b10000010011101011011;
    n189[735] = 20'b10000010100111011000;
    n189[734] = 20'b10000010110001101001;
    n189[733] = 20'b10000010111100001101;
    n189[732] = 20'b10000011000111000100;
    n189[731] = 20'b10000011010010001111;
    n189[730] = 20'b10000011011101101100;
    n189[729] = 20'b10000011101001011101;
    n189[728] = 20'b10000011110101100001;
    n189[727] = 20'b10000100000001111000;
    n189[726] = 20'b10000100001110100011;
    n189[725] = 20'b10000100011011100000;
    n189[724] = 20'b10000100101000110001;
    n189[723] = 20'b10000100110110010100;
    n189[722] = 20'b10000101000100001011;
    n189[721] = 20'b10000101010010010100;
    n189[720] = 20'b10000101100000110001;
    n189[719] = 20'b10000101101111100000;
    n189[718] = 20'b10000101111110100010;
    n189[717] = 20'b10000110001101110111;
    n189[716] = 20'b10000110011101011111;
    n189[715] = 20'b10000110101101011001;
    n189[714] = 20'b10000110111101100110;
    n189[713] = 20'b10000111001110000110;
    n189[712] = 20'b10000111011110111001;
    n189[711] = 20'b10000111101111111110;
    n189[710] = 20'b10001000000001010101;
    n189[709] = 20'b10001000010010111111;
    n189[708] = 20'b10001000100100111100;
    n189[707] = 20'b10001000110111001011;
    n189[706] = 20'b10001001001001101100;
    n189[705] = 20'b10001001011100100000;
    n189[704] = 20'b10001001101111100110;
    n189[703] = 20'b10001010000010111110;
    n189[702] = 20'b10001010010110101001;
    n189[701] = 20'b10001010101010100101;
    n189[700] = 20'b10001010111110110100;
    n189[699] = 20'b10001011010011010100;
    n189[698] = 20'b10001011101000000111;
    n189[697] = 20'b10001011111101001100;
    n189[696] = 20'b10001100010010100010;
    n189[695] = 20'b10001100101000001011;
    n189[694] = 20'b10001100111110000101;
    n189[693] = 20'b10001101010100010001;
    n189[692] = 20'b10001101101010101110;
    n189[691] = 20'b10001110000001011101;
    n189[690] = 20'b10001110011000011110;
    n189[689] = 20'b10001110101111110000;
    n189[688] = 20'b10001111000111010100;
    n189[687] = 20'b10001111011111001001;
    n189[686] = 20'b10001111110111010000;
    n189[685] = 20'b10010000001111101000;
    n189[684] = 20'b10010000101000010001;
    n189[683] = 20'b10010001000001001011;
    n189[682] = 20'b10010001011010010110;
    n189[681] = 20'b10010001110011110011;
    n189[680] = 20'b10010010001101100000;
    n189[679] = 20'b10010010100111011110;
    n189[678] = 20'b10010011000001101110;
    n189[677] = 20'b10010011011100001110;
    n189[676] = 20'b10010011110110111110;
    n189[675] = 20'b10010100010010000000;
    n189[674] = 20'b10010100101101010010;
    n189[673] = 20'b10010101001000110100;
    n189[672] = 20'b10010101100100100111;
    n189[671] = 20'b10010110000000101011;
    n189[670] = 20'b10010110011100111111;
    n189[669] = 20'b10010110111001100011;
    n189[668] = 20'b10010111010110010111;
    n189[667] = 20'b10010111110011011011;
    n189[666] = 20'b10011000010000110000;
    n189[665] = 20'b10011000101110010100;
    n189[664] = 20'b10011001001100001001;
    n189[663] = 20'b10011001101010001101;
    n189[662] = 20'b10011010001000100001;
    n189[661] = 20'b10011010100111000101;
    n189[660] = 20'b10011011000101111000;
    n189[659] = 20'b10011011100100111011;
    n189[658] = 20'b10011100000100001110;
    n189[657] = 20'b10011100100011101111;
    n189[656] = 20'b10011101000011100001;
    n189[655] = 20'b10011101100011100001;
    n189[654] = 20'b10011110000011110001;
    n189[653] = 20'b10011110100100001111;
    n189[652] = 20'b10011111000100111101;
    n189[651] = 20'b10011111100101111010;
    n189[650] = 20'b10100000000111000110;
    n189[649] = 20'b10100000101000100000;
    n189[648] = 20'b10100001001010001001;
    n189[647] = 20'b10100001101100000001;
    n189[646] = 20'b10100010001110000111;
    n189[645] = 20'b10100010110000011100;
    n189[644] = 20'b10100011010010111111;
    n189[643] = 20'b10100011110101110000;
    n189[642] = 20'b10100100011000110000;
    n189[641] = 20'b10100100111011111101;
    n189[640] = 20'b10100101011111011001;
    n189[639] = 20'b10100110000011000011;
    n189[638] = 20'b10100110100110111010;
    n189[637] = 20'b10100111001011000000;
    n189[636] = 20'b10100111101111010011;
    n189[635] = 20'b10101000010011110100;
    n189[634] = 20'b10101000111000100010;
    n189[633] = 20'b10101001011101011101;
    n189[632] = 20'b10101010000010100110;
    n189[631] = 20'b10101010100111111101;
    n189[630] = 20'b10101011001101100000;
    n189[629] = 20'b10101011110011010001;
    n189[628] = 20'b10101100011001001110;
    n189[627] = 20'b10101100111111011000;
    n189[626] = 20'b10101101100101101111;
    n189[625] = 20'b10101110001100010011;
    n189[624] = 20'b10101110110011000100;
    n189[623] = 20'b10101111011010000001;
    n189[622] = 20'b10110000000001001010;
    n189[621] = 20'b10110000101000100000;
    n189[620] = 20'b10110001010000000010;
    n189[619] = 20'b10110001110111110000;
    n189[618] = 20'b10110010011111101010;
    n189[617] = 20'b10110011000111110001;
    n189[616] = 20'b10110011110000000011;
    n189[615] = 20'b10110100011000100000;
    n189[614] = 20'b10110101000001001010;
    n189[613] = 20'b10110101101001111111;
    n189[612] = 20'b10110110010010111111;
    n189[611] = 20'b10110110111100001011;
    n189[610] = 20'b10110111100101100010;
    n189[609] = 20'b10111000001111000100;
    n189[608] = 20'b10111000111000110010;
    n189[607] = 20'b10111001100010101010;
    n189[606] = 20'b10111010001100101101;
    n189[605] = 20'b10111010110110111011;
    n189[604] = 20'b10111011100001010100;
    n189[603] = 20'b10111100001011110111;
    n189[602] = 20'b10111100110110100100;
    n189[601] = 20'b10111101100001011100;
    n189[600] = 20'b10111110001100011111;
    n189[599] = 20'b10111110110111101011;
    n189[598] = 20'b10111111100011000001;
    n189[597] = 20'b11000000001110100010;
    n189[596] = 20'b11000000111010001100;
    n189[595] = 20'b11000001100110000000;
    n189[594] = 20'b11000010010001111101;
    n189[593] = 20'b11000010111110000100;
    n189[592] = 20'b11000011101010010101;
    n189[591] = 20'b11000100010110101111;
    n189[590] = 20'b11000101000011010010;
    n189[589] = 20'b11000101101111111110;
    n189[588] = 20'b11000110011100110011;
    n189[587] = 20'b11000111001001110001;
    n189[586] = 20'b11000111110110110111;
    n189[585] = 20'b11001000100100000111;
    n189[584] = 20'b11001001010001011110;
    n189[583] = 20'b11001001111110111111;
    n189[582] = 20'b11001010101100100111;
    n189[581] = 20'b11001011011010011000;
    n189[580] = 20'b11001100001000010001;
    n189[579] = 20'b11001100110110010010;
    n189[578] = 20'b11001101100100011011;
    n189[577] = 20'b11001110010010101100;
    n189[576] = 20'b11001111000001000100;
    n189[575] = 20'b11001111101111100100;
    n189[574] = 20'b11010000011110001011;
    n189[573] = 20'b11010001001100111010;
    n189[572] = 20'b11010001111011110000;
    n189[571] = 20'b11010010101010101101;
    n189[570] = 20'b11010011011001110001;
    n189[569] = 20'b11010100001000111011;
    n189[568] = 20'b11010100111000001101;
    n189[567] = 20'b11010101100111100101;
    n189[566] = 20'b11010110010111000100;
    n189[565] = 20'b11010111000110101001;
    n189[564] = 20'b11010111110110010101;
    n189[563] = 20'b11011000100110000110;
    n189[562] = 20'b11011001010101111110;
    n189[561] = 20'b11011010000101111100;
    n189[560] = 20'b11011010110110000000;
    n189[559] = 20'b11011011100110001001;
    n189[558] = 20'b11011100010110011000;
    n189[557] = 20'b11011101000110101100;
    n189[556] = 20'b11011101110111000110;
    n189[555] = 20'b11011110100111100101;
    n189[554] = 20'b11011111011000001001;
    n189[553] = 20'b11100000001000110010;
    n189[552] = 20'b11100000111001100001;
    n189[551] = 20'b11100001101010010100;
    n189[550] = 20'b11100010011011001011;
    n189[549] = 20'b11100011001100000111;
    n189[548] = 20'b11100011111101001000;
    n189[547] = 20'b11100100101110001101;
    n189[546] = 20'b11100101011111010110;
    n189[545] = 20'b11100110010000100011;
    n189[544] = 20'b11100111000001110101;
    n189[543] = 20'b11100111110011001010;
    n189[542] = 20'b11101000100100100011;
    n189[541] = 20'b11101001010101111111;
    n189[540] = 20'b11101010000111011111;
    n189[539] = 20'b11101010111001000010;
    n189[538] = 20'b11101011101010101001;
    n189[537] = 20'b11101100011100010010;
    n189[536] = 20'b11101101001101111111;
    n189[535] = 20'b11101101111111101111;
    n189[534] = 20'b11101110110001100001;
    n189[533] = 20'b11101111100011010110;
    n189[532] = 20'b11110000010101001110;
    n189[531] = 20'b11110001000111001000;
    n189[530] = 20'b11110001111001000100;
    n189[529] = 20'b11110010101011000010;
    n189[528] = 20'b11110011011101000011;
    n189[527] = 20'b11110100001111000101;
    n189[526] = 20'b11110101000001001010;
    n189[525] = 20'b11110101110011010000;
    n189[524] = 20'b11110110100101010111;
    n189[523] = 20'b11110111010111100000;
    n189[522] = 20'b11111000001001101010;
    n189[521] = 20'b11111000111011110110;
    n189[520] = 20'b11111001101110000010;
    n189[519] = 20'b11111010100000010000;
    n189[518] = 20'b11111011010010011110;
    n189[517] = 20'b11111100000100101110;
    n189[516] = 20'b11111100110110111101;
    n189[515] = 20'b11111101101001001110;
    n189[514] = 20'b11111110011011011110;
    n189[513] = 20'b11111111001101101111;
    n189[512] = 20'b00000000000000000000;
    n189[511] = 20'b00000000110010010001;
    n189[510] = 20'b00000001100100100010;
    n189[509] = 20'b00000010010110110010;
    n189[508] = 20'b00000011001001000011;
    n189[507] = 20'b00000011111011010010;
    n189[506] = 20'b00000100101101100010;
    n189[505] = 20'b00000101011111110000;
    n189[504] = 20'b00000110010001111110;
    n189[503] = 20'b00000111000100001010;
    n189[502] = 20'b00000111110110010110;
    n189[501] = 20'b00001000101000100000;
    n189[500] = 20'b00001001011010101001;
    n189[499] = 20'b00001010001100110000;
    n189[498] = 20'b00001010111110110110;
    n189[497] = 20'b00001011110000111011;
    n189[496] = 20'b00001100100010111101;
    n189[495] = 20'b00001101010100111110;
    n189[494] = 20'b00001110000110111100;
    n189[493] = 20'b00001110111000111000;
    n189[492] = 20'b00001111101010110010;
    n189[491] = 20'b00010000011100101010;
    n189[490] = 20'b00010001001110011111;
    n189[489] = 20'b00010010000000010001;
    n189[488] = 20'b00010010110010000001;
    n189[487] = 20'b00010011100011101110;
    n189[486] = 20'b00010100010101010111;
    n189[485] = 20'b00010101000110111110;
    n189[484] = 20'b00010101111000100001;
    n189[483] = 20'b00010110101010000001;
    n189[482] = 20'b00010111011011011101;
    n189[481] = 20'b00011000001100110110;
    n189[480] = 20'b00011000111110001011;
    n189[479] = 20'b00011001101111011101;
    n189[478] = 20'b00011010100000101010;
    n189[477] = 20'b00011011010001110011;
    n189[476] = 20'b00011100000010111000;
    n189[475] = 20'b00011100110011111001;
    n189[474] = 20'b00011101100100110101;
    n189[473] = 20'b00011110010101101100;
    n189[472] = 20'b00011111000110011111;
    n189[471] = 20'b00011111110111001110;
    n189[470] = 20'b00100000100111110111;
    n189[469] = 20'b00100001011000011011;
    n189[468] = 20'b00100010001000111010;
    n189[467] = 20'b00100010111001010100;
    n189[466] = 20'b00100011101001101000;
    n189[465] = 20'b00100100011001110111;
    n189[464] = 20'b00100101001010000000;
    n189[463] = 20'b00100101111010000100;
    n189[462] = 20'b00100110101010000010;
    n189[461] = 20'b00100111011001111010;
    n189[460] = 20'b00101000001001101011;
    n189[459] = 20'b00101000111001010111;
    n189[458] = 20'b00101001101000111100;
    n189[457] = 20'b00101010011000011011;
    n189[456] = 20'b00101011000111110011;
    n189[455] = 20'b00101011110111000101;
    n189[454] = 20'b00101100100110001111;
    n189[453] = 20'b00101101010101010011;
    n189[452] = 20'b00101110000100010000;
    n189[451] = 20'b00101110110011000110;
    n189[450] = 20'b00101111100001110101;
    n189[449] = 20'b00110000010000011100;
    n189[448] = 20'b00110000111110111100;
    n189[447] = 20'b00110001101101010100;
    n189[446] = 20'b00110010011011100101;
    n189[445] = 20'b00110011001001101110;
    n189[444] = 20'b00110011110111101111;
    n189[443] = 20'b00110100100101101000;
    n189[442] = 20'b00110101010011011001;
    n189[441] = 20'b00110110000001000001;
    n189[440] = 20'b00110110101110100010;
    n189[439] = 20'b00110111011011111001;
    n189[438] = 20'b00111000001001001001;
    n189[437] = 20'b00111000110110001111;
    n189[436] = 20'b00111001100011001101;
    n189[435] = 20'b00111010010000000010;
    n189[434] = 20'b00111010111100101110;
    n189[433] = 20'b00111011101001010001;
    n189[432] = 20'b00111100010101101011;
    n189[431] = 20'b00111101000001111100;
    n189[430] = 20'b00111101101110000011;
    n189[429] = 20'b00111110011010000000;
    n189[428] = 20'b00111111000101110100;
    n189[427] = 20'b00111111110001011110;
    n189[426] = 20'b01000000011100111111;
    n189[425] = 20'b01000001001000010101;
    n189[424] = 20'b01000001110011100001;
    n189[423] = 20'b01000010011110100100;
    n189[422] = 20'b01000011001001011100;
    n189[421] = 20'b01000011110100001001;
    n189[420] = 20'b01000100011110101100;
    n189[419] = 20'b01000101001001000101;
    n189[418] = 20'b01000101110011010011;
    n189[417] = 20'b01000110011101010110;
    n189[416] = 20'b01000111000111001110;
    n189[415] = 20'b01000111110000111100;
    n189[414] = 20'b01001000011010011110;
    n189[413] = 20'b01001001000011110101;
    n189[412] = 20'b01001001101101000001;
    n189[411] = 20'b01001010010110000001;
    n189[410] = 20'b01001010111110110110;
    n189[409] = 20'b01001011100111100000;
    n189[408] = 20'b01001100001111111101;
    n189[407] = 20'b01001100111000001111;
    n189[406] = 20'b01001101100000010110;
    n189[405] = 20'b01001110001000010000;
    n189[404] = 20'b01001110101111111110;
    n189[403] = 20'b01001111010111100000;
    n189[402] = 20'b01001111111110110110;
    n189[401] = 20'b01010000100101111111;
    n189[400] = 20'b01010001001100111100;
    n189[399] = 20'b01010001110011101101;
    n189[398] = 20'b01010010011010010001;
    n189[397] = 20'b01010011000000101000;
    n189[396] = 20'b01010011100110110010;
    n189[395] = 20'b01010100001100101111;
    n189[394] = 20'b01010100110010100000;
    n189[393] = 20'b01010101011000000011;
    n189[392] = 20'b01010101111101011010;
    n189[391] = 20'b01010110100010100011;
    n189[390] = 20'b01010111000111011110;
    n189[389] = 20'b01010111101100001100;
    n189[388] = 20'b01011000010000101101;
    n189[387] = 20'b01011000110101000000;
    n189[386] = 20'b01011001011001000110;
    n189[385] = 20'b01011001111100111101;
    n189[384] = 20'b01011010100000100111;
    n189[383] = 20'b01011011000100000011;
    n189[382] = 20'b01011011100111010000;
    n189[381] = 20'b01011100001010010000;
    n189[380] = 20'b01011100101101000001;
    n189[379] = 20'b01011101001111100100;
    n189[378] = 20'b01011101110001111001;
    n189[377] = 20'b01011110010011111111;
    n189[376] = 20'b01011110110101110111;
    n189[375] = 20'b01011111010111100000;
    n189[374] = 20'b01011111111000111010;
    n189[373] = 20'b01100000011010000110;
    n189[372] = 20'b01100000111011000011;
    n189[371] = 20'b01100001011011110001;
    n189[370] = 20'b01100001111100001111;
    n189[369] = 20'b01100010011100011111;
    n189[368] = 20'b01100010111100011111;
    n189[367] = 20'b01100011011100010001;
    n189[366] = 20'b01100011111011110010;
    n189[365] = 20'b01100100011011000101;
    n189[364] = 20'b01100100111010001000;
    n189[363] = 20'b01100101011000111011;
    n189[362] = 20'b01100101110111011111;
    n189[361] = 20'b01100110010101110011;
    n189[360] = 20'b01100110110011110111;
    n189[359] = 20'b01100111010001101100;
    n189[358] = 20'b01100111101111010000;
    n189[357] = 20'b01101000001100100101;
    n189[356] = 20'b01101000101001101001;
    n189[355] = 20'b01101001000110011101;
    n189[354] = 20'b01101001100011000001;
    n189[353] = 20'b01101001111111010101;
    n189[352] = 20'b01101010011011011001;
    n189[351] = 20'b01101010110111001100;
    n189[350] = 20'b01101011010010101110;
    n189[349] = 20'b01101011101110000000;
    n189[348] = 20'b01101100001001000010;
    n189[347] = 20'b01101100100011110010;
    n189[346] = 20'b01101100111110010010;
    n189[345] = 20'b01101101011000100010;
    n189[344] = 20'b01101101110010100000;
    n189[343] = 20'b01101110001100001101;
    n189[342] = 20'b01101110100101101010;
    n189[341] = 20'b01101110111110110101;
    n189[340] = 20'b01101111010111101111;
    n189[339] = 20'b01101111110000011000;
    n189[338] = 20'b01110000001000110000;
    n189[337] = 20'b01110000100000110111;
    n189[336] = 20'b01110000111000101100;
    n189[335] = 20'b01110001010000010000;
    n189[334] = 20'b01110001100111100010;
    n189[333] = 20'b01110001111110100011;
    n189[332] = 20'b01110010010101010010;
    n189[331] = 20'b01110010101011101111;
    n189[330] = 20'b01110011000001111011;
    n189[329] = 20'b01110011010111110101;
    n189[328] = 20'b01110011101101011110;
    n189[327] = 20'b01110100000010110100;
    n189[326] = 20'b01110100010111111001;
    n189[325] = 20'b01110100101100101100;
    n189[324] = 20'b01110101000001001100;
    n189[323] = 20'b01110101010101011011;
    n189[322] = 20'b01110101101001010111;
    n189[321] = 20'b01110101111101000010;
    n189[320] = 20'b01110110010000011010;
    n189[319] = 20'b01110110100011100000;
    n189[318] = 20'b01110110110110010100;
    n189[317] = 20'b01110111001000110101;
    n189[316] = 20'b01110111011011000100;
    n189[315] = 20'b01110111101101000001;
    n189[314] = 20'b01110111111110101011;
    n189[313] = 20'b01111000010000000010;
    n189[312] = 20'b01111000100001000111;
    n189[311] = 20'b01111000110001111010;
    n189[310] = 20'b01111001000010011010;
    n189[309] = 20'b01111001010010100111;
    n189[308] = 20'b01111001100010100001;
    n189[307] = 20'b01111001110010001001;
    n189[306] = 20'b01111010000001011110;
    n189[305] = 20'b01111010010000100000;
    n189[304] = 20'b01111010011111001111;
    n189[303] = 20'b01111010101101101100;
    n189[302] = 20'b01111010111011110101;
    n189[301] = 20'b01111011001001101100;
    n189[300] = 20'b01111011010111001111;
    n189[299] = 20'b01111011100100100000;
    n189[298] = 20'b01111011110001011101;
    n189[297] = 20'b01111011111110001000;
    n189[296] = 20'b01111100001010011111;
    n189[295] = 20'b01111100010110100011;
    n189[294] = 20'b01111100100010010100;
    n189[293] = 20'b01111100101101110001;
    n189[292] = 20'b01111100111000111100;
    n189[291] = 20'b01111101000011110011;
    n189[290] = 20'b01111101001110010111;
    n189[289] = 20'b01111101011000101000;
    n189[288] = 20'b01111101100010100101;
    n189[287] = 20'b01111101101100001111;
    n189[286] = 20'b01111101110101100101;
    n189[285] = 20'b01111101111110101001;
    n189[284] = 20'b01111110000111011000;
    n189[283] = 20'b01111110001111110101;
    n189[282] = 20'b01111110010111111101;
    n189[281] = 20'b01111110011111110011;
    n189[280] = 20'b01111110100111010100;
    n189[279] = 20'b01111110101110100011;
    n189[278] = 20'b01111110110101011101;
    n189[277] = 20'b01111110111100000101;
    n189[276] = 20'b01111111000010011000;
    n189[275] = 20'b01111111001000011000;
    n189[274] = 20'b01111111001110000101;
    n189[273] = 20'b01111111010011011101;
    n189[272] = 20'b01111111011000100010;
    n189[271] = 20'b01111111011101010100;
    n189[270] = 20'b01111111100001110010;
    n189[269] = 20'b01111111100101111100;
    n189[268] = 20'b01111111101001110010;
    n189[267] = 20'b01111111101101010101;
    n189[266] = 20'b01111111110000100100;
    n189[265] = 20'b01111111110011100000;
    n189[264] = 20'b01111111110110000111;
    n189[263] = 20'b01111111111000011011;
    n189[262] = 20'b01111111111010011100;
    n189[261] = 20'b01111111111100001000;
    n189[260] = 20'b01111111111101100001;
    n189[259] = 20'b01111111111110100110;
    n189[258] = 20'b01111111111111011000;
    n189[257] = 20'b01111111111111110101;
    n189[256] = 20'b01111111111111111111;
    n189[255] = 20'b01111111111111110101;
    n189[254] = 20'b01111111111111011000;
    n189[253] = 20'b01111111111110100110;
    n189[252] = 20'b01111111111101100001;
    n189[251] = 20'b01111111111100001000;
    n189[250] = 20'b01111111111010011100;
    n189[249] = 20'b01111111111000011011;
    n189[248] = 20'b01111111110110000111;
    n189[247] = 20'b01111111110011100000;
    n189[246] = 20'b01111111110000100100;
    n189[245] = 20'b01111111101101010101;
    n189[244] = 20'b01111111101001110010;
    n189[243] = 20'b01111111100101111100;
    n189[242] = 20'b01111111100001110010;
    n189[241] = 20'b01111111011101010100;
    n189[240] = 20'b01111111011000100010;
    n189[239] = 20'b01111111010011011101;
    n189[238] = 20'b01111111001110000101;
    n189[237] = 20'b01111111001000011000;
    n189[236] = 20'b01111111000010011000;
    n189[235] = 20'b01111110111100000101;
    n189[234] = 20'b01111110110101011101;
    n189[233] = 20'b01111110101110100011;
    n189[232] = 20'b01111110100111010100;
    n189[231] = 20'b01111110011111110011;
    n189[230] = 20'b01111110010111111101;
    n189[229] = 20'b01111110001111110101;
    n189[228] = 20'b01111110000111011000;
    n189[227] = 20'b01111101111110101001;
    n189[226] = 20'b01111101110101100101;
    n189[225] = 20'b01111101101100001111;
    n189[224] = 20'b01111101100010100101;
    n189[223] = 20'b01111101011000101000;
    n189[222] = 20'b01111101001110010111;
    n189[221] = 20'b01111101000011110011;
    n189[220] = 20'b01111100111000111100;
    n189[219] = 20'b01111100101101110001;
    n189[218] = 20'b01111100100010010100;
    n189[217] = 20'b01111100010110100011;
    n189[216] = 20'b01111100001010011111;
    n189[215] = 20'b01111011111110001000;
    n189[214] = 20'b01111011110001011101;
    n189[213] = 20'b01111011100100100000;
    n189[212] = 20'b01111011010111001111;
    n189[211] = 20'b01111011001001101100;
    n189[210] = 20'b01111010111011110101;
    n189[209] = 20'b01111010101101101100;
    n189[208] = 20'b01111010011111001111;
    n189[207] = 20'b01111010010000100000;
    n189[206] = 20'b01111010000001011110;
    n189[205] = 20'b01111001110010001001;
    n189[204] = 20'b01111001100010100001;
    n189[203] = 20'b01111001010010100111;
    n189[202] = 20'b01111001000010011010;
    n189[201] = 20'b01111000110001111010;
    n189[200] = 20'b01111000100001000111;
    n189[199] = 20'b01111000010000000010;
    n189[198] = 20'b01110111111110101011;
    n189[197] = 20'b01110111101101000001;
    n189[196] = 20'b01110111011011000100;
    n189[195] = 20'b01110111001000110101;
    n189[194] = 20'b01110110110110010100;
    n189[193] = 20'b01110110100011100000;
    n189[192] = 20'b01110110010000011010;
    n189[191] = 20'b01110101111101000010;
    n189[190] = 20'b01110101101001010111;
    n189[189] = 20'b01110101010101011011;
    n189[188] = 20'b01110101000001001100;
    n189[187] = 20'b01110100101100101100;
    n189[186] = 20'b01110100010111111001;
    n189[185] = 20'b01110100000010110100;
    n189[184] = 20'b01110011101101011110;
    n189[183] = 20'b01110011010111110101;
    n189[182] = 20'b01110011000001111011;
    n189[181] = 20'b01110010101011101111;
    n189[180] = 20'b01110010010101010010;
    n189[179] = 20'b01110001111110100011;
    n189[178] = 20'b01110001100111100010;
    n189[177] = 20'b01110001010000010000;
    n189[176] = 20'b01110000111000101100;
    n189[175] = 20'b01110000100000110111;
    n189[174] = 20'b01110000001000110000;
    n189[173] = 20'b01101111110000011000;
    n189[172] = 20'b01101111010111101111;
    n189[171] = 20'b01101110111110110101;
    n189[170] = 20'b01101110100101101010;
    n189[169] = 20'b01101110001100001101;
    n189[168] = 20'b01101101110010100000;
    n189[167] = 20'b01101101011000100010;
    n189[166] = 20'b01101100111110010010;
    n189[165] = 20'b01101100100011110010;
    n189[164] = 20'b01101100001001000010;
    n189[163] = 20'b01101011101110000000;
    n189[162] = 20'b01101011010010101110;
    n189[161] = 20'b01101010110111001100;
    n189[160] = 20'b01101010011011011001;
    n189[159] = 20'b01101001111111010101;
    n189[158] = 20'b01101001100011000001;
    n189[157] = 20'b01101001000110011101;
    n189[156] = 20'b01101000101001101001;
    n189[155] = 20'b01101000001100100101;
    n189[154] = 20'b01100111101111010000;
    n189[153] = 20'b01100111010001101100;
    n189[152] = 20'b01100110110011110111;
    n189[151] = 20'b01100110010101110011;
    n189[150] = 20'b01100101110111011111;
    n189[149] = 20'b01100101011000111011;
    n189[148] = 20'b01100100111010001000;
    n189[147] = 20'b01100100011011000101;
    n189[146] = 20'b01100011111011110010;
    n189[145] = 20'b01100011011100010001;
    n189[144] = 20'b01100010111100011111;
    n189[143] = 20'b01100010011100011111;
    n189[142] = 20'b01100001111100001111;
    n189[141] = 20'b01100001011011110001;
    n189[140] = 20'b01100000111011000011;
    n189[139] = 20'b01100000011010000110;
    n189[138] = 20'b01011111111000111010;
    n189[137] = 20'b01011111010111100000;
    n189[136] = 20'b01011110110101110111;
    n189[135] = 20'b01011110010011111111;
    n189[134] = 20'b01011101110001111001;
    n189[133] = 20'b01011101001111100100;
    n189[132] = 20'b01011100101101000001;
    n189[131] = 20'b01011100001010010000;
    n189[130] = 20'b01011011100111010000;
    n189[129] = 20'b01011011000100000011;
    n189[128] = 20'b01011010100000100111;
    n189[127] = 20'b01011001111100111101;
    n189[126] = 20'b01011001011001000110;
    n189[125] = 20'b01011000110101000000;
    n189[124] = 20'b01011000010000101101;
    n189[123] = 20'b01010111101100001100;
    n189[122] = 20'b01010111000111011110;
    n189[121] = 20'b01010110100010100011;
    n189[120] = 20'b01010101111101011010;
    n189[119] = 20'b01010101011000000011;
    n189[118] = 20'b01010100110010100000;
    n189[117] = 20'b01010100001100101111;
    n189[116] = 20'b01010011100110110010;
    n189[115] = 20'b01010011000000101000;
    n189[114] = 20'b01010010011010010001;
    n189[113] = 20'b01010001110011101101;
    n189[112] = 20'b01010001001100111100;
    n189[111] = 20'b01010000100101111111;
    n189[110] = 20'b01001111111110110110;
    n189[109] = 20'b01001111010111100000;
    n189[108] = 20'b01001110101111111110;
    n189[107] = 20'b01001110001000010000;
    n189[106] = 20'b01001101100000010110;
    n189[105] = 20'b01001100111000001111;
    n189[104] = 20'b01001100001111111101;
    n189[103] = 20'b01001011100111100000;
    n189[102] = 20'b01001010111110110110;
    n189[101] = 20'b01001010010110000001;
    n189[100] = 20'b01001001101101000001;
    n189[99] = 20'b01001001000011110101;
    n189[98] = 20'b01001000011010011110;
    n189[97] = 20'b01000111110000111100;
    n189[96] = 20'b01000111000111001110;
    n189[95] = 20'b01000110011101010110;
    n189[94] = 20'b01000101110011010011;
    n189[93] = 20'b01000101001001000101;
    n189[92] = 20'b01000100011110101100;
    n189[91] = 20'b01000011110100001001;
    n189[90] = 20'b01000011001001011100;
    n189[89] = 20'b01000010011110100100;
    n189[88] = 20'b01000001110011100001;
    n189[87] = 20'b01000001001000010101;
    n189[86] = 20'b01000000011100111111;
    n189[85] = 20'b00111111110001011110;
    n189[84] = 20'b00111111000101110100;
    n189[83] = 20'b00111110011010000000;
    n189[82] = 20'b00111101101110000011;
    n189[81] = 20'b00111101000001111100;
    n189[80] = 20'b00111100010101101011;
    n189[79] = 20'b00111011101001010001;
    n189[78] = 20'b00111010111100101110;
    n189[77] = 20'b00111010010000000010;
    n189[76] = 20'b00111001100011001101;
    n189[75] = 20'b00111000110110001111;
    n189[74] = 20'b00111000001001001001;
    n189[73] = 20'b00110111011011111001;
    n189[72] = 20'b00110110101110100010;
    n189[71] = 20'b00110110000001000001;
    n189[70] = 20'b00110101010011011001;
    n189[69] = 20'b00110100100101101000;
    n189[68] = 20'b00110011110111101111;
    n189[67] = 20'b00110011001001101110;
    n189[66] = 20'b00110010011011100101;
    n189[65] = 20'b00110001101101010100;
    n189[64] = 20'b00110000111110111100;
    n189[63] = 20'b00110000010000011100;
    n189[62] = 20'b00101111100001110101;
    n189[61] = 20'b00101110110011000110;
    n189[60] = 20'b00101110000100010000;
    n189[59] = 20'b00101101010101010011;
    n189[58] = 20'b00101100100110001111;
    n189[57] = 20'b00101011110111000101;
    n189[56] = 20'b00101011000111110011;
    n189[55] = 20'b00101010011000011011;
    n189[54] = 20'b00101001101000111100;
    n189[53] = 20'b00101000111001010111;
    n189[52] = 20'b00101000001001101011;
    n189[51] = 20'b00100111011001111010;
    n189[50] = 20'b00100110101010000010;
    n189[49] = 20'b00100101111010000100;
    n189[48] = 20'b00100101001010000000;
    n189[47] = 20'b00100100011001110111;
    n189[46] = 20'b00100011101001101000;
    n189[45] = 20'b00100010111001010100;
    n189[44] = 20'b00100010001000111010;
    n189[43] = 20'b00100001011000011011;
    n189[42] = 20'b00100000100111110111;
    n189[41] = 20'b00011111110111001110;
    n189[40] = 20'b00011111000110011111;
    n189[39] = 20'b00011110010101101100;
    n189[38] = 20'b00011101100100110101;
    n189[37] = 20'b00011100110011111001;
    n189[36] = 20'b00011100000010111000;
    n189[35] = 20'b00011011010001110011;
    n189[34] = 20'b00011010100000101010;
    n189[33] = 20'b00011001101111011101;
    n189[32] = 20'b00011000111110001011;
    n189[31] = 20'b00011000001100110110;
    n189[30] = 20'b00010111011011011101;
    n189[29] = 20'b00010110101010000001;
    n189[28] = 20'b00010101111000100001;
    n189[27] = 20'b00010101000110111110;
    n189[26] = 20'b00010100010101010111;
    n189[25] = 20'b00010011100011101110;
    n189[24] = 20'b00010010110010000001;
    n189[23] = 20'b00010010000000010001;
    n189[22] = 20'b00010001001110011111;
    n189[21] = 20'b00010000011100101010;
    n189[20] = 20'b00001111101010110010;
    n189[19] = 20'b00001110111000111000;
    n189[18] = 20'b00001110000110111100;
    n189[17] = 20'b00001101010100111110;
    n189[16] = 20'b00001100100010111101;
    n189[15] = 20'b00001011110000111011;
    n189[14] = 20'b00001010111110110110;
    n189[13] = 20'b00001010001100110000;
    n189[12] = 20'b00001001011010101001;
    n189[11] = 20'b00001000101000100000;
    n189[10] = 20'b00000111110110010110;
    n189[9] = 20'b00000111000100001010;
    n189[8] = 20'b00000110010001111110;
    n189[7] = 20'b00000101011111110000;
    n189[6] = 20'b00000100101101100010;
    n189[5] = 20'b00000011111011010010;
    n189[4] = 20'b00000011001001000011;
    n189[3] = 20'b00000010010110110010;
    n189[2] = 20'b00000001100100100010;
    n189[1] = 20'b00000000110010010001;
    n189[0] = 20'b00000000000000000000;
    end
  always @(posedge clk_b)
    if (1'b1)
      n192 <= n189[addr_b];
  always @(posedge clk_a)
    if (1'b1)
      n194 <= n189[addr_a];
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\bram_dp_sin_lut.vhdl:1070:28 */
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\bram_dp_sin_lut.vhdl:1070:27 */
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
  reg [7:0] dac_reg;
  wire [19:0] interp_lo_prod;
  wire [19:0] interp_hi_prod;
  wire [29:0] scale_lo_product;
  wire [28:0] scale_hi_product;
  wire [36:0] scale_combined;
  wire [15:0] scale_reg;
  wire [31:0] m_reg;
  wire [31:0] phase_reg;
  wire [31:0] n75;
  wire [9:0] n76;
  wire [9:0] n77;
  wire [9:0] n79;
  wire [29:0] n80;
  wire [29:0] n82;
  wire [29:0] n83;
  wire [36:0] n84;
  wire [36:0] n86;
  wire [36:0] n87;
  wire [36:0] n88;
  wire [31:0] n91;
  wire [7:0] n92;
  wire [20:0] n93;
  wire [20:0] n94;
  wire [20:0] n95;
  wire [20:0] n96;
  wire [9:0] n97;
  wire [10:0] n99;
  wire [8:0] n101;
  wire [19:0] n102;
  wire [19:0] n103;
  wire [19:0] n104;
  wire [10:0] n105;
  wire [8:0] n107;
  wire [19:0] n108;
  wire [19:0] n109;
  wire [19:0] n110;
  wire [29:0] n111;
  wire [29:0] n112;
  wire [29:0] n114;
  wire [29:0] n115;
  wire [20:0] n116;
  wire [7:0] n117;
  wire [8:0] n119;
  wire [29:0] n120;
  wire [29:0] n121;
  wire [29:0] n122;
  wire [7:0] n123;
  wire [28:0] n124;
  wire [28:0] n125;
  wire [28:0] n126;
  wire [7:0] n127;
  wire n143;
  wire n144;
  wire [6:0] n145;
  wire [7:0] n146;
  reg [31:0] n149;
  reg [7:0] n150;
  reg [20:0] n151;
  reg [20:0] n152;
  reg [7:0] n153;
  reg [29:0] n154;
  reg [20:0] n155;
  reg [20:0] n156;
  reg [20:0] n157;
  reg [7:0] n158;
  reg [19:0] n159;
  reg [19:0] n160;
  reg [29:0] n161;
  reg [28:0] n162;
  reg [15:0] n163;
  reg [31:0] n164;
  reg [31:0] n165;
  assign y = n146; //(module output)
  assign lut_addr_0 = n76; //(module output)
  assign lut_addr_1 = n79; //(module output)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:39:12 */
  always @*
    accumulator = n149; // (isignal)
  initial
    accumulator = 32'b00000000000000000000000000000000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:41:12 */
  always @*
    phase_word = n75; // (isignal)
  initial
    phase_word = 32'b00000000000000000000000000000000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:44:12 */
  assign fraction_reg = n150; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:47:12 */
  assign diff_reg = n151; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:48:12 */
  assign y0_d1 = n152; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:49:12 */
  assign fraction_d1 = n153; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:52:12 */
  assign product_reg = n154; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:53:12 */
  assign y0_d2 = n155; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:55:12 */
  assign y0_d3 = n156; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:59:12 */
  assign interp_sum = n83; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:60:12 */
  assign interp_reg = n157; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:65:12 */
  always @*
    dac_reg = n158; // (isignal)
  initial
    dac_reg = 8'b00000000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:71:12 */
  assign interp_lo_prod = n159; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:72:12 */
  assign interp_hi_prod = n160; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:75:12 */
  assign scale_lo_product = n161; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:76:12 */
  assign scale_hi_product = n162; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:79:12 */
  assign scale_combined = n88; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:81:12 */
  assign scale_reg = n163; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:82:12 */
  assign m_reg = n164; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:83:12 */
  assign phase_reg = n165; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:120:31 */
  assign n75 = accumulator + phase_reg;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:123:29 */
  assign n76 = phase_word[31:22]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:124:29 */
  assign n77 = phase_word[31:22]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:124:90 */
  assign n79 = n77 + 10'b0000000001;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:127:30 */
  assign n80 = {{9{y0_d3[20]}}, y0_d3}; // sext
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:127:19 */
  assign n82 = n80 << 31'b0000000000000000000000000001000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:127:92 */
  assign n83 = n82 + product_reg;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:133:20 */
  assign n84 = {{8{scale_hi_product[28]}}, scale_hi_product}; // sext
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:133:9 */
  assign n86 = n84 << 31'b0000000000000000000000000001000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:134:11 */
  assign n87 = {{7{scale_lo_product[29]}}, scale_lo_product}; // sext
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:134:9 */
  assign n88 = n86 + n87;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:140:39 */
  assign n91 = accumulator + m_reg;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:143:39 */
  assign n92 = phase_word[21:14]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:146:25 */
  assign n93 = {{1{lut_di_1[19]}}, lut_di_1}; // sext
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:146:62 */
  assign n94 = {{1{lut_di_0[19]}}, lut_di_0}; // sext
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:146:60 */
  assign n95 = n93 - n94;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:147:22 */
  assign n96 = {{1{lut_di_0[19]}}, lut_di_0}; // sext
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:158:52 */
  assign n97 = diff_reg[9:0]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:158:42 */
  assign n99 = {1'b0, n97};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:158:79 */
  assign n101 = {1'b0, fraction_d1};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:158:66 */
  assign n102 = {{9{n99[10]}}, n99}; // sext
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:158:66 */
  assign n103 = {{11{n101[8]}}, n101}; // sext
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:158:66 */
  assign n104 = $signed(n102) * $signed(n103); // smul
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:159:39 */
  assign n105 = diff_reg[20:10]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:159:66 */
  assign n107 = {1'b0, fraction_d1};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:159:54 */
  assign n108 = {{9{n105[10]}}, n105}; // sext
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:159:54 */
  assign n109 = {{11{n107[8]}}, n107}; // sext
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:159:54 */
  assign n110 = $signed(n108) * $signed(n109); // smul
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:162:28 */
  assign n111 = {{10{interp_lo_prod[19]}}, interp_lo_prod}; // sext
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:162:68 */
  assign n112 = {{10{interp_hi_prod[19]}}, interp_hi_prod}; // sext
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:162:57 */
  assign n114 = n112 << 31'b0000000000000000000000000001010;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:162:55 */
  assign n115 = n111 + n114;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:170:44 */
  assign n116 = interp_sum[28:8]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:174:52 */
  assign n117 = scale_reg[7:0]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:174:41 */
  assign n119 = {1'b0, n117};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:174:28 */
  assign n120 = {{9{interp_reg[20]}}, interp_reg}; // sext
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:174:28 */
  assign n121 = {{21{n119[8]}}, n119}; // sext
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:174:28 */
  assign n122 = $signed(n120) * $signed(n121); // smul
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:177:39 */
  assign n123 = scale_reg[15:8]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:177:28 */
  assign n124 = {{8{interp_reg[20]}}, interp_reg}; // sext
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:177:28 */
  assign n125 = {{21{n123[7]}}, n123}; // sext
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:177:28 */
  assign n126 = $signed(n124) * $signed(n125); // smul
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:181:38 */
  assign n127 = scale_combined[34:27]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:185:21 */
  assign n143 = dac_reg[7]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:185:10 */
  assign n144 = ~n143;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:185:64 */
  assign n145 = dac_reg[6:0]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:185:38 */
  assign n146 = {n144, n145};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n149 <= n91;
  initial
    n149 = 32'b00000000000000000000000000000000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n150 <= n92;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n151 <= n95;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n152 <= n96;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n153 <= fraction_reg;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n154 <= n115;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n155 <= y0_d1;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n156 <= y0_d2;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n157 <= n116;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n158 <= n127;
  initial
    n158 = 8'b00000000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n159 <= n104;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n160 <= n110;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n161 <= n122;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n162 <= n126;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:110:9 */
  always @(posedge clk)
    n163 <= scale;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:110:9 */
  always @(posedge clk)
    n164 <= m;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\Zector_DDS_IP.vhdl:110:9 */
  always @(posedge clk)
    n165 <= phase;
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
  wire [7:0] dds_out;
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
  wire [1:0] n9;
  wire n12;
  wire \pll_inst.USR_PLL_LOCKED_STDY ;
  wire \pll_inst.USR_PLL_LOCKED ;
  wire \pll_inst.CLK90 ;
  wire \pll_inst.CLK180 ;
  wire \pll_inst.CLK270 ;
  wire \pll_inst.CLK_REF_OUT ;
  localparam n13 = 1'b0;
  localparam n14 = 1'b0;
  localparam n15 = 1'b0;
  wire [31:0] n17;
  wire [31:0] n18;
  wire [15:0] n19;
  localparam n23 = 1'b0;
  localparam n24 = 1'b0;
  localparam [19:0] n25 = 20'b00000000000000000000;
  localparam [19:0] n26 = 20'b00000000000000000000;
  wire [31:0] \cfg_register.o_reg_0 ;
  wire [31:0] \cfg_register.o_reg_1 ;
  wire [31:0] \cfg_register.o_reg_2 ;
  wire [31:0] n34;
  wire \spi_slave.o_miso ;
  wire [31:0] n42;
  wire n44;
  wire [9:0] n46;
  wire [39:0] n48;
  localparam n50 = 1'b0;
  localparam [39:0] n51 = 40'b0000000000000000000000000000000000000000;
  wire [511:0] n61;
  reg [1:0] n62;
  assign spi_miso = \spi_slave.o_miso ; //(module output)
  assign dac_out = dds_out; //(module output)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:85:12 */
  assign cfg_regs = n61; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:88:12 */
  always @*
    clk_25_mhz = n12; // (isignal)
  initial
    clk_25_mhz = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:90:12 */
  always @*
    clk_divider = n62; // (isignal)
  initial
    clk_divider = 2'b00;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:101:40 */
  assign n9 = clk_divider + 2'b01;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:105:30 */
  assign n12 = clk_divider[1]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:107:5 */
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
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:135:5 */
  zector_dds_ip_Brtl_32_10_20_16_8 dds_inst (
    .clk(clk_25_mhz),
    .lut_di_0(lut_data_a),
    .lut_di_1(lut_data_b),
    .m(n17),
    .phase(n18),
    .scale(n19),
    .y(dds_out),
    .lut_addr_0(lut_addr_a),
    .lut_addr_1(lut_addr_b));
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:148:45 */
  assign n17 = cfg_regs[511:480]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:149:43 */
  assign n18 = cfg_regs[479:448]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:150:46 */
  assign n19 = cfg_regs[431:416]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:160:5 */
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
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:178:5 */
  zector_cfg_registers_ip_Brtl_32_7 cfg_register (
    .i_clk(clk_25_mhz),
    .i_we(we_cfg),
    .i_addr(rfs_cfg_addr),
    .i_di(rfs_cfg_data),
    .o_reg_0(\cfg_register.o_reg_0 ),
    .o_reg_1(\cfg_register.o_reg_1 ),
    .o_reg_2(\cfg_register.o_reg_2 ));
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:212:5 */
  refresh_sch_Brtl reg_refresh (
    .i_clk(clk_25_mhz),
    .i_di(n34),
    .o_en_bram(en_bram_b),
    .o_we_reg(we_cfg),
    .o_do(rfs_cfg_data),
    .o_addr_bram(bram_rfs_addr),
    .o_addr_reg(rfs_cfg_addr));
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:220:41 */
  assign n34 = bram_rfs_data[31:0]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:228:5 */
  spi_slave_ip_Brtl_32_7 spi_slave (
    .i_clk(clk_100_mhz),
    .i_spi_clk(spi_clk),
    .i_mosi(spi_mosi),
    .i_ncs(spi_ncs),
    .i_data(n42),
    .o_miso(\spi_slave.o_miso ),
    .o_rnw(spi_rnw),
    .o_addr(spi_addr),
    .o_data(spi_data),
    .o_update(spi_update));
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:240:41 */
  assign n42 = bram_spi_data[31:0]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:247:5 */
  zector_40k_dp_bram_ip_Brtl_40_10 cfg_bram (
    .clk_a(clk_100_mhz),
    .clk_b(clk_25_mhz),
    .en_a(spi_update),
    .we_a(n44),
    .addr_a(n46),
    .di_a(n48),
    .en_b(en_bram_b),
    .we_b(1'b0),
    .addr_b(bram_rfs_addr),
    .di_b(40'b0000000000000000000000000000000000000000),
    .do_a(bram_spi_data),
    .do_b(bram_rfs_data));
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:259:24 */
  assign n44 = ~spi_rnw;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:260:30 */
  assign n46 = {3'b000, spi_addr};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:261:36 */
  assign n48 = {8'b00000000, spi_data};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:85:12 */
  assign n61 = {\cfg_register.o_reg_0 , \cfg_register.o_reg_1 , \cfg_register.o_reg_2 , 416'bZ};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\SPI_MEM_TOP.vhdl:100:9 */
  always @(posedge clk_100_mhz)
    n62 <= n9;
  initial
    n62 = 2'b00;
endmodule

