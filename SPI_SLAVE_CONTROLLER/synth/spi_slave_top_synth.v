module rfs_sch_test_Brtl
  (input  i_clk,
   output o_en_bram,
   output o_we_cfg,
   input  [31:0] i_di,
   output [31:0] o_do_0,
   output [31:0] o_do_1,
   output [31:0] o_do_2,
   output [9:0] o_addr_bram,
   output [6:0] o_addr_cfg);
  reg [3:0] state;
  reg bram_en;
  reg [9:0] bram_addr;
  localparam n459 = 1'b0;
  localparam [6:0] n460 = 7'b0000000;
  wire n465;
  wire n467;
  wire n469;
  wire n471;
  wire n473;
  wire n475;
  wire n477;
  wire n479;
  wire n481;
  wire n483;
  wire n485;
  wire n487;
  wire n489;
  wire [12:0] n490;
  reg [31:0] n491;
  reg [31:0] n492;
  reg [31:0] n493;
  reg [3:0] n508;
  reg n513;
  reg [9:0] n518;
  reg [31:0] n532;
  reg [31:0] n533;
  reg [31:0] n534;
  reg [3:0] n535;
  reg n536;
  reg [9:0] n537;
  assign o_en_bram = bram_en; //(module output)
  assign o_we_cfg = n459; //(module output)
  assign o_do_0 = n532; //(module output)
  assign o_do_1 = n533; //(module output)
  assign o_do_2 = n534; //(module output)
  assign o_addr_bram = bram_addr; //(module output)
  assign o_addr_cfg = n460; //(module output)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\RFS_SCH_TEMP.vhdl:28:12 */
  always @*
    state = n535; // (isignal)
  initial
    state = 4'b0000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\RFS_SCH_TEMP.vhdl:30:12 */
  always @*
    bram_en = n536; // (isignal)
  initial
    bram_en = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\RFS_SCH_TEMP.vhdl:31:12 */
  always @*
    bram_addr = n537; // (isignal)
  initial
    bram_addr = 10'b0000000000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\RFS_SCH_TEMP.vhdl:62:17 */
  assign n465 = state == 4'b0000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\RFS_SCH_TEMP.vhdl:69:17 */
  assign n467 = state == 4'b0001;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\RFS_SCH_TEMP.vhdl:73:17 */
  assign n469 = state == 4'b0010;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\RFS_SCH_TEMP.vhdl:77:17 */
  assign n471 = state == 4'b0011;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\RFS_SCH_TEMP.vhdl:85:17 */
  assign n473 = state == 4'b0100;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\RFS_SCH_TEMP.vhdl:92:17 */
  assign n475 = state == 4'b0101;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\RFS_SCH_TEMP.vhdl:95:17 */
  assign n477 = state == 4'b0110;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\RFS_SCH_TEMP.vhdl:98:17 */
  assign n479 = state == 4'b0111;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\RFS_SCH_TEMP.vhdl:106:17 */
  assign n481 = state == 4'b1000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\RFS_SCH_TEMP.vhdl:113:17 */
  assign n483 = state == 4'b1001;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\RFS_SCH_TEMP.vhdl:116:17 */
  assign n485 = state == 4'b1010;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\RFS_SCH_TEMP.vhdl:119:17 */
  assign n487 = state == 4'b1011;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\RFS_SCH_TEMP.vhdl:127:17 */
  assign n489 = state == 4'b1100;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\RFS_SCH_TEMP.vhdl:57:13 */
  assign n490 = {n489, n487, n485, n483, n481, n479, n477, n475, n473, n471, n469, n467, n465};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\RFS_SCH_TEMP.vhdl:57:13 */
  always @*
    case (n490)
      13'b1000000000000: n491 = n532;
      13'b0100000000000: n491 = n532;
      13'b0010000000000: n491 = n532;
      13'b0001000000000: n491 = n532;
      13'b0000100000000: n491 = n532;
      13'b0000010000000: n491 = n532;
      13'b0000001000000: n491 = n532;
      13'b0000000100000: n491 = n532;
      13'b0000000010000: n491 = n532;
      13'b0000000001000: n491 = i_di;
      13'b0000000000100: n491 = n532;
      13'b0000000000010: n491 = n532;
      13'b0000000000001: n491 = n532;
      default: n491 = n532;
    endcase
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\RFS_SCH_TEMP.vhdl:57:13 */
  always @*
    case (n490)
      13'b1000000000000: n492 = n533;
      13'b0100000000000: n492 = n533;
      13'b0010000000000: n492 = n533;
      13'b0001000000000: n492 = n533;
      13'b0000100000000: n492 = n533;
      13'b0000010000000: n492 = i_di;
      13'b0000001000000: n492 = n533;
      13'b0000000100000: n492 = n533;
      13'b0000000010000: n492 = n533;
      13'b0000000001000: n492 = n533;
      13'b0000000000100: n492 = n533;
      13'b0000000000010: n492 = n533;
      13'b0000000000001: n492 = n533;
      default: n492 = n533;
    endcase
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\RFS_SCH_TEMP.vhdl:57:13 */
  always @*
    case (n490)
      13'b1000000000000: n493 = n534;
      13'b0100000000000: n493 = i_di;
      13'b0010000000000: n493 = n534;
      13'b0001000000000: n493 = n534;
      13'b0000100000000: n493 = n534;
      13'b0000010000000: n493 = n534;
      13'b0000001000000: n493 = n534;
      13'b0000000100000: n493 = n534;
      13'b0000000010000: n493 = n534;
      13'b0000000001000: n493 = n534;
      13'b0000000000100: n493 = n534;
      13'b0000000000010: n493 = n534;
      13'b0000000000001: n493 = n534;
      default: n493 = n534;
    endcase
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\RFS_SCH_TEMP.vhdl:57:13 */
  always @*
    case (n490)
      13'b1000000000000: n508 = 4'b0000;
      13'b0100000000000: n508 = 4'b1100;
      13'b0010000000000: n508 = 4'b1011;
      13'b0001000000000: n508 = 4'b1010;
      13'b0000100000000: n508 = 4'b1001;
      13'b0000010000000: n508 = 4'b1000;
      13'b0000001000000: n508 = 4'b0111;
      13'b0000000100000: n508 = 4'b0110;
      13'b0000000010000: n508 = 4'b0101;
      13'b0000000001000: n508 = 4'b0100;
      13'b0000000000100: n508 = 4'b0011;
      13'b0000000000010: n508 = 4'b0010;
      13'b0000000000001: n508 = 4'b0001;
      default: n508 = 4'b0000;
    endcase
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\RFS_SCH_TEMP.vhdl:57:13 */
  always @*
    case (n490)
      13'b1000000000000: n513 = 1'b0;
      13'b0100000000000: n513 = 1'b0;
      13'b0010000000000: n513 = 1'b0;
      13'b0001000000000: n513 = 1'b0;
      13'b0000100000000: n513 = 1'b1;
      13'b0000010000000: n513 = 1'b0;
      13'b0000001000000: n513 = 1'b0;
      13'b0000000100000: n513 = 1'b0;
      13'b0000000010000: n513 = 1'b1;
      13'b0000000001000: n513 = 1'b0;
      13'b0000000000100: n513 = 1'b0;
      13'b0000000000010: n513 = 1'b0;
      13'b0000000000001: n513 = 1'b1;
      default: n513 = 1'b0;
    endcase
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\RFS_SCH_TEMP.vhdl:57:13 */
  always @*
    case (n490)
      13'b1000000000000: n518 = bram_addr;
      13'b0100000000000: n518 = bram_addr;
      13'b0010000000000: n518 = bram_addr;
      13'b0001000000000: n518 = bram_addr;
      13'b0000100000000: n518 = 10'b0000000010;
      13'b0000010000000: n518 = bram_addr;
      13'b0000001000000: n518 = bram_addr;
      13'b0000000100000: n518 = bram_addr;
      13'b0000000010000: n518 = 10'b0000000001;
      13'b0000000001000: n518 = bram_addr;
      13'b0000000000100: n518 = bram_addr;
      13'b0000000000010: n518 = bram_addr;
      13'b0000000000001: n518 = 10'b0000000000;
      default: n518 = bram_addr;
    endcase
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\RFS_SCH_TEMP.vhdl:52:9 */
  always @(posedge i_clk)
    n532 <= n491;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\RFS_SCH_TEMP.vhdl:52:9 */
  always @(posedge i_clk)
    n533 <= n492;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\RFS_SCH_TEMP.vhdl:52:9 */
  always @(posedge i_clk)
    n534 <= n493;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\RFS_SCH_TEMP.vhdl:52:9 */
  always @(posedge i_clk)
    n535 <= n508;
  initial
    n535 = 4'b0000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\RFS_SCH_TEMP.vhdl:52:9 */
  always @(posedge i_clk)
    n536 <= n513;
  initial
    n536 = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\RFS_SCH_TEMP.vhdl:52:9 */
  always @(posedge i_clk)
    n537 <= n518;
  initial
    n537 = 10'b0000000000;
endmodule

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
  wire [15:0] n435;
  wire [15:0] n437;
  wire [39:0] \bram_inst.A_DO ;
  wire [39:0] \bram_inst.B_DO ;
  wire \bram_inst.A_CO ;
  wire \bram_inst.B_CO ;
  wire \bram_inst.A_ECC_1B_ERR ;
  wire \bram_inst.B_ECC_1B_ERR ;
  wire \bram_inst.A_ECC_2B_ERR ;
  wire \bram_inst.B_ECC_2B_ERR ;
  localparam [39:0] n438 = 40'b1111111111111111111111111111111111111111;
  localparam [39:0] n439 = 40'b1111111111111111111111111111111111111111;
  assign do_a = \bram_inst.A_DO ; //(module output)
  assign do_b = \bram_inst.B_DO ; //(module output)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_40K_DP_BRAM_IP.vhdl:63:12 */
  assign bram_addr_a = n435; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_40K_DP_BRAM_IP.vhdl:64:12 */
  assign bram_addr_b = n437; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_40K_DP_BRAM_IP.vhdl:74:27 */
  assign n435 = {addr_a, 6'b000000};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_40K_DP_BRAM_IP.vhdl:75:27 */
  assign n437 = {addr_b, 6'b000000};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_40K_DP_BRAM_IP.vhdl:77:5 */
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
  wire n208;
  wire n211;
  wire n235;
  wire n236;
  wire n237;
  wire n238;
  wire [5:0] n239;
  wire [6:0] n240;
  wire [6:0] n241;
  wire n243;
  wire [5:0] n244;
  wire [6:0] n245;
  wire n246;
  wire n248;
  wire n254;
  wire n255;
  wire [6:0] n256;
  wire [7:0] n258;
  wire n260;
  wire n262;
  wire n263;
  wire n264;
  wire n265;
  wire n291;
  wire n295;
  wire n296;
  wire [30:0] n297;
  wire [31:0] n298;
  wire n299;
  wire [30:0] n300;
  wire [31:0] n301;
  wire n302;
  wire [30:0] n307;
  wire [31:0] n309;
  wire n311;
  wire n313;
  wire n314;
  wire n335;
  wire n339;
  wire n340;
  wire n341;
  wire n342;
  wire [30:0] n343;
  wire [31:0] n345;
  wire n346;
  wire [30:0] n347;
  wire [31:0] n349;
  wire n350;
  wire [31:0] n351;
  wire n352;
  wire [30:0] n355;
  wire [31:0] n357;
  wire n361;
  wire n375;
  wire n376;
  wire n377;
  reg n378;
  reg n379;
  wire n380;
  wire n381;
  wire [6:0] n382;
  reg [6:0] n383;
  wire n384;
  wire n385;
  wire [31:0] n386;
  reg [31:0] n387;
  wire n388;
  wire n389;
  wire [31:0] n390;
  reg [31:0] n391;
  wire n392;
  wire n393;
  wire [6:0] n394;
  reg [6:0] n395;
  wire n396;
  wire n397;
  wire [31:0] n398;
  reg [31:0] n399;
  wire [7:0] n400;
  reg [7:0] n401;
  wire [31:0] n402;
  reg [31:0] n403;
  wire [31:0] n404;
  reg [31:0] n405;
  wire n406;
  reg n407;
  wire n408;
  reg n409;
  wire n410;
  reg n411;
  wire n412;
  reg n413;
  wire n414;
  wire n415;
  wire n416;
  reg n417;
  wire n418;
  wire n419;
  wire n420;
  reg n421;
  reg n422;
  reg n423;
  reg n424;
  wire n425;
  wire n426;
  wire n427;
  reg n428;
  reg n429;
  reg n430;
  reg n431;
  assign o_miso = n378; //(module output)
  assign o_we = n208; //(module output)
  assign o_en = n379; //(module output)
  assign o_addr = addr_reg; //(module output)
  assign o_data = data_reg; //(module output)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:54:12 */
  assign addr_shift = n383; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:55:12 */
  assign rx_shift = n387; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:56:12 */
  assign tx_shift = n391; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:57:12 */
  assign addr_reg = n395; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:58:12 */
  assign data_reg = n399; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:61:12 */
  always @*
    addr_count = n401; // (isignal)
  initial
    addr_count = 8'b00000001;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:62:12 */
  always @*
    rx_count = n403; // (isignal)
  initial
    rx_count = 32'b00000000000000000000000000000001;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:63:12 */
  always @*
    tx_count = n405; // (isignal)
  initial
    tx_count = 32'b00000000000000000000000000000001;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:66:12 */
  always @*
    addr_valid_flag = n291; // (isignal)
  initial
    addr_valid_flag = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:67:12 */
  always @*
    rx_valid_flag = n335; // (isignal)
  initial
    rx_valid_flag = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:68:12 */
  always @*
    rx_begin_flag = n407; // (isignal)
  initial
    rx_begin_flag = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:69:12 */
  always @*
    tx_begin_flag = n409; // (isignal)
  initial
    tx_begin_flag = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:70:12 */
  always @*
    rx_done_flag = n411; // (isignal)
  initial
    rx_done_flag = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:71:12 */
  always @*
    tx_done_flag = n413; // (isignal)
  initial
    tx_done_flag = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:72:12 */
  always @*
    read_mode_flag = n417; // (isignal)
  initial
    read_mode_flag = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:74:12 */
  always @*
    rx_valid_tgl = n421; // (isignal)
  initial
    rx_valid_tgl = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:75:12 */
  always @*
    rx_valid_meta = n422; // (isignal)
  initial
    rx_valid_meta = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:76:12 */
  always @*
    rx_valid_sync = n423; // (isignal)
  initial
    rx_valid_sync = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:77:12 */
  always @*
    rx_valid_prev = n424; // (isignal)
  initial
    rx_valid_prev = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:79:12 */
  always @*
    addr_valid_tgl = n428; // (isignal)
  initial
    addr_valid_tgl = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:80:12 */
  always @*
    addr_valid_meta = n429; // (isignal)
  initial
    addr_valid_meta = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:81:12 */
  always @*
    addr_valid_sync = n430; // (isignal)
  initial
    addr_valid_sync = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:82:12 */
  always @*
    addr_valid_prev = n431; // (isignal)
  initial
    addr_valid_prev = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:87:13 */
  assign n208 = ~read_mode_flag;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:94:37 */
  assign n211 = addr_valid_flag | rx_valid_flag;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:137:30 */
  assign n235 = ~rx_begin_flag;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:137:60 */
  assign n236 = ~tx_begin_flag;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:137:42 */
  assign n237 = n236 & n235;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:138:30 */
  assign n238 = addr_count[0]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:141:45 */
  assign n239 = addr_shift[5:0]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:141:69 */
  assign n240 = {n239, i_mosi};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:138:17 */
  assign n241 = n238 ? addr_shift : n240;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:144:30 */
  assign n243 = addr_count[7]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:145:43 */
  assign n244 = addr_shift[5:0]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:145:67 */
  assign n245 = {n244, i_mosi};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:147:43 */
  assign n246 = ~addr_valid_tgl;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:146:21 */
  assign n248 = read_mode_flag ? rx_begin_flag : 1'b1;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:144:17 */
  assign n254 = read_mode_flag & n243;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:144:17 */
  assign n255 = read_mode_flag & n243;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:153:41 */
  assign n256 = addr_count[6:0]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:153:71 */
  assign n258 = {n256, 1'b0};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:137:13 */
  assign n260 = n243 & n237;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:137:13 */
  assign n262 = n243 & n237;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:137:13 */
  assign n263 = n254 & n237;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:137:13 */
  assign n264 = n238 & n237;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:137:13 */
  assign n265 = n255 & n237;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:166:40 */
  assign n291 = addr_valid_sync ^ addr_valid_prev;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:176:55 */
  assign n295 = ~rx_done_flag;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:176:38 */
  assign n296 = n295 & rx_begin_flag;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:177:37 */
  assign n297 = rx_shift[30:0]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:177:61 */
  assign n298 = {n297, i_mosi};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:179:28 */
  assign n299 = rx_count[31]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:180:41 */
  assign n300 = rx_shift[30:0]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:180:65 */
  assign n301 = {n300, i_mosi};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:182:37 */
  assign n302 = ~rx_valid_tgl;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:185:37 */
  assign n307 = rx_count[30:0]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:185:61 */
  assign n309 = {n307, 1'b0};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:176:13 */
  assign n311 = n299 & n296;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:176:13 */
  assign n313 = n299 & n296;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:176:13 */
  assign n314 = n299 & n296;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:198:36 */
  assign n335 = rx_valid_sync ^ rx_valid_prev;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:208:55 */
  assign n339 = ~tx_done_flag;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:208:38 */
  assign n340 = n339 & tx_begin_flag;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:209:28 */
  assign n341 = tx_count[0]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:210:37 */
  assign n342 = i_data[31]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:211:39 */
  assign n343 = i_data[30:0]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:211:63 */
  assign n345 = {n343, 1'b0};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:213:39 */
  assign n346 = tx_shift[31]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:214:41 */
  assign n347 = tx_shift[30:0]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:214:65 */
  assign n349 = {n347, 1'b0};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:209:17 */
  assign n350 = n341 ? n342 : n346;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:209:17 */
  assign n351 = n341 ? n345 : n349;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:217:28 */
  assign n352 = tx_count[31]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:220:37 */
  assign n355 = tx_count[30:0]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:220:61 */
  assign n357 = {n355, 1'b0};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:208:13 */
  assign n361 = n352 & n340;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:16:9 */
  assign n375 = ~i_ncs;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:16:9 */
  assign n376 = n340 & n375;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:207:9 */
  assign n377 = n376 ? n350 : n378;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:207:9 */
  always @(negedge i_spi_clk)
    n378 <= n377;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:93:9 */
  always @(posedge i_clk)
    n379 <= n211;
  initial
    n379 = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:54:12 */
  assign n380 = ~i_ncs;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:54:12 */
  assign n381 = n237 & n380;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:136:9 */
  assign n382 = n381 ? n241 : addr_shift;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:136:9 */
  always @(posedge i_spi_clk)
    n383 <= n382;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:55:12 */
  assign n384 = ~i_ncs;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:55:12 */
  assign n385 = n296 & n384;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:175:9 */
  assign n386 = n385 ? n298 : rx_shift;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:175:9 */
  always @(posedge i_spi_clk)
    n387 <= n386;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:56:12 */
  assign n388 = ~i_ncs;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:56:12 */
  assign n389 = n340 & n388;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:207:9 */
  assign n390 = n389 ? n351 : tx_shift;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:207:9 */
  always @(negedge i_spi_clk)
    n391 <= n390;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:57:12 */
  assign n392 = ~i_ncs;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:57:12 */
  assign n393 = n260 & n392;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:136:9 */
  assign n394 = n393 ? n245 : addr_reg;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:136:9 */
  always @(posedge i_spi_clk)
    n395 <= n394;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:58:12 */
  assign n396 = ~i_ncs;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:58:12 */
  assign n397 = n311 & n396;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:175:9 */
  assign n398 = n397 ? n301 : data_reg;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:175:9 */
  always @(posedge i_spi_clk)
    n399 <= n398;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:136:9 */
  assign n400 = n237 ? n258 : addr_count;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:136:9 */
  always @(posedge i_spi_clk or posedge i_ncs)
    if (i_ncs)
      n401 <= 8'b00000001;
    else
      n401 <= n400;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:175:9 */
  assign n402 = n296 ? n309 : rx_count;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:175:9 */
  always @(posedge i_spi_clk or posedge i_ncs)
    if (i_ncs)
      n403 <= 32'b00000000000000000000000000000001;
    else
      n403 <= n402;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:207:9 */
  assign n404 = n340 ? n357 : tx_count;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:207:9 */
  always @(negedge i_spi_clk or posedge i_ncs)
    if (i_ncs)
      n405 <= 32'b00000000000000000000000000000001;
    else
      n405 <= n404;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:136:9 */
  assign n406 = n262 ? n248 : rx_begin_flag;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:136:9 */
  always @(posedge i_spi_clk or posedge i_ncs)
    if (i_ncs)
      n407 <= 1'b0;
    else
      n407 <= n406;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:136:9 */
  assign n408 = n263 ? 1'b1 : tx_begin_flag;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:136:9 */
  always @(posedge i_spi_clk or posedge i_ncs)
    if (i_ncs)
      n409 <= 1'b0;
    else
      n409 <= n408;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:175:9 */
  assign n410 = n313 ? 1'b1 : rx_done_flag;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:175:9 */
  always @(posedge i_spi_clk or posedge i_ncs)
    if (i_ncs)
      n411 <= 1'b0;
    else
      n411 <= n410;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:207:9 */
  assign n412 = n361 ? 1'b1 : tx_done_flag;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:207:9 */
  always @(negedge i_spi_clk or posedge i_ncs)
    if (i_ncs)
      n413 <= 1'b0;
    else
      n413 <= n412;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:72:12 */
  assign n414 = ~i_ncs;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:72:12 */
  assign n415 = n264 & n414;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:136:9 */
  assign n416 = n415 ? i_mosi : read_mode_flag;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:136:9 */
  always @(posedge i_spi_clk)
    n417 <= n416;
  initial
    n417 = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:74:12 */
  assign n418 = ~i_ncs;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:74:12 */
  assign n419 = n314 & n418;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:175:9 */
  assign n420 = n419 ? n302 : rx_valid_tgl;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:175:9 */
  always @(posedge i_spi_clk)
    n421 <= n420;
  initial
    n421 = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:192:9 */
  always @(posedge i_clk)
    n422 <= rx_valid_tgl;
  initial
    n422 = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:192:9 */
  always @(posedge i_clk)
    n423 <= rx_valid_meta;
  initial
    n423 = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:192:9 */
  always @(posedge i_clk)
    n424 <= rx_valid_sync;
  initial
    n424 = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:79:12 */
  assign n425 = ~i_ncs;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:79:12 */
  assign n426 = n265 & n425;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:136:9 */
  assign n427 = n426 ? n246 : addr_valid_tgl;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:136:9 */
  always @(posedge i_spi_clk)
    n428 <= n427;
  initial
    n428 = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:160:9 */
  always @(posedge i_clk)
    n429 <= addr_valid_tgl;
  initial
    n429 = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:160:9 */
  always @(posedge i_clk)
    n430 <= addr_valid_meta;
  initial
    n430 = 1'b0;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\SPI_SLAVE_CTRL3_IP.vhdl:160:9 */
  always @(posedge i_clk)
    n431 <= addr_valid_sync;
  initial
    n431 = 1'b0;
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
  reg [19:0] n174; // mem_rd
  reg [19:0] n176; // mem_rd
  assign do_a = n176; //(module output)
  assign do_b = n174; //(module output)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\bram_dp_sin_lut.vhdl:30:12 */
  always @*
    memory = 20480'b11111111001101101111111111100110110111101111110110100100111011111100110110111101111111000001001011101111101101001001111011111010100000010000111110011011100000101111100011101111011011111000001001101010111101110101111000001111011010010101011111110101110011010000111101010000010010101111010000111100010111110011011101000011111100101010110000101111000111100100010011110001000111001000111100000101010011101110111110001101011011101110110001100001111011011111111011111110110100110111111111101100011100010010111010111010101010011110101011100100001011101010000111011111111010010101011111111110100010010010001111100111110011001010111001110000011101011110011001000010001111100101011111010110111001001011100011011110001111110100100011100011001100000111111000100110110010111110000110101001010011100000111001100001111000000010001100101101111101100000100111011110100111100101110111011101110001101101110100011010110011011100010110011000110110111001100010011101101011011000000011011010000101111100110110010101011111101101100010011000011011010111110110010101110101110001101010011101011001011100010011010101100111100101110101001110000011011101010000100011101111010011011001110001110100101010101011011101000111101111000011010001001100111010110100000111100010111100111110111110010011001111000001000100110011100100101011001100110110010001101111001100110110010010110011000010000100011100101101101001100011001010101100100111110010011111101111111100100101000101111011001000100100000111110001111101101101111100011100100111000111000110011100110011110001011011111111101100010100001101001011000100010110101111110000111010100101011100001011111000010011000010010001111101110000011001100000001100000011101000110011000000001110100010101111111000110000011011111011011110101110111110001100011111101111011000010111001011110011011010010010111100001011110111101110111000010101001011101011011011101110111010001100101101101110011000101010101011100011100011001010111000001111000100101101111001011000101011011011110000101110110110010010111111101101011010011111111011010100000100101010110100011000100000101100111100000000111011001100011111000110110010011111101010101100011101111100001011000101000000001010110000101000100000101100000000010010101010111101101000000110101110110011000100101011100011000100111010110110010110111110101100111111011000101011000110010011101010101111001101000110101011001101100000101010101001111111011010101000001010011010101001011101011101101010001110001000101010100001001111010010100111101111010011101001110010110000001010011010011011101010100110000011000011101001010111110110011010010011101111110110100100011000110000101000111101011100001010001101001011111110100010110000011100101000100011100001111010000110110000000110100001001010001001101000001010001000001010000000011100011010011111100101111010100111110001001111011001111010010000111110011110000011110001100111011000111000011001110100001110000110011100100011101111100111000001000011101001101110010011101110011011000101111000100110101001110001011001101000100010000110011001101010001101100110010011000010011001100010111001010010011000010000110000100101111100110110111001011101011001011110010110111001100011100101100111001111111001011000000010101110010101100100100111100101010010001101001001010010110101001010010100010010000000100100111101101111101001001101110000111010010011000001101110100100101001110111101001001000110110000010010001110011110011100100010110100101101001000100000100101110010000101000010001100100000011111010001000111111011101000010001111011111001001100011110001110101001000111010111111000010001110011000011110100011100000010111011000110110101010111010001101010100010001100011001111100001011000110010100000101110001100010010100010100010111111010011001000101110100000011110001011010011010100100010101111101101001000101010101010010110001010010110101001100010100000101111101000100110111110011010001001011100100000100010010010011011001000100011011100101110001000100100111100100010000100101111111000100000000101010110000111101111111110100001110111101110011000011100111000011010000110111101100110100001101011010110011000011001110101111110000110001101110111100001011111101000101000010110111110000010000101100000110001100001010100100101001000010100010000101110000100110110010100100001001010001100011000010001101110000010000100001110100011100001000000011110001000001111010110000110000011101001011101100000110111011011001000001101001000111110000011000111000100100000101111000011011000001011000110100110000010100111011000100000100111010110111000001001001111000110000010001010011011100000100000010101111000000111100010100010000001110000001011100000011010000000111000000110000000110110000001011000101100100000010100010111011000000100101010001110000001000011111011100000001111011010001000000011011110100010000000110001111011100000001011001000111000000010011101111010000000100010101100100000000111100011101000000001101000010010000000010110001110100000000100101010111000000000111101110010000000001100100000100000000010011110011000000000011110010110000000000101100100100000000000111110001000000000001001111110000000000001011010100000000000001010001000000000000000101110000000000000000001100000000000000010111000000000000010100010000000000001011010100000000000100111111000000000001111100010000000000101100100100000000001111001011000000000100111100110000000001100100000100000000011110111001000000001001010101110000000010110001110100000000110100001001000000001111000111010000000100010101100100000001001110111101000000010110010001110000000110001111011100000001101111010001000000011110110100010000001000011111011100000010010101000111000000101000101110110000001011000101100100000011000000011011000000110100000001110000001110000001011100000011110001010001000001000000101011110000010001010011011100000100100111100011000001001110101101110000010100111011000100000101100011010011000001011110000110110000011000111000100100000110100100011111000001101110110110010000011101001011101100000111101011000011000010000000111100010000100001110100011100001000110111000001000010010100011000110000100110110010100100001010001000010111000010101001001010010000101100000110001100001011011111000001000010111111010001010000110001101110111100001100111010111111000011010110101100110000110111101100110100001110011100001101000011101111011100110000111101111111110100010000000010101011000100001001011111110001000100100111100100010001101110010111000100100100110110010001001011100100000100010011011111001101000101000001011111010001010010110101001100010101010101001011000101011111011010010001011010011010100100010111010000001111000101111110100110010001100010010100010100011001010000010111000110011111000010110001101010100010001100011011010101011101000111000000101110110001110011000011110100011101011111100001000111100011101010010001111011111001001100011111101110100001001000000111110100010010000101000010001100100010000010010111001000101101001011010010001110011110011100100100011011000001001001010011101111010010011000001101110100100110111000011101001001111011011111010010100010010000000100101001011010100101001010100100011010010010101100100100111100101100000001010111001011001110011111110010110111001100011100101110101100101111001011111001101101110011000010000110000100110001011100101001001100100110000100110011001101010001101100110100010001000011001101010011100010110011011000101111000100110111001001110111001110000010000111010011100100011101111100111010000111000011001110110001110000110011110000011110001100111101001000011111001111100010011110110011111100101111010101000000001110001101010000010100010000010100001001010001001101000011011000000011010001000111000011110100010110000011100101000110100101111111010001111010111000010100100011000110000101001001110111111011010010101111101100110100110000011000011101001101001101110101010011100101100000010100111101111010011101010000100111101001010100011100010001010101001011101011101101010100000101001101010101010011111110110101011001101100000101010111100110100011010110001100100111010101100111111011000101011011001011011111010111000110001001110101110110011000100101011110110100000011011000000000100101010110000101000100000101100010100000000101011000111011111000010110010011111101010101100110001111100011011001111000000001110110100011000100000101101010000010010101011010110100111111110110110010010111111101101101111000010111011011110010110001010111000001111000100101110001110001100101011100110001010101010111010001100101101101110101101101110111011101110000101010010111100001011110111101111001101101001001011110110000101110010111110001100011111101111101101111010111011111110001100000111000000001110100010110000001110100011001100000110011000000011000010010001111101110000101111100001001100001110101001010111000100010110101111110001010000110100101100010110111111111011000110011100110011110001110010011100011100011111011011011111001000100100000111110010010100010111101100100111111011111111001010101100100111110010110110100110001100110000100001000111001100110110010010110011011001000110111100111001001010110011001111000001000100110011111011111001001101000001111000101111010001001100111010110100011110111100001101001010101010110111010011011001110001110101000010001110111101010011100000110111010101100111100101110101100101110001001101011100011010100111010111110110010101110110001001100001101101100101010111111011011010000101111100110110101101100000001101101110011000100111011100010110011000110111010001101011001101110111011100011011011110100111100101110111110110000010011110000000100011001011100000111001100001111000011010100101001110001001101100101111100011001100000111111000111111010010001110010010111000110111100101011111010110111001100100001000111110011100000111010111100111110011001010111010001001001000111110100101010111111111101010000111011111111010101110010000101110101110101010100111101100011100010010111011010011011111111110110111111110111111101110110001100001111011111000110101101111000001010100111011110001000111001000111100011110010001001111001010101100001011110011011101000011111101000011110001011111010100000100101011110101110011010000111101101001010101111111011101011110000011111000001001101010111110001110111101101111100110111000001011111010100000010000111110110100100111101111110000010010111011111100110110111101111111011010010011101111111001101101111011111111001101101111000000000000000000000000000011001001000100000001100100100010000000100101101100100000001100100100001100000011111011010010000001001011011000100000010101111111000000000110010001111110000001110001000010100000011111011001011000001000101000100000000010010110101010010000101000110011000000001010111110110110000010111100001110110000110010001011110100001101010100111110000011100001101111000000111011100011100000001111101010110010000100000111001010100001000100111001111100010010000000010001000100101100100000010001001110001110111000010100010101010111000101010001101111100001010111100010000100010110101010000001000101110110110111010001100000110011011000011000111110001011000110011011110111010001101010000010101000011011010001110011000111000000101110000001110011001111100100011101100100110101000111100101011011000001111100011001111100011111110111001110001000001001111101110010000101100001101100100010001000111010001000101110010101000010001110100110100000100100011001110111001001010010100000000010010111101000010000100110101010000010001001110110011110100010100000100110101100101000111001010111001010011010001111000010101001100001101100101011000111110011001010111101110001010010110010011000111100101101010101010011001011100001000100000010111011001100011000101111100001110101001100000100000111000011000011111011110000110001101101010100001100100110111001010011001100100110111000110011110111101111001101001001011010000011010101001101100100110110000001000001001101101011101000100011011101101111100100111000001001001001001110001101100011110011100110001100110100111010010000000010001110101111001011100011101110100101000100111100010101101011001111010000011111000011110110111000001100111110011010000000001111110001011101000011111111000101111001000000011100111111010000010010000101010100000111001110000101000010011110100100010000110010010111000100001111010000100101000100011110101100010001010010010001010100010111001101001101000110011101010110010001110001110011100100011111000011110001001000011010011110010010010000111101010100100110110100000101001010010110000001010010101111101101100100101110011110000001001100001111111101010011001110000011110100110110000001011001001110001000010000010011101011111111100100111101011110000001001111111110110110010100001001011111110101000100110011110001010001110011101101010100100110100100010101001100000010100001010011100110110010010101000011001011110101010011001010000001010101011000000011010101011111010110100101011010001010001101010111000111011110010101111011000011000101100001000010110101011000110101000000010110010110010001100101100111110011110101011010100000100111010110110001000000110101101110011101000001011100001010010000010111001011010000010101110100111110010001011101110001111001010111100100111111110101111011010111011101011111010111100000010111111110001110100110000001101000011001100000111011000011011000010110111100010110000111110000111101100010011100011111011000101111000111110110001101110001000101100011111011110010011001000110110001010110010011101000100001100101011000111011011001011101110111110110011001010111001101100110110011110111011001110100011011000110011110111101000001101000001100100101011010001010011010010110100100011001110101101001100011000001011010011111110101010110101001101101100101101010110111001100011010110100101011100110101110111000000001101100001001000010011011001000111100100110110011111001001001101101011000100010011011011100101000000110111000110000110101101110100101101010011011101111101101010110111101011110111101101111110000011000011100000010001100000111000010000011011101110000111000101100011100010100000100000111000110011110001001110001111110100011011100100101010100100111001010101110111101110011000001111011011100110101111101010111001110110101111001110100000010110100011101000101111110010111010010110010110001110101000001001100011101010101010110110111010110100101011101110101111101000010011101100100000110100111011010001110000001110110110110010100011101110010001101010111011101101100010001110111101101000001011101111111101010110111100001000000001001111000100001000111011110001100011110100111100100001001101001111001010010100111011110011000101000010111100111001000100101111010000001011110011110100100001000000111101001111100111101111010101101101100011110101110111101010111101100100110110001111011010111001111011110111001001000000111101111000101110101111011111110001000011111000010100111110111110001011010001101111100100010010100011111001011011100010111110011100011110001111101000011110011011111010011100101110111110101100010100001111101100010100101011111011011000011110111110111010110010101111101111110101001011111100001110110000111111000111111010101111110010111111101011111100111111100110111111010011101010001111110101110100011011111101101010111010111111011110000010101111111000010011000011111110010000110000111111100111000010101111111010011011101011111110110001000100111111101110101010001111111100001110010011111111001011111000111111110100111001001111111101101010101011111111100001001000111111111001110000001111111110110000111011111111110000110110111111111101001110001111111111100001000011111111111011000010111111111111010011001111111111111011000011111111111111101010111111111111111111101111111111111110101011111111111110110000111111111111010011001111111111101100001011111111111000010000111111111101001110001111111111000011011011111111101100001110111111111001110000001111111110000100100011111111011010101010111111110100111001001111111100101111100011111111000011100100111111101110101010001111111011000100010011111110100110111010111111100111000010101111111001000011000011111110000100110000111111011110000010101111110110101011101011111101011101000110111111010011101010001111110011111110011011111100101111111010111111000111111010101111110000111011000011111011111101010010111110111010110010101111101101100001111011111011000101001010111110101100010100001111101001110010111011111010000111100110111110011100011110001111100101101110001011111001000100101000111110001011010001101111100001010011111011110111111100010000111101111000101110101111011100100100000011110110101110011110111101100100110110001111010111011110101011110101011011011000111101001111100111101111010010000100000011110100000010111100111100111001000100101111001100010100001011110010100101001110111100100001001101001111000110001111010011110001000010001110111100001000000001001110111111110101011011101111011010000010111011101101100010001110111001000110101011101101101100101000111011010001110000001110110010000011010011101011111010000100111010110100101011101110101010101011011011101010000010011000111010010110010110001110100010111111001011101000000101101000111001110110101111001110011010111110101011100110000011110110111001010101110111101110010010101010010011100011111101000110111000110011110001001110001010000010000011100001110001011000111000010000011011101110000001000110000011011111100000110000110111101011110111101101110111110110101011011101001011010100110111000110000110101101101110010100000011011010110001000100110110011111001001001101100100011110010011011000010010000100110101110111000000001101011010010101110011010101101110011000110101001101101100101101001111111010101011010011000110000010110100100011001110101101000101001101001011010000011001001010110011110111101000001100111010001101100011001101100111101110110011001010111001101100101110111011111011001010110001110110110010011101000100001100100011011000101011000111110111100100110001101110001000101100010111100011111011000100111000111110110000111110000111101100001011011110001011000001110110000110110000001101000011001011111111000111010010111110101111000000101111011010111011101011110010011111111010111011100011110010101110100111110010001011100101101000001010111000010100100000101101110011101000001011011000100000011010110101000001001110101100111110011110101011001011001000110010110001101010000000101100001000010110101010111101100001100010101110001110111100101011010001010001101010101111101011010010101010110000000110101010011001010000001010100001100101111010100111001101100100101001100000010100001010010011010010001010100011100111011010101000100110011110001010000100101111111010011111111101101100100111101011110000001001110101111111110010011100010000100000100110110000001011001001100111000001111010011000011111111010100101110011110000001001010111110110110010010100101100000010100100110110100000101001001000011110101010010000110100111100100011111000011110001000111000111001110010001100111010101100100010111001101001101000101001001000101010001000111101011000100001111010000100101000011001001011100010000100111101001000100000111001110000101000001001000010101010000000111001111110011111111000101111000111111000101110100001111100110100000000011110110111000001100111101000001111100001111000101011010110011101110100101000100111010111100101110001110100100000000100011100110001100110100111000110110001111001110000010010010010011011101101111100100110110101110100010001101100000010000010011010101001101100100110100100101101000001100111101111011110011001100100110111000110010011011100101001100011011010101000011000011111011110000110000010000011100001011111000011101010010111011001100011000101110000100010000001011010101010100110010110010011000111100101011110111000101001010110001111100110010101001100001101100101001101000111100001010001110010101110010100000100110101100100111011001111010001001101010100000100010010111101000010000100101001010000000001001000110011101110010001110100110100000100010111001010100001000100010001110100010000101100001101100100000100111110111000111111101110011100001111100011001111100011110010101101100000111011001001101010001110011001111100100011100000010111000000110110100011100110001101010000010101000011001101111011101000110001111100010110001100000110011011000010111011011011101000101101010100000010001010111100010000100010101000110111110000101000101010101110001001110001110111000010010110010000001000100100000000100010001000100111001111100010000011100101010000011111010101100100000111011100011100000001110000110111100000011010101001111100000110010001011110100001011110000111011000010101111101101100000101000110011000000001001011010101001000010001010001000000000011111011001011000000111000100001010000001100100011111100000010101111111000000000100101101100010000000111110110100100000001100100100001100000010010110110010000000011001001000100000000011001001000100000000000000000000; // (isignal)
  initial
    memory = 20480'b11111111001101101111111111100110110111101111110110100100111011111100110110111101111111000001001011101111101101001001111011111010100000010000111110011011100000101111100011101111011011111000001001101010111101110101111000001111011010010101011111110101110011010000111101010000010010101111010000111100010111110011011101000011111100101010110000101111000111100100010011110001000111001000111100000101010011101110111110001101011011101110110001100001111011011111111011111110110100110111111111101100011100010010111010111010101010011110101011100100001011101010000111011111111010010101011111111110100010010010001111100111110011001010111001110000011101011110011001000010001111100101011111010110111001001011100011011110001111110100100011100011001100000111111000100110110010111110000110101001010011100000111001100001111000000010001100101101111101100000100111011110100111100101110111011101110001101101110100011010110011011100010110011000110110111001100010011101101011011000000011011010000101111100110110010101011111101101100010011000011011010111110110010101110101110001101010011101011001011100010011010101100111100101110101001110000011011101010000100011101111010011011001110001110100101010101011011101000111101111000011010001001100111010110100000111100010111100111110111110010011001111000001000100110011100100101011001100110110010001101111001100110110010010110011000010000100011100101101101001100011001010101100100111110010011111101111111100100101000101111011001000100100000111110001111101101101111100011100100111000111000110011100110011110001011011111111101100010100001101001011000100010110101111110000111010100101011100001011111000010011000010010001111101110000011001100000001100000011101000110011000000001110100010101111111000110000011011111011011110101110111110001100011111101111011000010111001011110011011010010010111100001011110111101110111000010101001011101011011011101110111010001100101101101110011000101010101011100011100011001010111000001111000100101101111001011000101011011011110000101110110110010010111111101101011010011111111011010100000100101010110100011000100000101100111100000000111011001100011111000110110010011111101010101100011101111100001011000101000000001010110000101000100000101100000000010010101010111101101000000110101110110011000100101011100011000100111010110110010110111110101100111111011000101011000110010011101010101111001101000110101011001101100000101010101001111111011010101000001010011010101001011101011101101010001110001000101010100001001111010010100111101111010011101001110010110000001010011010011011101010100110000011000011101001010111110110011010010011101111110110100100011000110000101000111101011100001010001101001011111110100010110000011100101000100011100001111010000110110000000110100001001010001001101000001010001000001010000000011100011010011111100101111010100111110001001111011001111010010000111110011110000011110001100111011000111000011001110100001110000110011100100011101111100111000001000011101001101110010011101110011011000101111000100110101001110001011001101000100010000110011001101010001101100110010011000010011001100010111001010010011000010000110000100101111100110110111001011101011001011110010110111001100011100101100111001111111001011000000010101110010101100100100111100101010010001101001001010010110101001010010100010010000000100100111101101111101001001101110000111010010011000001101110100100101001110111101001001000110110000010010001110011110011100100010110100101101001000100000100101110010000101000010001100100000011111010001000111111011101000010001111011111001001100011110001110101001000111010111111000010001110011000011110100011100000010111011000110110101010111010001101010100010001100011001111100001011000110010100000101110001100010010100010100010111111010011001000101110100000011110001011010011010100100010101111101101001000101010101010010110001010010110101001100010100000101111101000100110111110011010001001011100100000100010010010011011001000100011011100101110001000100100111100100010000100101111111000100000000101010110000111101111111110100001110111101110011000011100111000011010000110111101100110100001101011010110011000011001110101111110000110001101110111100001011111101000101000010110111110000010000101100000110001100001010100100101001000010100010000101110000100110110010100100001001010001100011000010001101110000010000100001110100011100001000000011110001000001111010110000110000011101001011101100000110111011011001000001101001000111110000011000111000100100000101111000011011000001011000110100110000010100111011000100000100111010110111000001001001111000110000010001010011011100000100000010101111000000111100010100010000001110000001011100000011010000000111000000110000000110110000001011000101100100000010100010111011000000100101010001110000001000011111011100000001111011010001000000011011110100010000000110001111011100000001011001000111000000010011101111010000000100010101100100000000111100011101000000001101000010010000000010110001110100000000100101010111000000000111101110010000000001100100000100000000010011110011000000000011110010110000000000101100100100000000000111110001000000000001001111110000000000001011010100000000000001010001000000000000000101110000000000000000001100000000000000010111000000000000010100010000000000001011010100000000000100111111000000000001111100010000000000101100100100000000001111001011000000000100111100110000000001100100000100000000011110111001000000001001010101110000000010110001110100000000110100001001000000001111000111010000000100010101100100000001001110111101000000010110010001110000000110001111011100000001101111010001000000011110110100010000001000011111011100000010010101000111000000101000101110110000001011000101100100000011000000011011000000110100000001110000001110000001011100000011110001010001000001000000101011110000010001010011011100000100100111100011000001001110101101110000010100111011000100000101100011010011000001011110000110110000011000111000100100000110100100011111000001101110110110010000011101001011101100000111101011000011000010000000111100010000100001110100011100001000110111000001000010010100011000110000100110110010100100001010001000010111000010101001001010010000101100000110001100001011011111000001000010111111010001010000110001101110111100001100111010111111000011010110101100110000110111101100110100001110011100001101000011101111011100110000111101111111110100010000000010101011000100001001011111110001000100100111100100010001101110010111000100100100110110010001001011100100000100010011011111001101000101000001011111010001010010110101001100010101010101001011000101011111011010010001011010011010100100010111010000001111000101111110100110010001100010010100010100011001010000010111000110011111000010110001101010100010001100011011010101011101000111000000101110110001110011000011110100011101011111100001000111100011101010010001111011111001001100011111101110100001001000000111110100010010000101000010001100100010000010010111001000101101001011010010001110011110011100100100011011000001001001010011101111010010011000001101110100100110111000011101001001111011011111010010100010010000000100101001011010100101001010100100011010010010101100100100111100101100000001010111001011001110011111110010110111001100011100101110101100101111001011111001101101110011000010000110000100110001011100101001001100100110000100110011001101010001101100110100010001000011001101010011100010110011011000101111000100110111001001110111001110000010000111010011100100011101111100111010000111000011001110110001110000110011110000011110001100111101001000011111001111100010011110110011111100101111010101000000001110001101010000010100010000010100001001010001001101000011011000000011010001000111000011110100010110000011100101000110100101111111010001111010111000010100100011000110000101001001110111111011010010101111101100110100110000011000011101001101001101110101010011100101100000010100111101111010011101010000100111101001010100011100010001010101001011101011101101010100000101001101010101010011111110110101011001101100000101010111100110100011010110001100100111010101100111111011000101011011001011011111010111000110001001110101110110011000100101011110110100000011011000000000100101010110000101000100000101100010100000000101011000111011111000010110010011111101010101100110001111100011011001111000000001110110100011000100000101101010000010010101011010110100111111110110110010010111111101101101111000010111011011110010110001010111000001111000100101110001110001100101011100110001010101010111010001100101101101110101101101110111011101110000101010010111100001011110111101111001101101001001011110110000101110010111110001100011111101111101101111010111011111110001100000111000000001110100010110000001110100011001100000110011000000011000010010001111101110000101111100001001100001110101001010111000100010110101111110001010000110100101100010110111111111011000110011100110011110001110010011100011100011111011011011111001000100100000111110010010100010111101100100111111011111111001010101100100111110010110110100110001100110000100001000111001100110110010010110011011001000110111100111001001010110011001111000001000100110011111011111001001101000001111000101111010001001100111010110100011110111100001101001010101010110111010011011001110001110101000010001110111101010011100000110111010101100111100101110101100101110001001101011100011010100111010111110110010101110110001001100001101101100101010111111011011010000101111100110110101101100000001101101110011000100111011100010110011000110111010001101011001101110111011100011011011110100111100101110111110110000010011110000000100011001011100000111001100001111000011010100101001110001001101100101111100011001100000111111000111111010010001110010010111000110111100101011111010110111001100100001000111110011100000111010111100111110011001010111010001001001000111110100101010111111111101010000111011111111010101110010000101110101110101010100111101100011100010010111011010011011111111110110111111110111111101110110001100001111011111000110101101111000001010100111011110001000111001000111100011110010001001111001010101100001011110011011101000011111101000011110001011111010100000100101011110101110011010000111101101001010101111111011101011110000011111000001001101010111110001110111101101111100110111000001011111010100000010000111110110100100111101111110000010010111011111100110110111101111111011010010011101111111001101101111011111111001101101111000000000000000000000000000011001001000100000001100100100010000000100101101100100000001100100100001100000011111011010010000001001011011000100000010101111111000000000110010001111110000001110001000010100000011111011001011000001000101000100000000010010110101010010000101000110011000000001010111110110110000010111100001110110000110010001011110100001101010100111110000011100001101111000000111011100011100000001111101010110010000100000111001010100001000100111001111100010010000000010001000100101100100000010001001110001110111000010100010101010111000101010001101111100001010111100010000100010110101010000001000101110110110111010001100000110011011000011000111110001011000110011011110111010001101010000010101000011011010001110011000111000000101110000001110011001111100100011101100100110101000111100101011011000001111100011001111100011111110111001110001000001001111101110010000101100001101100100010001000111010001000101110010101000010001110100110100000100100011001110111001001010010100000000010010111101000010000100110101010000010001001110110011110100010100000100110101100101000111001010111001010011010001111000010101001100001101100101011000111110011001010111101110001010010110010011000111100101101010101010011001011100001000100000010111011001100011000101111100001110101001100000100000111000011000011111011110000110001101101010100001100100110111001010011001100100110111000110011110111101111001101001001011010000011010101001101100100110110000001000001001101101011101000100011011101101111100100111000001001001001001110001101100011110011100110001100110100111010010000000010001110101111001011100011101110100101000100111100010101101011001111010000011111000011110110111000001100111110011010000000001111110001011101000011111111000101111001000000011100111111010000010010000101010100000111001110000101000010011110100100010000110010010111000100001111010000100101000100011110101100010001010010010001010100010111001101001101000110011101010110010001110001110011100100011111000011110001001000011010011110010010010000111101010100100110110100000101001010010110000001010010101111101101100100101110011110000001001100001111111101010011001110000011110100110110000001011001001110001000010000010011101011111111100100111101011110000001001111111110110110010100001001011111110101000100110011110001010001110011101101010100100110100100010101001100000010100001010011100110110010010101000011001011110101010011001010000001010101011000000011010101011111010110100101011010001010001101010111000111011110010101111011000011000101100001000010110101011000110101000000010110010110010001100101100111110011110101011010100000100111010110110001000000110101101110011101000001011100001010010000010111001011010000010101110100111110010001011101110001111001010111100100111111110101111011010111011101011111010111100000010111111110001110100110000001101000011001100000111011000011011000010110111100010110000111110000111101100010011100011111011000101111000111110110001101110001000101100011111011110010011001000110110001010110010011101000100001100101011000111011011001011101110111110110011001010111001101100110110011110111011001110100011011000110011110111101000001101000001100100101011010001010011010010110100100011001110101101001100011000001011010011111110101010110101001101101100101101010110111001100011010110100101011100110101110111000000001101100001001000010011011001000111100100110110011111001001001101101011000100010011011011100101000000110111000110000110101101110100101101010011011101111101101010110111101011110111101101111110000011000011100000010001100000111000010000011011101110000111000101100011100010100000100000111000110011110001001110001111110100011011100100101010100100111001010101110111101110011000001111011011100110101111101010111001110110101111001110100000010110100011101000101111110010111010010110010110001110101000001001100011101010101010110110111010110100101011101110101111101000010011101100100000110100111011010001110000001110110110110010100011101110010001101010111011101101100010001110111101101000001011101111111101010110111100001000000001001111000100001000111011110001100011110100111100100001001101001111001010010100111011110011000101000010111100111001000100101111010000001011110011110100100001000000111101001111100111101111010101101101100011110101110111101010111101100100110110001111011010111001111011110111001001000000111101111000101110101111011111110001000011111000010100111110111110001011010001101111100100010010100011111001011011100010111110011100011110001111101000011110011011111010011100101110111110101100010100001111101100010100101011111011011000011110111110111010110010101111101111110101001011111100001110110000111111000111111010101111110010111111101011111100111111100110111111010011101010001111110101110100011011111101101010111010111111011110000010101111111000010011000011111110010000110000111111100111000010101111111010011011101011111110110001000100111111101110101010001111111100001110010011111111001011111000111111110100111001001111111101101010101011111111100001001000111111111001110000001111111110110000111011111111110000110110111111111101001110001111111111100001000011111111111011000010111111111111010011001111111111111011000011111111111111101010111111111111111111101111111111111110101011111111111110110000111111111111010011001111111111101100001011111111111000010000111111111101001110001111111111000011011011111111101100001110111111111001110000001111111110000100100011111111011010101010111111110100111001001111111100101111100011111111000011100100111111101110101010001111111011000100010011111110100110111010111111100111000010101111111001000011000011111110000100110000111111011110000010101111110110101011101011111101011101000110111111010011101010001111110011111110011011111100101111111010111111000111111010101111110000111011000011111011111101010010111110111010110010101111101101100001111011111011000101001010111110101100010100001111101001110010111011111010000111100110111110011100011110001111100101101110001011111001000100101000111110001011010001101111100001010011111011110111111100010000111101111000101110101111011100100100000011110110101110011110111101100100110110001111010111011110101011110101011011011000111101001111100111101111010010000100000011110100000010111100111100111001000100101111001100010100001011110010100101001110111100100001001101001111000110001111010011110001000010001110111100001000000001001110111111110101011011101111011010000010111011101101100010001110111001000110101011101101101100101000111011010001110000001110110010000011010011101011111010000100111010110100101011101110101010101011011011101010000010011000111010010110010110001110100010111111001011101000000101101000111001110110101111001110011010111110101011100110000011110110111001010101110111101110010010101010010011100011111101000110111000110011110001001110001010000010000011100001110001011000111000010000011011101110000001000110000011011111100000110000110111101011110111101101110111110110101011011101001011010100110111000110000110101101101110010100000011011010110001000100110110011111001001001101100100011110010011011000010010000100110101110111000000001101011010010101110011010101101110011000110101001101101100101101001111111010101011010011000110000010110100100011001110101101000101001101001011010000011001001010110011110111101000001100111010001101100011001101100111101110110011001010111001101100101110111011111011001010110001110110110010011101000100001100100011011000101011000111110111100100110001101110001000101100010111100011111011000100111000111110110000111110000111101100001011011110001011000001110110000110110000001101000011001011111111000111010010111110101111000000101111011010111011101011110010011111111010111011100011110010101110100111110010001011100101101000001010111000010100100000101101110011101000001011011000100000011010110101000001001110101100111110011110101011001011001000110010110001101010000000101100001000010110101010111101100001100010101110001110111100101011010001010001101010101111101011010010101010110000000110101010011001010000001010100001100101111010100111001101100100101001100000010100001010010011010010001010100011100111011010101000100110011110001010000100101111111010011111111101101100100111101011110000001001110101111111110010011100010000100000100110110000001011001001100111000001111010011000011111111010100101110011110000001001010111110110110010010100101100000010100100110110100000101001001000011110101010010000110100111100100011111000011110001000111000111001110010001100111010101100100010111001101001101000101001001000101010001000111101011000100001111010000100101000011001001011100010000100111101001000100000111001110000101000001001000010101010000000111001111110011111111000101111000111111000101110100001111100110100000000011110110111000001100111101000001111100001111000101011010110011101110100101000100111010111100101110001110100100000000100011100110001100110100111000110110001111001110000010010010010011011101101111100100110110101110100010001101100000010000010011010101001101100100110100100101101000001100111101111011110011001100100110111000110010011011100101001100011011010101000011000011111011110000110000010000011100001011111000011101010010111011001100011000101110000100010000001011010101010100110010110010011000111100101011110111000101001010110001111100110010101001100001101100101001101000111100001010001110010101110010100000100110101100100111011001111010001001101010100000100010010111101000010000100101001010000000001001000110011101110010001110100110100000100010111001010100001000100010001110100010000101100001101100100000100111110111000111111101110011100001111100011001111100011110010101101100000111011001001101010001110011001111100100011100000010111000000110110100011100110001101010000010101000011001101111011101000110001111100010110001100000110011011000010111011011011101000101101010100000010001010111100010000100010101000110111110000101000101010101110001001110001110111000010010110010000001000100100000000100010001000100111001111100010000011100101010000011111010101100100000111011100011100000001110000110111100000011010101001111100000110010001011110100001011110000111011000010101111101101100000101000110011000000001001011010101001000010001010001000000000011111011001011000000111000100001010000001100100011111100000010101111111000000000100101101100010000000111110110100100000001100100100001100000010010110110010000000011001001000100000000011001001000100000000000000000000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\bram_dp_sin_lut.vhdl:1063:28 */
  reg [19:0] n171[1023:0] ; // memory
  initial begin
    n171[1023] = 20'b11111111001101101111;
    n171[1022] = 20'b11111110011011011110;
    n171[1021] = 20'b11111101101001001110;
    n171[1020] = 20'b11111100110110111101;
    n171[1019] = 20'b11111100000100101110;
    n171[1018] = 20'b11111011010010011110;
    n171[1017] = 20'b11111010100000010000;
    n171[1016] = 20'b11111001101110000010;
    n171[1015] = 20'b11111000111011110110;
    n171[1014] = 20'b11111000001001101010;
    n171[1013] = 20'b11110111010111100000;
    n171[1012] = 20'b11110110100101010111;
    n171[1011] = 20'b11110101110011010000;
    n171[1010] = 20'b11110101000001001010;
    n171[1009] = 20'b11110100001111000101;
    n171[1008] = 20'b11110011011101000011;
    n171[1007] = 20'b11110010101011000010;
    n171[1006] = 20'b11110001111001000100;
    n171[1005] = 20'b11110001000111001000;
    n171[1004] = 20'b11110000010101001110;
    n171[1003] = 20'b11101111100011010110;
    n171[1002] = 20'b11101110110001100001;
    n171[1001] = 20'b11101101111111101111;
    n171[1000] = 20'b11101101001101111111;
    n171[999] = 20'b11101100011100010010;
    n171[998] = 20'b11101011101010101001;
    n171[997] = 20'b11101010111001000010;
    n171[996] = 20'b11101010000111011111;
    n171[995] = 20'b11101001010101111111;
    n171[994] = 20'b11101000100100100011;
    n171[993] = 20'b11100111110011001010;
    n171[992] = 20'b11100111000001110101;
    n171[991] = 20'b11100110010000100011;
    n171[990] = 20'b11100101011111010110;
    n171[989] = 20'b11100100101110001101;
    n171[988] = 20'b11100011111101001000;
    n171[987] = 20'b11100011001100000111;
    n171[986] = 20'b11100010011011001011;
    n171[985] = 20'b11100001101010010100;
    n171[984] = 20'b11100000111001100001;
    n171[983] = 20'b11100000001000110010;
    n171[982] = 20'b11011111011000001001;
    n171[981] = 20'b11011110100111100101;
    n171[980] = 20'b11011101110111000110;
    n171[979] = 20'b11011101000110101100;
    n171[978] = 20'b11011100010110011000;
    n171[977] = 20'b11011011100110001001;
    n171[976] = 20'b11011010110110000000;
    n171[975] = 20'b11011010000101111100;
    n171[974] = 20'b11011001010101111110;
    n171[973] = 20'b11011000100110000110;
    n171[972] = 20'b11010111110110010101;
    n171[971] = 20'b11010111000110101001;
    n171[970] = 20'b11010110010111000100;
    n171[969] = 20'b11010101100111100101;
    n171[968] = 20'b11010100111000001101;
    n171[967] = 20'b11010100001000111011;
    n171[966] = 20'b11010011011001110001;
    n171[965] = 20'b11010010101010101101;
    n171[964] = 20'b11010001111011110000;
    n171[963] = 20'b11010001001100111010;
    n171[962] = 20'b11010000011110001011;
    n171[961] = 20'b11001111101111100100;
    n171[960] = 20'b11001111000001000100;
    n171[959] = 20'b11001110010010101100;
    n171[958] = 20'b11001101100100011011;
    n171[957] = 20'b11001100110110010010;
    n171[956] = 20'b11001100001000010001;
    n171[955] = 20'b11001011011010011000;
    n171[954] = 20'b11001010101100100111;
    n171[953] = 20'b11001001111110111111;
    n171[952] = 20'b11001001010001011110;
    n171[951] = 20'b11001000100100000111;
    n171[950] = 20'b11000111110110110111;
    n171[949] = 20'b11000111001001110001;
    n171[948] = 20'b11000110011100110011;
    n171[947] = 20'b11000101101111111110;
    n171[946] = 20'b11000101000011010010;
    n171[945] = 20'b11000100010110101111;
    n171[944] = 20'b11000011101010010101;
    n171[943] = 20'b11000010111110000100;
    n171[942] = 20'b11000010010001111101;
    n171[941] = 20'b11000001100110000000;
    n171[940] = 20'b11000000111010001100;
    n171[939] = 20'b11000000001110100010;
    n171[938] = 20'b10111111100011000001;
    n171[937] = 20'b10111110110111101011;
    n171[936] = 20'b10111110001100011111;
    n171[935] = 20'b10111101100001011100;
    n171[934] = 20'b10111100110110100100;
    n171[933] = 20'b10111100001011110111;
    n171[932] = 20'b10111011100001010100;
    n171[931] = 20'b10111010110110111011;
    n171[930] = 20'b10111010001100101101;
    n171[929] = 20'b10111001100010101010;
    n171[928] = 20'b10111000111000110010;
    n171[927] = 20'b10111000001111000100;
    n171[926] = 20'b10110111100101100010;
    n171[925] = 20'b10110110111100001011;
    n171[924] = 20'b10110110010010111111;
    n171[923] = 20'b10110101101001111111;
    n171[922] = 20'b10110101000001001010;
    n171[921] = 20'b10110100011000100000;
    n171[920] = 20'b10110011110000000011;
    n171[919] = 20'b10110011000111110001;
    n171[918] = 20'b10110010011111101010;
    n171[917] = 20'b10110001110111110000;
    n171[916] = 20'b10110001010000000010;
    n171[915] = 20'b10110000101000100000;
    n171[914] = 20'b10110000000001001010;
    n171[913] = 20'b10101111011010000001;
    n171[912] = 20'b10101110110011000100;
    n171[911] = 20'b10101110001100010011;
    n171[910] = 20'b10101101100101101111;
    n171[909] = 20'b10101100111111011000;
    n171[908] = 20'b10101100011001001110;
    n171[907] = 20'b10101011110011010001;
    n171[906] = 20'b10101011001101100000;
    n171[905] = 20'b10101010100111111101;
    n171[904] = 20'b10101010000010100110;
    n171[903] = 20'b10101001011101011101;
    n171[902] = 20'b10101000111000100010;
    n171[901] = 20'b10101000010011110100;
    n171[900] = 20'b10100111101111010011;
    n171[899] = 20'b10100111001011000000;
    n171[898] = 20'b10100110100110111010;
    n171[897] = 20'b10100110000011000011;
    n171[896] = 20'b10100101011111011001;
    n171[895] = 20'b10100100111011111101;
    n171[894] = 20'b10100100011000110000;
    n171[893] = 20'b10100011110101110000;
    n171[892] = 20'b10100011010010111111;
    n171[891] = 20'b10100010110000011100;
    n171[890] = 20'b10100010001110000111;
    n171[889] = 20'b10100001101100000001;
    n171[888] = 20'b10100001001010001001;
    n171[887] = 20'b10100000101000100000;
    n171[886] = 20'b10100000000111000110;
    n171[885] = 20'b10011111100101111010;
    n171[884] = 20'b10011111000100111101;
    n171[883] = 20'b10011110100100001111;
    n171[882] = 20'b10011110000011110001;
    n171[881] = 20'b10011101100011100001;
    n171[880] = 20'b10011101000011100001;
    n171[879] = 20'b10011100100011101111;
    n171[878] = 20'b10011100000100001110;
    n171[877] = 20'b10011011100100111011;
    n171[876] = 20'b10011011000101111000;
    n171[875] = 20'b10011010100111000101;
    n171[874] = 20'b10011010001000100001;
    n171[873] = 20'b10011001101010001101;
    n171[872] = 20'b10011001001100001001;
    n171[871] = 20'b10011000101110010100;
    n171[870] = 20'b10011000010000110000;
    n171[869] = 20'b10010111110011011011;
    n171[868] = 20'b10010111010110010111;
    n171[867] = 20'b10010110111001100011;
    n171[866] = 20'b10010110011100111111;
    n171[865] = 20'b10010110000000101011;
    n171[864] = 20'b10010101100100100111;
    n171[863] = 20'b10010101001000110100;
    n171[862] = 20'b10010100101101010010;
    n171[861] = 20'b10010100010010000000;
    n171[860] = 20'b10010011110110111110;
    n171[859] = 20'b10010011011100001110;
    n171[858] = 20'b10010011000001101110;
    n171[857] = 20'b10010010100111011110;
    n171[856] = 20'b10010010001101100000;
    n171[855] = 20'b10010001110011110011;
    n171[854] = 20'b10010001011010010110;
    n171[853] = 20'b10010001000001001011;
    n171[852] = 20'b10010000101000010001;
    n171[851] = 20'b10010000001111101000;
    n171[850] = 20'b10001111110111010000;
    n171[849] = 20'b10001111011111001001;
    n171[848] = 20'b10001111000111010100;
    n171[847] = 20'b10001110101111110000;
    n171[846] = 20'b10001110011000011110;
    n171[845] = 20'b10001110000001011101;
    n171[844] = 20'b10001101101010101110;
    n171[843] = 20'b10001101010100010001;
    n171[842] = 20'b10001100111110000101;
    n171[841] = 20'b10001100101000001011;
    n171[840] = 20'b10001100010010100010;
    n171[839] = 20'b10001011111101001100;
    n171[838] = 20'b10001011101000000111;
    n171[837] = 20'b10001011010011010100;
    n171[836] = 20'b10001010111110110100;
    n171[835] = 20'b10001010101010100101;
    n171[834] = 20'b10001010010110101001;
    n171[833] = 20'b10001010000010111110;
    n171[832] = 20'b10001001101111100110;
    n171[831] = 20'b10001001011100100000;
    n171[830] = 20'b10001001001001101100;
    n171[829] = 20'b10001000110111001011;
    n171[828] = 20'b10001000100100111100;
    n171[827] = 20'b10001000010010111111;
    n171[826] = 20'b10001000000001010101;
    n171[825] = 20'b10000111101111111110;
    n171[824] = 20'b10000111011110111001;
    n171[823] = 20'b10000111001110000110;
    n171[822] = 20'b10000110111101100110;
    n171[821] = 20'b10000110101101011001;
    n171[820] = 20'b10000110011101011111;
    n171[819] = 20'b10000110001101110111;
    n171[818] = 20'b10000101111110100010;
    n171[817] = 20'b10000101101111100000;
    n171[816] = 20'b10000101100000110001;
    n171[815] = 20'b10000101010010010100;
    n171[814] = 20'b10000101000100001011;
    n171[813] = 20'b10000100110110010100;
    n171[812] = 20'b10000100101000110001;
    n171[811] = 20'b10000100011011100000;
    n171[810] = 20'b10000100001110100011;
    n171[809] = 20'b10000100000001111000;
    n171[808] = 20'b10000011110101100001;
    n171[807] = 20'b10000011101001011101;
    n171[806] = 20'b10000011011101101100;
    n171[805] = 20'b10000011010010001111;
    n171[804] = 20'b10000011000111000100;
    n171[803] = 20'b10000010111100001101;
    n171[802] = 20'b10000010110001101001;
    n171[801] = 20'b10000010100111011000;
    n171[800] = 20'b10000010011101011011;
    n171[799] = 20'b10000010010011110001;
    n171[798] = 20'b10000010001010011011;
    n171[797] = 20'b10000010000001010111;
    n171[796] = 20'b10000001111000101000;
    n171[795] = 20'b10000001110000001011;
    n171[794] = 20'b10000001101000000011;
    n171[793] = 20'b10000001100000001101;
    n171[792] = 20'b10000001011000101100;
    n171[791] = 20'b10000001010001011101;
    n171[790] = 20'b10000001001010100011;
    n171[789] = 20'b10000001000011111011;
    n171[788] = 20'b10000000111101101000;
    n171[787] = 20'b10000000110111101000;
    n171[786] = 20'b10000000110001111011;
    n171[785] = 20'b10000000101100100011;
    n171[784] = 20'b10000000100111011110;
    n171[783] = 20'b10000000100010101100;
    n171[782] = 20'b10000000011110001110;
    n171[781] = 20'b10000000011010000100;
    n171[780] = 20'b10000000010110001110;
    n171[779] = 20'b10000000010010101011;
    n171[778] = 20'b10000000001111011100;
    n171[777] = 20'b10000000001100100000;
    n171[776] = 20'b10000000001001111001;
    n171[775] = 20'b10000000000111100101;
    n171[774] = 20'b10000000000101100100;
    n171[773] = 20'b10000000000011111000;
    n171[772] = 20'b10000000000010011111;
    n171[771] = 20'b10000000000001011010;
    n171[770] = 20'b10000000000000101000;
    n171[769] = 20'b10000000000000001011;
    n171[768] = 20'b10000000000000000001;
    n171[767] = 20'b10000000000000001011;
    n171[766] = 20'b10000000000000101000;
    n171[765] = 20'b10000000000001011010;
    n171[764] = 20'b10000000000010011111;
    n171[763] = 20'b10000000000011111000;
    n171[762] = 20'b10000000000101100100;
    n171[761] = 20'b10000000000111100101;
    n171[760] = 20'b10000000001001111001;
    n171[759] = 20'b10000000001100100000;
    n171[758] = 20'b10000000001111011100;
    n171[757] = 20'b10000000010010101011;
    n171[756] = 20'b10000000010110001110;
    n171[755] = 20'b10000000011010000100;
    n171[754] = 20'b10000000011110001110;
    n171[753] = 20'b10000000100010101100;
    n171[752] = 20'b10000000100111011110;
    n171[751] = 20'b10000000101100100011;
    n171[750] = 20'b10000000110001111011;
    n171[749] = 20'b10000000110111101000;
    n171[748] = 20'b10000000111101101000;
    n171[747] = 20'b10000001000011111011;
    n171[746] = 20'b10000001001010100011;
    n171[745] = 20'b10000001010001011101;
    n171[744] = 20'b10000001011000101100;
    n171[743] = 20'b10000001100000001101;
    n171[742] = 20'b10000001101000000011;
    n171[741] = 20'b10000001110000001011;
    n171[740] = 20'b10000001111000101000;
    n171[739] = 20'b10000010000001010111;
    n171[738] = 20'b10000010001010011011;
    n171[737] = 20'b10000010010011110001;
    n171[736] = 20'b10000010011101011011;
    n171[735] = 20'b10000010100111011000;
    n171[734] = 20'b10000010110001101001;
    n171[733] = 20'b10000010111100001101;
    n171[732] = 20'b10000011000111000100;
    n171[731] = 20'b10000011010010001111;
    n171[730] = 20'b10000011011101101100;
    n171[729] = 20'b10000011101001011101;
    n171[728] = 20'b10000011110101100001;
    n171[727] = 20'b10000100000001111000;
    n171[726] = 20'b10000100001110100011;
    n171[725] = 20'b10000100011011100000;
    n171[724] = 20'b10000100101000110001;
    n171[723] = 20'b10000100110110010100;
    n171[722] = 20'b10000101000100001011;
    n171[721] = 20'b10000101010010010100;
    n171[720] = 20'b10000101100000110001;
    n171[719] = 20'b10000101101111100000;
    n171[718] = 20'b10000101111110100010;
    n171[717] = 20'b10000110001101110111;
    n171[716] = 20'b10000110011101011111;
    n171[715] = 20'b10000110101101011001;
    n171[714] = 20'b10000110111101100110;
    n171[713] = 20'b10000111001110000110;
    n171[712] = 20'b10000111011110111001;
    n171[711] = 20'b10000111101111111110;
    n171[710] = 20'b10001000000001010101;
    n171[709] = 20'b10001000010010111111;
    n171[708] = 20'b10001000100100111100;
    n171[707] = 20'b10001000110111001011;
    n171[706] = 20'b10001001001001101100;
    n171[705] = 20'b10001001011100100000;
    n171[704] = 20'b10001001101111100110;
    n171[703] = 20'b10001010000010111110;
    n171[702] = 20'b10001010010110101001;
    n171[701] = 20'b10001010101010100101;
    n171[700] = 20'b10001010111110110100;
    n171[699] = 20'b10001011010011010100;
    n171[698] = 20'b10001011101000000111;
    n171[697] = 20'b10001011111101001100;
    n171[696] = 20'b10001100010010100010;
    n171[695] = 20'b10001100101000001011;
    n171[694] = 20'b10001100111110000101;
    n171[693] = 20'b10001101010100010001;
    n171[692] = 20'b10001101101010101110;
    n171[691] = 20'b10001110000001011101;
    n171[690] = 20'b10001110011000011110;
    n171[689] = 20'b10001110101111110000;
    n171[688] = 20'b10001111000111010100;
    n171[687] = 20'b10001111011111001001;
    n171[686] = 20'b10001111110111010000;
    n171[685] = 20'b10010000001111101000;
    n171[684] = 20'b10010000101000010001;
    n171[683] = 20'b10010001000001001011;
    n171[682] = 20'b10010001011010010110;
    n171[681] = 20'b10010001110011110011;
    n171[680] = 20'b10010010001101100000;
    n171[679] = 20'b10010010100111011110;
    n171[678] = 20'b10010011000001101110;
    n171[677] = 20'b10010011011100001110;
    n171[676] = 20'b10010011110110111110;
    n171[675] = 20'b10010100010010000000;
    n171[674] = 20'b10010100101101010010;
    n171[673] = 20'b10010101001000110100;
    n171[672] = 20'b10010101100100100111;
    n171[671] = 20'b10010110000000101011;
    n171[670] = 20'b10010110011100111111;
    n171[669] = 20'b10010110111001100011;
    n171[668] = 20'b10010111010110010111;
    n171[667] = 20'b10010111110011011011;
    n171[666] = 20'b10011000010000110000;
    n171[665] = 20'b10011000101110010100;
    n171[664] = 20'b10011001001100001001;
    n171[663] = 20'b10011001101010001101;
    n171[662] = 20'b10011010001000100001;
    n171[661] = 20'b10011010100111000101;
    n171[660] = 20'b10011011000101111000;
    n171[659] = 20'b10011011100100111011;
    n171[658] = 20'b10011100000100001110;
    n171[657] = 20'b10011100100011101111;
    n171[656] = 20'b10011101000011100001;
    n171[655] = 20'b10011101100011100001;
    n171[654] = 20'b10011110000011110001;
    n171[653] = 20'b10011110100100001111;
    n171[652] = 20'b10011111000100111101;
    n171[651] = 20'b10011111100101111010;
    n171[650] = 20'b10100000000111000110;
    n171[649] = 20'b10100000101000100000;
    n171[648] = 20'b10100001001010001001;
    n171[647] = 20'b10100001101100000001;
    n171[646] = 20'b10100010001110000111;
    n171[645] = 20'b10100010110000011100;
    n171[644] = 20'b10100011010010111111;
    n171[643] = 20'b10100011110101110000;
    n171[642] = 20'b10100100011000110000;
    n171[641] = 20'b10100100111011111101;
    n171[640] = 20'b10100101011111011001;
    n171[639] = 20'b10100110000011000011;
    n171[638] = 20'b10100110100110111010;
    n171[637] = 20'b10100111001011000000;
    n171[636] = 20'b10100111101111010011;
    n171[635] = 20'b10101000010011110100;
    n171[634] = 20'b10101000111000100010;
    n171[633] = 20'b10101001011101011101;
    n171[632] = 20'b10101010000010100110;
    n171[631] = 20'b10101010100111111101;
    n171[630] = 20'b10101011001101100000;
    n171[629] = 20'b10101011110011010001;
    n171[628] = 20'b10101100011001001110;
    n171[627] = 20'b10101100111111011000;
    n171[626] = 20'b10101101100101101111;
    n171[625] = 20'b10101110001100010011;
    n171[624] = 20'b10101110110011000100;
    n171[623] = 20'b10101111011010000001;
    n171[622] = 20'b10110000000001001010;
    n171[621] = 20'b10110000101000100000;
    n171[620] = 20'b10110001010000000010;
    n171[619] = 20'b10110001110111110000;
    n171[618] = 20'b10110010011111101010;
    n171[617] = 20'b10110011000111110001;
    n171[616] = 20'b10110011110000000011;
    n171[615] = 20'b10110100011000100000;
    n171[614] = 20'b10110101000001001010;
    n171[613] = 20'b10110101101001111111;
    n171[612] = 20'b10110110010010111111;
    n171[611] = 20'b10110110111100001011;
    n171[610] = 20'b10110111100101100010;
    n171[609] = 20'b10111000001111000100;
    n171[608] = 20'b10111000111000110010;
    n171[607] = 20'b10111001100010101010;
    n171[606] = 20'b10111010001100101101;
    n171[605] = 20'b10111010110110111011;
    n171[604] = 20'b10111011100001010100;
    n171[603] = 20'b10111100001011110111;
    n171[602] = 20'b10111100110110100100;
    n171[601] = 20'b10111101100001011100;
    n171[600] = 20'b10111110001100011111;
    n171[599] = 20'b10111110110111101011;
    n171[598] = 20'b10111111100011000001;
    n171[597] = 20'b11000000001110100010;
    n171[596] = 20'b11000000111010001100;
    n171[595] = 20'b11000001100110000000;
    n171[594] = 20'b11000010010001111101;
    n171[593] = 20'b11000010111110000100;
    n171[592] = 20'b11000011101010010101;
    n171[591] = 20'b11000100010110101111;
    n171[590] = 20'b11000101000011010010;
    n171[589] = 20'b11000101101111111110;
    n171[588] = 20'b11000110011100110011;
    n171[587] = 20'b11000111001001110001;
    n171[586] = 20'b11000111110110110111;
    n171[585] = 20'b11001000100100000111;
    n171[584] = 20'b11001001010001011110;
    n171[583] = 20'b11001001111110111111;
    n171[582] = 20'b11001010101100100111;
    n171[581] = 20'b11001011011010011000;
    n171[580] = 20'b11001100001000010001;
    n171[579] = 20'b11001100110110010010;
    n171[578] = 20'b11001101100100011011;
    n171[577] = 20'b11001110010010101100;
    n171[576] = 20'b11001111000001000100;
    n171[575] = 20'b11001111101111100100;
    n171[574] = 20'b11010000011110001011;
    n171[573] = 20'b11010001001100111010;
    n171[572] = 20'b11010001111011110000;
    n171[571] = 20'b11010010101010101101;
    n171[570] = 20'b11010011011001110001;
    n171[569] = 20'b11010100001000111011;
    n171[568] = 20'b11010100111000001101;
    n171[567] = 20'b11010101100111100101;
    n171[566] = 20'b11010110010111000100;
    n171[565] = 20'b11010111000110101001;
    n171[564] = 20'b11010111110110010101;
    n171[563] = 20'b11011000100110000110;
    n171[562] = 20'b11011001010101111110;
    n171[561] = 20'b11011010000101111100;
    n171[560] = 20'b11011010110110000000;
    n171[559] = 20'b11011011100110001001;
    n171[558] = 20'b11011100010110011000;
    n171[557] = 20'b11011101000110101100;
    n171[556] = 20'b11011101110111000110;
    n171[555] = 20'b11011110100111100101;
    n171[554] = 20'b11011111011000001001;
    n171[553] = 20'b11100000001000110010;
    n171[552] = 20'b11100000111001100001;
    n171[551] = 20'b11100001101010010100;
    n171[550] = 20'b11100010011011001011;
    n171[549] = 20'b11100011001100000111;
    n171[548] = 20'b11100011111101001000;
    n171[547] = 20'b11100100101110001101;
    n171[546] = 20'b11100101011111010110;
    n171[545] = 20'b11100110010000100011;
    n171[544] = 20'b11100111000001110101;
    n171[543] = 20'b11100111110011001010;
    n171[542] = 20'b11101000100100100011;
    n171[541] = 20'b11101001010101111111;
    n171[540] = 20'b11101010000111011111;
    n171[539] = 20'b11101010111001000010;
    n171[538] = 20'b11101011101010101001;
    n171[537] = 20'b11101100011100010010;
    n171[536] = 20'b11101101001101111111;
    n171[535] = 20'b11101101111111101111;
    n171[534] = 20'b11101110110001100001;
    n171[533] = 20'b11101111100011010110;
    n171[532] = 20'b11110000010101001110;
    n171[531] = 20'b11110001000111001000;
    n171[530] = 20'b11110001111001000100;
    n171[529] = 20'b11110010101011000010;
    n171[528] = 20'b11110011011101000011;
    n171[527] = 20'b11110100001111000101;
    n171[526] = 20'b11110101000001001010;
    n171[525] = 20'b11110101110011010000;
    n171[524] = 20'b11110110100101010111;
    n171[523] = 20'b11110111010111100000;
    n171[522] = 20'b11111000001001101010;
    n171[521] = 20'b11111000111011110110;
    n171[520] = 20'b11111001101110000010;
    n171[519] = 20'b11111010100000010000;
    n171[518] = 20'b11111011010010011110;
    n171[517] = 20'b11111100000100101110;
    n171[516] = 20'b11111100110110111101;
    n171[515] = 20'b11111101101001001110;
    n171[514] = 20'b11111110011011011110;
    n171[513] = 20'b11111111001101101111;
    n171[512] = 20'b00000000000000000000;
    n171[511] = 20'b00000000110010010001;
    n171[510] = 20'b00000001100100100010;
    n171[509] = 20'b00000010010110110010;
    n171[508] = 20'b00000011001001000011;
    n171[507] = 20'b00000011111011010010;
    n171[506] = 20'b00000100101101100010;
    n171[505] = 20'b00000101011111110000;
    n171[504] = 20'b00000110010001111110;
    n171[503] = 20'b00000111000100001010;
    n171[502] = 20'b00000111110110010110;
    n171[501] = 20'b00001000101000100000;
    n171[500] = 20'b00001001011010101001;
    n171[499] = 20'b00001010001100110000;
    n171[498] = 20'b00001010111110110110;
    n171[497] = 20'b00001011110000111011;
    n171[496] = 20'b00001100100010111101;
    n171[495] = 20'b00001101010100111110;
    n171[494] = 20'b00001110000110111100;
    n171[493] = 20'b00001110111000111000;
    n171[492] = 20'b00001111101010110010;
    n171[491] = 20'b00010000011100101010;
    n171[490] = 20'b00010001001110011111;
    n171[489] = 20'b00010010000000010001;
    n171[488] = 20'b00010010110010000001;
    n171[487] = 20'b00010011100011101110;
    n171[486] = 20'b00010100010101010111;
    n171[485] = 20'b00010101000110111110;
    n171[484] = 20'b00010101111000100001;
    n171[483] = 20'b00010110101010000001;
    n171[482] = 20'b00010111011011011101;
    n171[481] = 20'b00011000001100110110;
    n171[480] = 20'b00011000111110001011;
    n171[479] = 20'b00011001101111011101;
    n171[478] = 20'b00011010100000101010;
    n171[477] = 20'b00011011010001110011;
    n171[476] = 20'b00011100000010111000;
    n171[475] = 20'b00011100110011111001;
    n171[474] = 20'b00011101100100110101;
    n171[473] = 20'b00011110010101101100;
    n171[472] = 20'b00011111000110011111;
    n171[471] = 20'b00011111110111001110;
    n171[470] = 20'b00100000100111110111;
    n171[469] = 20'b00100001011000011011;
    n171[468] = 20'b00100010001000111010;
    n171[467] = 20'b00100010111001010100;
    n171[466] = 20'b00100011101001101000;
    n171[465] = 20'b00100100011001110111;
    n171[464] = 20'b00100101001010000000;
    n171[463] = 20'b00100101111010000100;
    n171[462] = 20'b00100110101010000010;
    n171[461] = 20'b00100111011001111010;
    n171[460] = 20'b00101000001001101011;
    n171[459] = 20'b00101000111001010111;
    n171[458] = 20'b00101001101000111100;
    n171[457] = 20'b00101010011000011011;
    n171[456] = 20'b00101011000111110011;
    n171[455] = 20'b00101011110111000101;
    n171[454] = 20'b00101100100110001111;
    n171[453] = 20'b00101101010101010011;
    n171[452] = 20'b00101110000100010000;
    n171[451] = 20'b00101110110011000110;
    n171[450] = 20'b00101111100001110101;
    n171[449] = 20'b00110000010000011100;
    n171[448] = 20'b00110000111110111100;
    n171[447] = 20'b00110001101101010100;
    n171[446] = 20'b00110010011011100101;
    n171[445] = 20'b00110011001001101110;
    n171[444] = 20'b00110011110111101111;
    n171[443] = 20'b00110100100101101000;
    n171[442] = 20'b00110101010011011001;
    n171[441] = 20'b00110110000001000001;
    n171[440] = 20'b00110110101110100010;
    n171[439] = 20'b00110111011011111001;
    n171[438] = 20'b00111000001001001001;
    n171[437] = 20'b00111000110110001111;
    n171[436] = 20'b00111001100011001101;
    n171[435] = 20'b00111010010000000010;
    n171[434] = 20'b00111010111100101110;
    n171[433] = 20'b00111011101001010001;
    n171[432] = 20'b00111100010101101011;
    n171[431] = 20'b00111101000001111100;
    n171[430] = 20'b00111101101110000011;
    n171[429] = 20'b00111110011010000000;
    n171[428] = 20'b00111111000101110100;
    n171[427] = 20'b00111111110001011110;
    n171[426] = 20'b01000000011100111111;
    n171[425] = 20'b01000001001000010101;
    n171[424] = 20'b01000001110011100001;
    n171[423] = 20'b01000010011110100100;
    n171[422] = 20'b01000011001001011100;
    n171[421] = 20'b01000011110100001001;
    n171[420] = 20'b01000100011110101100;
    n171[419] = 20'b01000101001001000101;
    n171[418] = 20'b01000101110011010011;
    n171[417] = 20'b01000110011101010110;
    n171[416] = 20'b01000111000111001110;
    n171[415] = 20'b01000111110000111100;
    n171[414] = 20'b01001000011010011110;
    n171[413] = 20'b01001001000011110101;
    n171[412] = 20'b01001001101101000001;
    n171[411] = 20'b01001010010110000001;
    n171[410] = 20'b01001010111110110110;
    n171[409] = 20'b01001011100111100000;
    n171[408] = 20'b01001100001111111101;
    n171[407] = 20'b01001100111000001111;
    n171[406] = 20'b01001101100000010110;
    n171[405] = 20'b01001110001000010000;
    n171[404] = 20'b01001110101111111110;
    n171[403] = 20'b01001111010111100000;
    n171[402] = 20'b01001111111110110110;
    n171[401] = 20'b01010000100101111111;
    n171[400] = 20'b01010001001100111100;
    n171[399] = 20'b01010001110011101101;
    n171[398] = 20'b01010010011010010001;
    n171[397] = 20'b01010011000000101000;
    n171[396] = 20'b01010011100110110010;
    n171[395] = 20'b01010100001100101111;
    n171[394] = 20'b01010100110010100000;
    n171[393] = 20'b01010101011000000011;
    n171[392] = 20'b01010101111101011010;
    n171[391] = 20'b01010110100010100011;
    n171[390] = 20'b01010111000111011110;
    n171[389] = 20'b01010111101100001100;
    n171[388] = 20'b01011000010000101101;
    n171[387] = 20'b01011000110101000000;
    n171[386] = 20'b01011001011001000110;
    n171[385] = 20'b01011001111100111101;
    n171[384] = 20'b01011010100000100111;
    n171[383] = 20'b01011011000100000011;
    n171[382] = 20'b01011011100111010000;
    n171[381] = 20'b01011100001010010000;
    n171[380] = 20'b01011100101101000001;
    n171[379] = 20'b01011101001111100100;
    n171[378] = 20'b01011101110001111001;
    n171[377] = 20'b01011110010011111111;
    n171[376] = 20'b01011110110101110111;
    n171[375] = 20'b01011111010111100000;
    n171[374] = 20'b01011111111000111010;
    n171[373] = 20'b01100000011010000110;
    n171[372] = 20'b01100000111011000011;
    n171[371] = 20'b01100001011011110001;
    n171[370] = 20'b01100001111100001111;
    n171[369] = 20'b01100010011100011111;
    n171[368] = 20'b01100010111100011111;
    n171[367] = 20'b01100011011100010001;
    n171[366] = 20'b01100011111011110010;
    n171[365] = 20'b01100100011011000101;
    n171[364] = 20'b01100100111010001000;
    n171[363] = 20'b01100101011000111011;
    n171[362] = 20'b01100101110111011111;
    n171[361] = 20'b01100110010101110011;
    n171[360] = 20'b01100110110011110111;
    n171[359] = 20'b01100111010001101100;
    n171[358] = 20'b01100111101111010000;
    n171[357] = 20'b01101000001100100101;
    n171[356] = 20'b01101000101001101001;
    n171[355] = 20'b01101001000110011101;
    n171[354] = 20'b01101001100011000001;
    n171[353] = 20'b01101001111111010101;
    n171[352] = 20'b01101010011011011001;
    n171[351] = 20'b01101010110111001100;
    n171[350] = 20'b01101011010010101110;
    n171[349] = 20'b01101011101110000000;
    n171[348] = 20'b01101100001001000010;
    n171[347] = 20'b01101100100011110010;
    n171[346] = 20'b01101100111110010010;
    n171[345] = 20'b01101101011000100010;
    n171[344] = 20'b01101101110010100000;
    n171[343] = 20'b01101110001100001101;
    n171[342] = 20'b01101110100101101010;
    n171[341] = 20'b01101110111110110101;
    n171[340] = 20'b01101111010111101111;
    n171[339] = 20'b01101111110000011000;
    n171[338] = 20'b01110000001000110000;
    n171[337] = 20'b01110000100000110111;
    n171[336] = 20'b01110000111000101100;
    n171[335] = 20'b01110001010000010000;
    n171[334] = 20'b01110001100111100010;
    n171[333] = 20'b01110001111110100011;
    n171[332] = 20'b01110010010101010010;
    n171[331] = 20'b01110010101011101111;
    n171[330] = 20'b01110011000001111011;
    n171[329] = 20'b01110011010111110101;
    n171[328] = 20'b01110011101101011110;
    n171[327] = 20'b01110100000010110100;
    n171[326] = 20'b01110100010111111001;
    n171[325] = 20'b01110100101100101100;
    n171[324] = 20'b01110101000001001100;
    n171[323] = 20'b01110101010101011011;
    n171[322] = 20'b01110101101001010111;
    n171[321] = 20'b01110101111101000010;
    n171[320] = 20'b01110110010000011010;
    n171[319] = 20'b01110110100011100000;
    n171[318] = 20'b01110110110110010100;
    n171[317] = 20'b01110111001000110101;
    n171[316] = 20'b01110111011011000100;
    n171[315] = 20'b01110111101101000001;
    n171[314] = 20'b01110111111110101011;
    n171[313] = 20'b01111000010000000010;
    n171[312] = 20'b01111000100001000111;
    n171[311] = 20'b01111000110001111010;
    n171[310] = 20'b01111001000010011010;
    n171[309] = 20'b01111001010010100111;
    n171[308] = 20'b01111001100010100001;
    n171[307] = 20'b01111001110010001001;
    n171[306] = 20'b01111010000001011110;
    n171[305] = 20'b01111010010000100000;
    n171[304] = 20'b01111010011111001111;
    n171[303] = 20'b01111010101101101100;
    n171[302] = 20'b01111010111011110101;
    n171[301] = 20'b01111011001001101100;
    n171[300] = 20'b01111011010111001111;
    n171[299] = 20'b01111011100100100000;
    n171[298] = 20'b01111011110001011101;
    n171[297] = 20'b01111011111110001000;
    n171[296] = 20'b01111100001010011111;
    n171[295] = 20'b01111100010110100011;
    n171[294] = 20'b01111100100010010100;
    n171[293] = 20'b01111100101101110001;
    n171[292] = 20'b01111100111000111100;
    n171[291] = 20'b01111101000011110011;
    n171[290] = 20'b01111101001110010111;
    n171[289] = 20'b01111101011000101000;
    n171[288] = 20'b01111101100010100101;
    n171[287] = 20'b01111101101100001111;
    n171[286] = 20'b01111101110101100101;
    n171[285] = 20'b01111101111110101001;
    n171[284] = 20'b01111110000111011000;
    n171[283] = 20'b01111110001111110101;
    n171[282] = 20'b01111110010111111101;
    n171[281] = 20'b01111110011111110011;
    n171[280] = 20'b01111110100111010100;
    n171[279] = 20'b01111110101110100011;
    n171[278] = 20'b01111110110101011101;
    n171[277] = 20'b01111110111100000101;
    n171[276] = 20'b01111111000010011000;
    n171[275] = 20'b01111111001000011000;
    n171[274] = 20'b01111111001110000101;
    n171[273] = 20'b01111111010011011101;
    n171[272] = 20'b01111111011000100010;
    n171[271] = 20'b01111111011101010100;
    n171[270] = 20'b01111111100001110010;
    n171[269] = 20'b01111111100101111100;
    n171[268] = 20'b01111111101001110010;
    n171[267] = 20'b01111111101101010101;
    n171[266] = 20'b01111111110000100100;
    n171[265] = 20'b01111111110011100000;
    n171[264] = 20'b01111111110110000111;
    n171[263] = 20'b01111111111000011011;
    n171[262] = 20'b01111111111010011100;
    n171[261] = 20'b01111111111100001000;
    n171[260] = 20'b01111111111101100001;
    n171[259] = 20'b01111111111110100110;
    n171[258] = 20'b01111111111111011000;
    n171[257] = 20'b01111111111111110101;
    n171[256] = 20'b01111111111111111111;
    n171[255] = 20'b01111111111111110101;
    n171[254] = 20'b01111111111111011000;
    n171[253] = 20'b01111111111110100110;
    n171[252] = 20'b01111111111101100001;
    n171[251] = 20'b01111111111100001000;
    n171[250] = 20'b01111111111010011100;
    n171[249] = 20'b01111111111000011011;
    n171[248] = 20'b01111111110110000111;
    n171[247] = 20'b01111111110011100000;
    n171[246] = 20'b01111111110000100100;
    n171[245] = 20'b01111111101101010101;
    n171[244] = 20'b01111111101001110010;
    n171[243] = 20'b01111111100101111100;
    n171[242] = 20'b01111111100001110010;
    n171[241] = 20'b01111111011101010100;
    n171[240] = 20'b01111111011000100010;
    n171[239] = 20'b01111111010011011101;
    n171[238] = 20'b01111111001110000101;
    n171[237] = 20'b01111111001000011000;
    n171[236] = 20'b01111111000010011000;
    n171[235] = 20'b01111110111100000101;
    n171[234] = 20'b01111110110101011101;
    n171[233] = 20'b01111110101110100011;
    n171[232] = 20'b01111110100111010100;
    n171[231] = 20'b01111110011111110011;
    n171[230] = 20'b01111110010111111101;
    n171[229] = 20'b01111110001111110101;
    n171[228] = 20'b01111110000111011000;
    n171[227] = 20'b01111101111110101001;
    n171[226] = 20'b01111101110101100101;
    n171[225] = 20'b01111101101100001111;
    n171[224] = 20'b01111101100010100101;
    n171[223] = 20'b01111101011000101000;
    n171[222] = 20'b01111101001110010111;
    n171[221] = 20'b01111101000011110011;
    n171[220] = 20'b01111100111000111100;
    n171[219] = 20'b01111100101101110001;
    n171[218] = 20'b01111100100010010100;
    n171[217] = 20'b01111100010110100011;
    n171[216] = 20'b01111100001010011111;
    n171[215] = 20'b01111011111110001000;
    n171[214] = 20'b01111011110001011101;
    n171[213] = 20'b01111011100100100000;
    n171[212] = 20'b01111011010111001111;
    n171[211] = 20'b01111011001001101100;
    n171[210] = 20'b01111010111011110101;
    n171[209] = 20'b01111010101101101100;
    n171[208] = 20'b01111010011111001111;
    n171[207] = 20'b01111010010000100000;
    n171[206] = 20'b01111010000001011110;
    n171[205] = 20'b01111001110010001001;
    n171[204] = 20'b01111001100010100001;
    n171[203] = 20'b01111001010010100111;
    n171[202] = 20'b01111001000010011010;
    n171[201] = 20'b01111000110001111010;
    n171[200] = 20'b01111000100001000111;
    n171[199] = 20'b01111000010000000010;
    n171[198] = 20'b01110111111110101011;
    n171[197] = 20'b01110111101101000001;
    n171[196] = 20'b01110111011011000100;
    n171[195] = 20'b01110111001000110101;
    n171[194] = 20'b01110110110110010100;
    n171[193] = 20'b01110110100011100000;
    n171[192] = 20'b01110110010000011010;
    n171[191] = 20'b01110101111101000010;
    n171[190] = 20'b01110101101001010111;
    n171[189] = 20'b01110101010101011011;
    n171[188] = 20'b01110101000001001100;
    n171[187] = 20'b01110100101100101100;
    n171[186] = 20'b01110100010111111001;
    n171[185] = 20'b01110100000010110100;
    n171[184] = 20'b01110011101101011110;
    n171[183] = 20'b01110011010111110101;
    n171[182] = 20'b01110011000001111011;
    n171[181] = 20'b01110010101011101111;
    n171[180] = 20'b01110010010101010010;
    n171[179] = 20'b01110001111110100011;
    n171[178] = 20'b01110001100111100010;
    n171[177] = 20'b01110001010000010000;
    n171[176] = 20'b01110000111000101100;
    n171[175] = 20'b01110000100000110111;
    n171[174] = 20'b01110000001000110000;
    n171[173] = 20'b01101111110000011000;
    n171[172] = 20'b01101111010111101111;
    n171[171] = 20'b01101110111110110101;
    n171[170] = 20'b01101110100101101010;
    n171[169] = 20'b01101110001100001101;
    n171[168] = 20'b01101101110010100000;
    n171[167] = 20'b01101101011000100010;
    n171[166] = 20'b01101100111110010010;
    n171[165] = 20'b01101100100011110010;
    n171[164] = 20'b01101100001001000010;
    n171[163] = 20'b01101011101110000000;
    n171[162] = 20'b01101011010010101110;
    n171[161] = 20'b01101010110111001100;
    n171[160] = 20'b01101010011011011001;
    n171[159] = 20'b01101001111111010101;
    n171[158] = 20'b01101001100011000001;
    n171[157] = 20'b01101001000110011101;
    n171[156] = 20'b01101000101001101001;
    n171[155] = 20'b01101000001100100101;
    n171[154] = 20'b01100111101111010000;
    n171[153] = 20'b01100111010001101100;
    n171[152] = 20'b01100110110011110111;
    n171[151] = 20'b01100110010101110011;
    n171[150] = 20'b01100101110111011111;
    n171[149] = 20'b01100101011000111011;
    n171[148] = 20'b01100100111010001000;
    n171[147] = 20'b01100100011011000101;
    n171[146] = 20'b01100011111011110010;
    n171[145] = 20'b01100011011100010001;
    n171[144] = 20'b01100010111100011111;
    n171[143] = 20'b01100010011100011111;
    n171[142] = 20'b01100001111100001111;
    n171[141] = 20'b01100001011011110001;
    n171[140] = 20'b01100000111011000011;
    n171[139] = 20'b01100000011010000110;
    n171[138] = 20'b01011111111000111010;
    n171[137] = 20'b01011111010111100000;
    n171[136] = 20'b01011110110101110111;
    n171[135] = 20'b01011110010011111111;
    n171[134] = 20'b01011101110001111001;
    n171[133] = 20'b01011101001111100100;
    n171[132] = 20'b01011100101101000001;
    n171[131] = 20'b01011100001010010000;
    n171[130] = 20'b01011011100111010000;
    n171[129] = 20'b01011011000100000011;
    n171[128] = 20'b01011010100000100111;
    n171[127] = 20'b01011001111100111101;
    n171[126] = 20'b01011001011001000110;
    n171[125] = 20'b01011000110101000000;
    n171[124] = 20'b01011000010000101101;
    n171[123] = 20'b01010111101100001100;
    n171[122] = 20'b01010111000111011110;
    n171[121] = 20'b01010110100010100011;
    n171[120] = 20'b01010101111101011010;
    n171[119] = 20'b01010101011000000011;
    n171[118] = 20'b01010100110010100000;
    n171[117] = 20'b01010100001100101111;
    n171[116] = 20'b01010011100110110010;
    n171[115] = 20'b01010011000000101000;
    n171[114] = 20'b01010010011010010001;
    n171[113] = 20'b01010001110011101101;
    n171[112] = 20'b01010001001100111100;
    n171[111] = 20'b01010000100101111111;
    n171[110] = 20'b01001111111110110110;
    n171[109] = 20'b01001111010111100000;
    n171[108] = 20'b01001110101111111110;
    n171[107] = 20'b01001110001000010000;
    n171[106] = 20'b01001101100000010110;
    n171[105] = 20'b01001100111000001111;
    n171[104] = 20'b01001100001111111101;
    n171[103] = 20'b01001011100111100000;
    n171[102] = 20'b01001010111110110110;
    n171[101] = 20'b01001010010110000001;
    n171[100] = 20'b01001001101101000001;
    n171[99] = 20'b01001001000011110101;
    n171[98] = 20'b01001000011010011110;
    n171[97] = 20'b01000111110000111100;
    n171[96] = 20'b01000111000111001110;
    n171[95] = 20'b01000110011101010110;
    n171[94] = 20'b01000101110011010011;
    n171[93] = 20'b01000101001001000101;
    n171[92] = 20'b01000100011110101100;
    n171[91] = 20'b01000011110100001001;
    n171[90] = 20'b01000011001001011100;
    n171[89] = 20'b01000010011110100100;
    n171[88] = 20'b01000001110011100001;
    n171[87] = 20'b01000001001000010101;
    n171[86] = 20'b01000000011100111111;
    n171[85] = 20'b00111111110001011110;
    n171[84] = 20'b00111111000101110100;
    n171[83] = 20'b00111110011010000000;
    n171[82] = 20'b00111101101110000011;
    n171[81] = 20'b00111101000001111100;
    n171[80] = 20'b00111100010101101011;
    n171[79] = 20'b00111011101001010001;
    n171[78] = 20'b00111010111100101110;
    n171[77] = 20'b00111010010000000010;
    n171[76] = 20'b00111001100011001101;
    n171[75] = 20'b00111000110110001111;
    n171[74] = 20'b00111000001001001001;
    n171[73] = 20'b00110111011011111001;
    n171[72] = 20'b00110110101110100010;
    n171[71] = 20'b00110110000001000001;
    n171[70] = 20'b00110101010011011001;
    n171[69] = 20'b00110100100101101000;
    n171[68] = 20'b00110011110111101111;
    n171[67] = 20'b00110011001001101110;
    n171[66] = 20'b00110010011011100101;
    n171[65] = 20'b00110001101101010100;
    n171[64] = 20'b00110000111110111100;
    n171[63] = 20'b00110000010000011100;
    n171[62] = 20'b00101111100001110101;
    n171[61] = 20'b00101110110011000110;
    n171[60] = 20'b00101110000100010000;
    n171[59] = 20'b00101101010101010011;
    n171[58] = 20'b00101100100110001111;
    n171[57] = 20'b00101011110111000101;
    n171[56] = 20'b00101011000111110011;
    n171[55] = 20'b00101010011000011011;
    n171[54] = 20'b00101001101000111100;
    n171[53] = 20'b00101000111001010111;
    n171[52] = 20'b00101000001001101011;
    n171[51] = 20'b00100111011001111010;
    n171[50] = 20'b00100110101010000010;
    n171[49] = 20'b00100101111010000100;
    n171[48] = 20'b00100101001010000000;
    n171[47] = 20'b00100100011001110111;
    n171[46] = 20'b00100011101001101000;
    n171[45] = 20'b00100010111001010100;
    n171[44] = 20'b00100010001000111010;
    n171[43] = 20'b00100001011000011011;
    n171[42] = 20'b00100000100111110111;
    n171[41] = 20'b00011111110111001110;
    n171[40] = 20'b00011111000110011111;
    n171[39] = 20'b00011110010101101100;
    n171[38] = 20'b00011101100100110101;
    n171[37] = 20'b00011100110011111001;
    n171[36] = 20'b00011100000010111000;
    n171[35] = 20'b00011011010001110011;
    n171[34] = 20'b00011010100000101010;
    n171[33] = 20'b00011001101111011101;
    n171[32] = 20'b00011000111110001011;
    n171[31] = 20'b00011000001100110110;
    n171[30] = 20'b00010111011011011101;
    n171[29] = 20'b00010110101010000001;
    n171[28] = 20'b00010101111000100001;
    n171[27] = 20'b00010101000110111110;
    n171[26] = 20'b00010100010101010111;
    n171[25] = 20'b00010011100011101110;
    n171[24] = 20'b00010010110010000001;
    n171[23] = 20'b00010010000000010001;
    n171[22] = 20'b00010001001110011111;
    n171[21] = 20'b00010000011100101010;
    n171[20] = 20'b00001111101010110010;
    n171[19] = 20'b00001110111000111000;
    n171[18] = 20'b00001110000110111100;
    n171[17] = 20'b00001101010100111110;
    n171[16] = 20'b00001100100010111101;
    n171[15] = 20'b00001011110000111011;
    n171[14] = 20'b00001010111110110110;
    n171[13] = 20'b00001010001100110000;
    n171[12] = 20'b00001001011010101001;
    n171[11] = 20'b00001000101000100000;
    n171[10] = 20'b00000111110110010110;
    n171[9] = 20'b00000111000100001010;
    n171[8] = 20'b00000110010001111110;
    n171[7] = 20'b00000101011111110000;
    n171[6] = 20'b00000100101101100010;
    n171[5] = 20'b00000011111011010010;
    n171[4] = 20'b00000011001001000011;
    n171[3] = 20'b00000010010110110010;
    n171[2] = 20'b00000001100100100010;
    n171[1] = 20'b00000000110010010001;
    n171[0] = 20'b00000000000000000000;
    end
  always @(posedge clk_b)
    if (1'b1)
      n174 <= n171[addr_b];
  always @(posedge clk_a)
    if (1'b1)
      n176 <= n171[addr_a];
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\bram_dp_sin_lut.vhdl:1070:28 */
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\bram_dp_sin_lut.vhdl:1070:27 */
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
  wire [31:0] n55;
  wire [9:0] n56;
  wire [9:0] n57;
  wire [9:0] n59;
  wire [29:0] n60;
  wire [29:0] n62;
  wire [29:0] n63;
  wire [36:0] n64;
  wire [36:0] n66;
  wire [36:0] n67;
  wire [36:0] n68;
  wire [31:0] n71;
  wire [7:0] n72;
  wire [20:0] n73;
  wire [20:0] n74;
  wire [20:0] n75;
  wire [20:0] n76;
  wire [9:0] n77;
  wire [10:0] n79;
  wire [8:0] n81;
  wire [19:0] n82;
  wire [19:0] n83;
  wire [19:0] n84;
  wire [10:0] n85;
  wire [8:0] n87;
  wire [19:0] n88;
  wire [19:0] n89;
  wire [19:0] n90;
  wire [29:0] n91;
  wire [29:0] n92;
  wire [29:0] n94;
  wire [29:0] n95;
  wire [20:0] n96;
  wire [7:0] n97;
  wire [8:0] n99;
  wire [29:0] n100;
  wire [29:0] n101;
  wire [29:0] n102;
  wire [7:0] n103;
  wire [28:0] n104;
  wire [28:0] n105;
  wire [28:0] n106;
  wire [7:0] n107;
  wire n108;
  wire n109;
  wire [6:0] n110;
  wire [7:0] n111;
  reg [7:0] n130;
  reg [31:0] n131;
  reg [7:0] n132;
  reg [20:0] n133;
  reg [20:0] n134;
  reg [7:0] n135;
  reg [29:0] n136;
  reg [20:0] n137;
  reg [20:0] n138;
  reg [20:0] n139;
  reg [7:0] n140;
  reg [19:0] n141;
  reg [19:0] n142;
  reg [29:0] n143;
  reg [28:0] n144;
  reg [15:0] n145;
  reg [31:0] n146;
  reg [31:0] n147;
  assign y = n130; //(module output)
  assign lut_addr_0 = n56; //(module output)
  assign lut_addr_1 = n59; //(module output)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:39:12 */
  always @*
    accumulator = n131; // (isignal)
  initial
    accumulator = 32'b00000000000000000000000000000000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:41:12 */
  always @*
    phase_word = n55; // (isignal)
  initial
    phase_word = 32'b00000000000000000000000000000000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:44:12 */
  assign fraction_reg = n132; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:47:12 */
  assign diff_reg = n133; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:48:12 */
  assign y0_d1 = n134; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:49:12 */
  assign fraction_d1 = n135; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:52:12 */
  assign product_reg = n136; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:53:12 */
  assign y0_d2 = n137; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:55:12 */
  assign y0_d3 = n138; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:59:12 */
  assign interp_sum = n63; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:60:12 */
  assign interp_reg = n139; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:65:12 */
  assign dac_reg = n140; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:71:12 */
  assign interp_lo_prod = n141; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:72:12 */
  assign interp_hi_prod = n142; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:75:12 */
  assign scale_lo_product = n143; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:76:12 */
  assign scale_hi_product = n144; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:79:12 */
  assign scale_combined = n68; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:81:12 */
  assign scale_reg = n145; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:82:12 */
  assign m_reg = n146; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:83:12 */
  assign phase_reg = n147; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:120:31 */
  assign n55 = accumulator + phase_reg;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:123:29 */
  assign n56 = phase_word[31:22]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:124:29 */
  assign n57 = phase_word[31:22]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:124:90 */
  assign n59 = n57 + 10'b0000000001;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:127:30 */
  assign n60 = {{9{y0_d3[20]}}, y0_d3}; // sext
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:127:19 */
  assign n62 = n60 << 31'b0000000000000000000000000001000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:127:92 */
  assign n63 = n62 + product_reg;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:133:20 */
  assign n64 = {{8{scale_hi_product[28]}}, scale_hi_product}; // sext
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:133:9 */
  assign n66 = n64 << 31'b0000000000000000000000000001000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:134:11 */
  assign n67 = {{7{scale_lo_product[29]}}, scale_lo_product}; // sext
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:134:9 */
  assign n68 = n66 + n67;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:140:39 */
  assign n71 = accumulator + m_reg;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:143:39 */
  assign n72 = phase_word[21:14]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:146:25 */
  assign n73 = {{1{lut_di_1[19]}}, lut_di_1}; // sext
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:146:62 */
  assign n74 = {{1{lut_di_0[19]}}, lut_di_0}; // sext
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:146:60 */
  assign n75 = n73 - n74;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:147:22 */
  assign n76 = {{1{lut_di_0[19]}}, lut_di_0}; // sext
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:158:52 */
  assign n77 = diff_reg[9:0]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:158:42 */
  assign n79 = {1'b0, n77};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:158:79 */
  assign n81 = {1'b0, fraction_d1};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:158:66 */
  assign n82 = {{9{n79[10]}}, n79}; // sext
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:158:66 */
  assign n83 = {{11{n81[8]}}, n81}; // sext
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:158:66 */
  assign n84 = $signed(n82) * $signed(n83); // smul
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:159:39 */
  assign n85 = diff_reg[20:10]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:159:66 */
  assign n87 = {1'b0, fraction_d1};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:159:54 */
  assign n88 = {{9{n85[10]}}, n85}; // sext
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:159:54 */
  assign n89 = {{11{n87[8]}}, n87}; // sext
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:159:54 */
  assign n90 = $signed(n88) * $signed(n89); // smul
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:162:28 */
  assign n91 = {{10{interp_lo_prod[19]}}, interp_lo_prod}; // sext
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:162:68 */
  assign n92 = {{10{interp_hi_prod[19]}}, interp_hi_prod}; // sext
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:162:57 */
  assign n94 = n92 << 31'b0000000000000000000000000001010;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:162:55 */
  assign n95 = n91 + n94;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:170:44 */
  assign n96 = interp_sum[28:8]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:174:52 */
  assign n97 = scale_reg[7:0]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:174:41 */
  assign n99 = {1'b0, n97};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:174:28 */
  assign n100 = {{9{interp_reg[20]}}, interp_reg}; // sext
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:174:28 */
  assign n101 = {{21{n99[8]}}, n99}; // sext
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:174:28 */
  assign n102 = $signed(n100) * $signed(n101); // smul
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:177:39 */
  assign n103 = scale_reg[15:8]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:177:28 */
  assign n104 = {{8{interp_reg[20]}}, interp_reg}; // sext
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:177:28 */
  assign n105 = {{21{n103[7]}}, n103}; // sext
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:177:28 */
  assign n106 = $signed(n104) * $signed(n105); // smul
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:181:38 */
  assign n107 = scale_combined[34:27]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:182:29 */
  assign n108 = dac_reg[7]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:182:18 */
  assign n109 = ~n108;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:182:72 */
  assign n110 = dac_reg[6:0]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:182:46 */
  assign n111 = {n109, n110};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n130 <= n111;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n131 <= n71;
  initial
    n131 = 32'b00000000000000000000000000000000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n132 <= n72;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n133 <= n75;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n134 <= n76;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n135 <= fraction_reg;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n136 <= n95;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n137 <= y0_d1;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n138 <= y0_d2;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n139 <= n96;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n140 <= n107;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n141 <= n84;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n142 <= n90;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n143 <= n102;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:138:9 */
  always @(posedge clk)
    n144 <= n106;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:110:9 */
  always @(posedge clk)
    n145 <= scale;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:110:9 */
  always @(posedge clk)
    n146 <= m;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\Zector_DDS_IP.vhdl:110:9 */
  always @(posedge clk)
    n147 <= phase;
endmodule

module spi_slave_top
  (input  clk_10_MHz,
   input  spi_clk,
   input  spi_mosi,
   input  spi_ncs,
   output spi_miso,
   output [7:0] dac_out);
  wire [9:0] lut_addr_a;
  wire [9:0] lut_addr_b;
  wire [19:0] lut_data_a;
  wire [19:0] lut_data_b;
  wire [7:0] dds_out;
  wire spi_bram_we;
  wire spi_bram_en;
  wire [6:0] spi_bram_addr;
  wire [31:0] spi_bram_data;
  wire [39:0] bram_spi_data;
  wire rfs_bram_en;
  wire [9:0] rfs_bram_addr;
  wire [39:0] rfs_bram_data;
  wire w_spi_mosi;
  wire w_spi_clk;
  wire w_spi_ncs;
  wire sys_clk;
  wire clk_100_mhz;
  reg [31:0] data_reg_0;
  reg [31:0] data_reg_1;
  reg [31:0] data_reg_2;
  wire \pll_inst.USR_PLL_LOCKED_STDY ;
  wire \pll_inst.USR_PLL_LOCKED ;
  wire \pll_inst.CLK90 ;
  wire \pll_inst.CLK180 ;
  wire \pll_inst.CLK270 ;
  wire \pll_inst.CLK_REF_OUT ;
  localparam n5 = 1'b0;
  localparam n6 = 1'b0;
  localparam n7 = 1'b0;
  wire [15:0] n10;
  localparam n14 = 1'b0;
  localparam n15 = 1'b0;
  localparam [19:0] n16 = 20'b00000000000000000000;
  localparam [19:0] n17 = 20'b00000000000000000000;
  wire \spi_slave.o_miso ;
  wire [31:0] n25;
  wire [9:0] n27;
  wire [39:0] n29;
  localparam n31 = 1'b0;
  localparam [39:0] n32 = 40'b0000000000000000000000000000000000000000;
  wire \rfs_sch.o_we_cfg ;
  wire [31:0] \rfs_sch.o_do_0 ;
  wire [31:0] \rfs_sch.o_do_1 ;
  wire [31:0] \rfs_sch.o_do_2 ;
  wire [6:0] \rfs_sch.o_addr_cfg ;
  wire [31:0] n36;
  assign spi_miso = \spi_slave.o_miso ; //(module output)
  assign dac_out = dds_out; //(module output)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\spi_slave_top.vhdl:96:12 */
  assign w_spi_mosi = spi_mosi; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\spi_slave_top.vhdl:97:12 */
  assign w_spi_clk = spi_clk; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\spi_slave_top.vhdl:98:12 */
  assign w_spi_ncs = spi_ncs; // (signal)
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\spi_slave_top.vhdl:103:12 */
  always @*
    data_reg_0 = \rfs_sch.o_do_0 ; // (isignal)
  initial
    data_reg_0 = 32'b00000000000000000000000000000000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\spi_slave_top.vhdl:104:12 */
  always @*
    data_reg_1 = \rfs_sch.o_do_1 ; // (isignal)
  initial
    data_reg_1 = 32'b00000000000000000000000000000000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\spi_slave_top.vhdl:105:12 */
  always @*
    data_reg_2 = \rfs_sch.o_do_2 ; // (isignal)
  initial
    data_reg_2 = 32'b00000000000000000000000000000000;
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\spi_slave_top.vhdl:110:5 */
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
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\spi_slave_top.vhdl:137:5 */
  CC_BUFG sys_clock_buffer (
    .I(clk_100_mhz),
    .O(sys_clk));
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\spi_slave_top.vhdl:181:5 */
  zector_dds_ip_Brtl_32_10_20_16_8 dds_inst (
    .clk(clk_10_MHz),
    .lut_di_0(lut_data_a),
    .lut_di_1(lut_data_b),
    .m(data_reg_0),
    .phase(data_reg_1),
    .scale(n10),
    .y(dds_out),
    .lut_addr_0(lut_addr_a),
    .lut_addr_1(lut_addr_b));
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\spi_slave_top.vhdl:200:39 */
  assign n10 = data_reg_2[15:0]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\spi_slave_top.vhdl:212:5 */
  bram_dp_sin_lut_Brtl_20_10 bram_inst (
    .we_a(1'b0),
    .we_b(1'b0),
    .clk_a(clk_10_MHz),
    .clk_b(clk_10_MHz),
    .di_a(20'b00000000000000000000),
    .di_b(20'b00000000000000000000),
    .addr_a(lut_addr_a),
    .addr_b(lut_addr_b),
    .do_a(lut_data_a),
    .do_b(lut_data_b));
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\spi_slave_top.vhdl:232:5 */
  spi_slave_ctrl3_ip_Brtl_32_7_1 spi_slave (
    .i_clk(sys_clk),
    .i_spi_clk(w_spi_clk),
    .i_mosi(w_spi_mosi),
    .i_ncs(w_spi_ncs),
    .i_data(n25),
    .o_miso(\spi_slave.o_miso ),
    .o_we(spi_bram_we),
    .o_en(spi_bram_en),
    .o_addr(spi_bram_addr),
    .o_data(spi_bram_data));
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\spi_slave_top.vhdl:249:37 */
  assign n25 = bram_spi_data[31:0]; // extract
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\spi_slave_top.vhdl:252:5 */
  zector_40k_dp_bram_ip_Brtl_40_10 cfg_bram (
    .clk_a(sys_clk),
    .clk_b(clk_10_MHz),
    .en_a(spi_bram_en),
    .we_a(spi_bram_we),
    .addr_a(n27),
    .di_a(n29),
    .en_b(rfs_bram_en),
    .we_b(1'b0),
    .addr_b(rfs_bram_addr),
    .di_b(40'b0000000000000000000000000000000000000000),
    .do_a(bram_spi_data),
    .do_b(rfs_bram_data));
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\spi_slave_top.vhdl:264:30 */
  assign n27 = {3'b000, spi_bram_addr};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\spi_slave_top.vhdl:265:36 */
  assign n29 = {8'b00000000, spi_bram_data};
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\spi_slave_top.vhdl:279:5 */
  rfs_sch_test_Brtl rfs_sch (
    .i_clk(clk_10_MHz),
    .i_di(n36),
    .o_en_bram(rfs_bram_en),
    .o_we_cfg(),
    .o_do_0(\rfs_sch.o_do_0 ),
    .o_do_1(\rfs_sch.o_do_1 ),
    .o_do_2(\rfs_sch.o_do_2 ),
    .o_addr_bram(rfs_bram_addr),
    .o_addr_cfg());
  /*# C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\SPI_SLAVE_CONTROLLER\src\spi_slave_top.vhdl:286:41 */
  assign n36 = rfs_bram_data[31:0]; // extract
endmodule

