module cfg_registers_32_5
  (input  i_we,
   input  i_clk,
   input  i_update,
   input  [31:0] i_di,
   input  [4:0] i_addr,
   output [31:0] o_do,
   output [31:0] o_reg_0,
   output [31:0] o_reg_1,
   output [31:0] o_reg_2);
  reg [1023:0] memory;
  wire [4:0] n265_o;
  wire [4:0] n270_o;
  wire [31:0] n273_o;
  wire n276_o;
  wire [31:0] n277_o;
  wire [31:0] n278_o;
  wire [31:0] n279_o;
  reg [1023:0] n287_q;
  wire [31:0] n288_o;
  reg [31:0] n289_q;
  reg [31:0] n290_q;
  reg [31:0] n291_q;
  reg [31:0] n292_q;
  wire [31:0] n293_o;
  wire [31:0] n294_o;
  wire [31:0] n295_o;
  wire [31:0] n296_o;
  wire [31:0] n297_o;
  wire [31:0] n298_o;
  wire [31:0] n299_o;
  wire [31:0] n300_o;
  wire [31:0] n301_o;
  wire [31:0] n302_o;
  wire [31:0] n303_o;
  wire [31:0] n304_o;
  wire [31:0] n305_o;
  wire [31:0] n306_o;
  wire [31:0] n307_o;
  wire [31:0] n308_o;
  wire [31:0] n309_o;
  wire [31:0] n310_o;
  wire [31:0] n311_o;
  wire [31:0] n312_o;
  wire [31:0] n313_o;
  wire [31:0] n314_o;
  wire [31:0] n315_o;
  wire [31:0] n316_o;
  wire [31:0] n317_o;
  wire [31:0] n318_o;
  wire [31:0] n319_o;
  wire [31:0] n320_o;
  wire [31:0] n321_o;
  wire [31:0] n322_o;
  wire [31:0] n323_o;
  wire [31:0] n324_o;
  wire [1:0] n325_o;
  reg [31:0] n326_o;
  wire [1:0] n327_o;
  reg [31:0] n328_o;
  wire [1:0] n329_o;
  reg [31:0] n330_o;
  wire [1:0] n331_o;
  reg [31:0] n332_o;
  wire [1:0] n333_o;
  reg [31:0] n334_o;
  wire [1:0] n335_o;
  reg [31:0] n336_o;
  wire [1:0] n337_o;
  reg [31:0] n338_o;
  wire [1:0] n339_o;
  reg [31:0] n340_o;
  wire [1:0] n341_o;
  reg [31:0] n342_o;
  wire [1:0] n343_o;
  reg [31:0] n344_o;
  wire n345_o;
  wire [31:0] n346_o;
  wire n347_o;
  wire n348_o;
  wire n349_o;
  wire n350_o;
  wire n351_o;
  wire n352_o;
  wire n353_o;
  wire n354_o;
  wire n355_o;
  wire n356_o;
  wire n357_o;
  wire n358_o;
  wire n359_o;
  wire n360_o;
  wire n361_o;
  wire n362_o;
  wire n363_o;
  wire n364_o;
  wire n365_o;
  wire n366_o;
  wire n367_o;
  wire n368_o;
  wire n369_o;
  wire n370_o;
  wire n371_o;
  wire n372_o;
  wire n373_o;
  wire n374_o;
  wire n375_o;
  wire n376_o;
  wire n377_o;
  wire n378_o;
  wire n379_o;
  wire n380_o;
  wire n381_o;
  wire n382_o;
  wire n383_o;
  wire n384_o;
  wire n385_o;
  wire n386_o;
  wire n387_o;
  wire n388_o;
  wire n389_o;
  wire n390_o;
  wire n391_o;
  wire n392_o;
  wire n393_o;
  wire n394_o;
  wire n395_o;
  wire n396_o;
  wire n397_o;
  wire n398_o;
  wire n399_o;
  wire n400_o;
  wire n401_o;
  wire n402_o;
  wire n403_o;
  wire n404_o;
  wire n405_o;
  wire n406_o;
  wire n407_o;
  wire n408_o;
  wire n409_o;
  wire n410_o;
  wire n411_o;
  wire n412_o;
  wire n413_o;
  wire n414_o;
  wire n415_o;
  wire n416_o;
  wire [31:0] n417_o;
  wire n418_o;
  wire [31:0] n419_o;
  wire [31:0] n420_o;
  wire n421_o;
  wire [31:0] n422_o;
  wire [31:0] n423_o;
  wire n424_o;
  wire [31:0] n425_o;
  wire [31:0] n426_o;
  wire n427_o;
  wire [31:0] n428_o;
  wire [31:0] n429_o;
  wire n430_o;
  wire [31:0] n431_o;
  wire [31:0] n432_o;
  wire n433_o;
  wire [31:0] n434_o;
  wire [31:0] n435_o;
  wire n436_o;
  wire [31:0] n437_o;
  wire [31:0] n438_o;
  wire n439_o;
  wire [31:0] n440_o;
  wire [31:0] n441_o;
  wire n442_o;
  wire [31:0] n443_o;
  wire [31:0] n444_o;
  wire n445_o;
  wire [31:0] n446_o;
  wire [31:0] n447_o;
  wire n448_o;
  wire [31:0] n449_o;
  wire [31:0] n450_o;
  wire n451_o;
  wire [31:0] n452_o;
  wire [31:0] n453_o;
  wire n454_o;
  wire [31:0] n455_o;
  wire [31:0] n456_o;
  wire n457_o;
  wire [31:0] n458_o;
  wire [31:0] n459_o;
  wire n460_o;
  wire [31:0] n461_o;
  wire [31:0] n462_o;
  wire n463_o;
  wire [31:0] n464_o;
  wire [31:0] n465_o;
  wire n466_o;
  wire [31:0] n467_o;
  wire [31:0] n468_o;
  wire n469_o;
  wire [31:0] n470_o;
  wire [31:0] n471_o;
  wire n472_o;
  wire [31:0] n473_o;
  wire [31:0] n474_o;
  wire n475_o;
  wire [31:0] n476_o;
  wire [31:0] n477_o;
  wire n478_o;
  wire [31:0] n479_o;
  wire [31:0] n480_o;
  wire n481_o;
  wire [31:0] n482_o;
  wire [31:0] n483_o;
  wire n484_o;
  wire [31:0] n485_o;
  wire [31:0] n486_o;
  wire n487_o;
  wire [31:0] n488_o;
  wire [31:0] n489_o;
  wire n490_o;
  wire [31:0] n491_o;
  wire [31:0] n492_o;
  wire n493_o;
  wire [31:0] n494_o;
  wire [31:0] n495_o;
  wire n496_o;
  wire [31:0] n497_o;
  wire [31:0] n498_o;
  wire n499_o;
  wire [31:0] n500_o;
  wire [31:0] n501_o;
  wire n502_o;
  wire [31:0] n503_o;
  wire [31:0] n504_o;
  wire n505_o;
  wire [31:0] n506_o;
  wire [31:0] n507_o;
  wire n508_o;
  wire [31:0] n509_o;
  wire [31:0] n510_o;
  wire n511_o;
  wire [31:0] n512_o;
  wire [1023:0] n513_o;
  assign o_do = n289_q; //(module output)
  assign o_reg_0 = n290_q; //(module output)
  assign o_reg_1 = n291_q; //(module output)
  assign o_reg_2 = n292_q; //(module output)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:31:12  */
  always @*
    memory = n287_q; // (isignal)
  initial
    memory = 1024'b0000000001000001100010010011011100000000000000000111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:28  */
  assign n265_o = 5'b11111 - i_addr;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:36  */
  assign n270_o = 5'b11111 - i_addr;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:54:17  */
  assign n273_o = i_we ? n289_q : n346_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:53:13  */
  assign n276_o = i_we & i_update;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:60:26  */
  assign n277_o = memory[1023:992]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:61:26  */
  assign n278_o = memory[991:960]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:62:26  */
  assign n279_o = memory[959:928]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:52:9  */
  always @(posedge i_clk)
    n287_q <= n513_o;
  initial
    n287_q = 1024'b0000000001000001100010010011011100000000000000000111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:52:9  */
  assign n288_o = i_update ? n273_o : n289_q;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:52:9  */
  always @(posedge i_clk)
    n289_q <= n288_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:52:9  */
  always @(posedge i_clk)
    n290_q <= n277_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:52:9  */
  always @(posedge i_clk)
    n291_q <= n278_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:52:9  */
  always @(posedge i_clk)
    n292_q <= n279_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:23:9  */
  assign n293_o = memory[31:0]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:22:9  */
  assign n294_o = memory[63:32]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:21:9  */
  assign n295_o = memory[95:64]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:19:9  */
  assign n296_o = memory[127:96]; // extract
  assign n297_o = memory[159:128]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:52:9  */
  assign n298_o = memory[191:160]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:52:9  */
  assign n299_o = memory[223:192]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:36  */
  assign n300_o = memory[255:224]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:28  */
  assign n301_o = memory[287:256]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:50:5  */
  assign n302_o = memory[319:288]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:52:9  */
  assign n303_o = memory[351:320]; // extract
  assign n304_o = memory[383:352]; // extract
  assign n305_o = memory[415:384]; // extract
  assign n306_o = memory[447:416]; // extract
  assign n307_o = memory[479:448]; // extract
  assign n308_o = memory[511:480]; // extract
  assign n309_o = memory[543:512]; // extract
  assign n310_o = memory[575:544]; // extract
  assign n311_o = memory[607:576]; // extract
  assign n312_o = memory[639:608]; // extract
  assign n313_o = memory[671:640]; // extract
  assign n314_o = memory[703:672]; // extract
  assign n315_o = memory[735:704]; // extract
  assign n316_o = memory[767:736]; // extract
  assign n317_o = memory[799:768]; // extract
  assign n318_o = memory[831:800]; // extract
  assign n319_o = memory[863:832]; // extract
  assign n320_o = memory[895:864]; // extract
  assign n321_o = memory[927:896]; // extract
  assign n322_o = memory[959:928]; // extract
  assign n323_o = memory[991:960]; // extract
  assign n324_o = memory[1023:992]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  assign n325_o = n270_o[1:0]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  always @*
    case (n325_o)
      2'b00: n326_o = n293_o;
      2'b01: n326_o = n294_o;
      2'b10: n326_o = n295_o;
      2'b11: n326_o = n296_o;
    endcase
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  assign n327_o = n270_o[1:0]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  always @*
    case (n327_o)
      2'b00: n328_o = n297_o;
      2'b01: n328_o = n298_o;
      2'b10: n328_o = n299_o;
      2'b11: n328_o = n300_o;
    endcase
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  assign n329_o = n270_o[1:0]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  always @*
    case (n329_o)
      2'b00: n330_o = n301_o;
      2'b01: n330_o = n302_o;
      2'b10: n330_o = n303_o;
      2'b11: n330_o = n304_o;
    endcase
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  assign n331_o = n270_o[1:0]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  always @*
    case (n331_o)
      2'b00: n332_o = n305_o;
      2'b01: n332_o = n306_o;
      2'b10: n332_o = n307_o;
      2'b11: n332_o = n308_o;
    endcase
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  assign n333_o = n270_o[1:0]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  always @*
    case (n333_o)
      2'b00: n334_o = n309_o;
      2'b01: n334_o = n310_o;
      2'b10: n334_o = n311_o;
      2'b11: n334_o = n312_o;
    endcase
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  assign n335_o = n270_o[1:0]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  always @*
    case (n335_o)
      2'b00: n336_o = n313_o;
      2'b01: n336_o = n314_o;
      2'b10: n336_o = n315_o;
      2'b11: n336_o = n316_o;
    endcase
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  assign n337_o = n270_o[1:0]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  always @*
    case (n337_o)
      2'b00: n338_o = n317_o;
      2'b01: n338_o = n318_o;
      2'b10: n338_o = n319_o;
      2'b11: n338_o = n320_o;
    endcase
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  assign n339_o = n270_o[1:0]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  always @*
    case (n339_o)
      2'b00: n340_o = n321_o;
      2'b01: n340_o = n322_o;
      2'b10: n340_o = n323_o;
      2'b11: n340_o = n324_o;
    endcase
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  assign n341_o = n270_o[3:2]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  always @*
    case (n341_o)
      2'b00: n342_o = n326_o;
      2'b01: n342_o = n328_o;
      2'b10: n342_o = n330_o;
      2'b11: n342_o = n332_o;
    endcase
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  assign n343_o = n270_o[3:2]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  always @*
    case (n343_o)
      2'b00: n344_o = n334_o;
      2'b01: n344_o = n336_o;
      2'b10: n344_o = n338_o;
      2'b11: n344_o = n340_o;
    endcase
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  assign n345_o = n270_o[4]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  assign n346_o = n345_o ? n344_o : n342_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n347_o = n265_o[4]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n348_o = ~n347_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n349_o = n265_o[3]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n350_o = ~n349_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n351_o = n348_o & n350_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n352_o = n348_o & n349_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n353_o = n347_o & n350_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n354_o = n347_o & n349_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n355_o = n265_o[2]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n356_o = ~n355_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n357_o = n351_o & n356_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n358_o = n351_o & n355_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n359_o = n352_o & n356_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n360_o = n352_o & n355_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n361_o = n353_o & n356_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n362_o = n353_o & n355_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n363_o = n354_o & n356_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n364_o = n354_o & n355_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n365_o = n265_o[1]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n366_o = ~n365_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n367_o = n357_o & n366_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n368_o = n357_o & n365_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n369_o = n358_o & n366_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n370_o = n358_o & n365_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n371_o = n359_o & n366_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n372_o = n359_o & n365_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n373_o = n360_o & n366_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n374_o = n360_o & n365_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n375_o = n361_o & n366_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n376_o = n361_o & n365_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n377_o = n362_o & n366_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n378_o = n362_o & n365_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n379_o = n363_o & n366_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n380_o = n363_o & n365_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n381_o = n364_o & n366_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n382_o = n364_o & n365_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n383_o = n265_o[0]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n384_o = ~n383_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n385_o = n367_o & n384_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n386_o = n367_o & n383_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n387_o = n368_o & n384_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n388_o = n368_o & n383_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n389_o = n369_o & n384_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n390_o = n369_o & n383_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n391_o = n370_o & n384_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n392_o = n370_o & n383_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n393_o = n371_o & n384_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n394_o = n371_o & n383_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n395_o = n372_o & n384_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n396_o = n372_o & n383_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n397_o = n373_o & n384_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n398_o = n373_o & n383_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n399_o = n374_o & n384_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n400_o = n374_o & n383_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n401_o = n375_o & n384_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n402_o = n375_o & n383_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n403_o = n376_o & n384_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n404_o = n376_o & n383_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n405_o = n377_o & n384_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n406_o = n377_o & n383_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n407_o = n378_o & n384_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n408_o = n378_o & n383_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n409_o = n379_o & n384_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n410_o = n379_o & n383_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n411_o = n380_o & n384_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n412_o = n380_o & n383_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n413_o = n381_o & n384_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n414_o = n381_o & n383_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n415_o = n382_o & n384_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n416_o = n382_o & n383_o;
  assign n417_o = memory[31:0]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n418_o = n385_o & n276_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n419_o = n418_o ? i_di : n417_o;
  assign n420_o = memory[63:32]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n421_o = n386_o & n276_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n422_o = n421_o ? i_di : n420_o;
  assign n423_o = memory[95:64]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n424_o = n387_o & n276_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n425_o = n424_o ? i_di : n423_o;
  assign n426_o = memory[127:96]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n427_o = n388_o & n276_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n428_o = n427_o ? i_di : n426_o;
  assign n429_o = memory[159:128]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n430_o = n389_o & n276_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n431_o = n430_o ? i_di : n429_o;
  assign n432_o = memory[191:160]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n433_o = n390_o & n276_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n434_o = n433_o ? i_di : n432_o;
  assign n435_o = memory[223:192]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n436_o = n391_o & n276_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n437_o = n436_o ? i_di : n435_o;
  assign n438_o = memory[255:224]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n439_o = n392_o & n276_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n440_o = n439_o ? i_di : n438_o;
  assign n441_o = memory[287:256]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n442_o = n393_o & n276_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n443_o = n442_o ? i_di : n441_o;
  assign n444_o = memory[319:288]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n445_o = n394_o & n276_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n446_o = n445_o ? i_di : n444_o;
  assign n447_o = memory[351:320]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n448_o = n395_o & n276_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n449_o = n448_o ? i_di : n447_o;
  assign n450_o = memory[383:352]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n451_o = n396_o & n276_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n452_o = n451_o ? i_di : n450_o;
  assign n453_o = memory[415:384]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n454_o = n397_o & n276_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n455_o = n454_o ? i_di : n453_o;
  assign n456_o = memory[447:416]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n457_o = n398_o & n276_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n458_o = n457_o ? i_di : n456_o;
  assign n459_o = memory[479:448]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n460_o = n399_o & n276_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n461_o = n460_o ? i_di : n459_o;
  assign n462_o = memory[511:480]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n463_o = n400_o & n276_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n464_o = n463_o ? i_di : n462_o;
  assign n465_o = memory[543:512]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n466_o = n401_o & n276_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n467_o = n466_o ? i_di : n465_o;
  assign n468_o = memory[575:544]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n469_o = n402_o & n276_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n470_o = n469_o ? i_di : n468_o;
  assign n471_o = memory[607:576]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n472_o = n403_o & n276_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n473_o = n472_o ? i_di : n471_o;
  assign n474_o = memory[639:608]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n475_o = n404_o & n276_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n476_o = n475_o ? i_di : n474_o;
  assign n477_o = memory[671:640]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n478_o = n405_o & n276_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n479_o = n478_o ? i_di : n477_o;
  assign n480_o = memory[703:672]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n481_o = n406_o & n276_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n482_o = n481_o ? i_di : n480_o;
  assign n483_o = memory[735:704]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n484_o = n407_o & n276_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n485_o = n484_o ? i_di : n483_o;
  assign n486_o = memory[767:736]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n487_o = n408_o & n276_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n488_o = n487_o ? i_di : n486_o;
  assign n489_o = memory[799:768]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n490_o = n409_o & n276_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n491_o = n490_o ? i_di : n489_o;
  assign n492_o = memory[831:800]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n493_o = n410_o & n276_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n494_o = n493_o ? i_di : n492_o;
  assign n495_o = memory[863:832]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n496_o = n411_o & n276_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n497_o = n496_o ? i_di : n495_o;
  assign n498_o = memory[895:864]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n499_o = n412_o & n276_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n500_o = n499_o ? i_di : n498_o;
  assign n501_o = memory[927:896]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n502_o = n413_o & n276_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n503_o = n502_o ? i_di : n501_o;
  assign n504_o = memory[959:928]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n505_o = n414_o & n276_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n506_o = n505_o ? i_di : n504_o;
  assign n507_o = memory[991:960]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n508_o = n415_o & n276_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n509_o = n508_o ? i_di : n507_o;
  assign n510_o = memory[1023:992]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n511_o = n416_o & n276_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n512_o = n511_o ? i_di : n510_o;
  assign n513_o = {n512_o, n509_o, n506_o, n503_o, n500_o, n497_o, n494_o, n491_o, n488_o, n485_o, n482_o, n479_o, n476_o, n473_o, n470_o, n467_o, n464_o, n461_o, n458_o, n455_o, n452_o, n449_o, n446_o, n443_o, n440_o, n437_o, n434_o, n431_o, n428_o, n425_o, n422_o, n419_o};
endmodule

module zector_spi_ip_32_7
  (input  i_clk,
   input  i_spi_clk,
   input  i_mosi,
   input  i_ncs,
   input  [31:0] i_data,
   output o_miso,
   output o_rnw,
   output [6:0] o_addr,
   output [31:0] o_data,
   output o_update);
  wire [39:0] rx_shift;
  wire [31:0] tx_shift;
  wire [7:0] bit_counter;
  wire [7:0] tx_counter;
  reg rw_reg;
  reg [6:0] addr_reg;
  reg [31:0] data_reg;
  reg valid_toggle;
  reg tx_begin;
  reg valid_meta;
  reg valid_sync;
  reg valid_prev;
  reg spi_clk_meta;
  reg spi_clk_sync;
  reg spi_clk_prev;
  reg spi_ncs_meta;
  reg spi_ncs_sync;
  reg spi_pos_edge;
  reg spi_neg_edge;
  wire n79_o;
  wire n80_o;
  wire n81_o;
  wire n82_o;
  wire n83_o;
  wire n86_o;
  wire n87_o;
  wire n88_o;
  wire n110_o;
  wire [38:0] n111_o;
  wire [39:0] n112_o;
  wire n114_o;
  wire n116_o;
  wire [5:0] n117_o;
  wire [6:0] n118_o;
  wire n119_o;
  wire n120_o;
  wire n122_o;
  wire n124_o;
  wire n125_o;
  wire n126_o;
  wire [30:0] n127_o;
  wire [31:0] n128_o;
  wire n129_o;
  wire [31:0] n130_o;
  wire n131_o;
  wire [6:0] n132_o;
  wire [31:0] n133_o;
  wire n134_o;
  wire n135_o;
  wire [6:0] n137_o;
  wire [31:0] n138_o;
  wire n139_o;
  wire n140_o;
  wire [7:0] n142_o;
  wire n145_o;
  wire n150_o;
  wire n151_o;
  wire n152_o;
  wire n153_o;
  wire n154_o;
  wire n155_o;
  wire n156_o;
  wire n178_o;
  wire n179_o;
  wire [30:0] n180_o;
  wire [31:0] n182_o;
  wire [7:0] n184_o;
  wire n186_o;
  wire n187_o;
  wire [30:0] n188_o;
  wire [31:0] n190_o;
  wire [7:0] n192_o;
  wire n193_o;
  wire [31:0] n194_o;
  wire [7:0] n195_o;
  wire n196_o;
  wire [31:0] n197_o;
  wire [7:0] n198_o;
  wire n202_o;
  wire n203_o;
  wire n204_o;
  wire [39:0] n214_o;
  reg [39:0] n215_q;
  wire [31:0] n216_o;
  reg [31:0] n217_q;
  wire [7:0] n218_o;
  reg [7:0] n219_q;
  wire [7:0] n220_o;
  reg [7:0] n221_q;
  wire n222_o;
  wire n223_o;
  wire n224_o;
  reg n225_q;
  wire n226_o;
  wire n227_o;
  wire [6:0] n228_o;
  reg [6:0] n229_q;
  wire n230_o;
  wire n231_o;
  wire [31:0] n232_o;
  reg [31:0] n233_q;
  wire n234_o;
  wire n235_o;
  wire n236_o;
  reg n237_q;
  wire n238_o;
  reg n239_q;
  wire n240_o;
  reg n241_q;
  wire n242_o;
  reg n243_q;
  wire n244_o;
  reg n245_q;
  reg n246_q;
  reg n247_q;
  reg n248_q;
  reg n249_q;
  reg n250_q;
  wire n251_o;
  wire n252_o;
  wire n253_o;
  reg n254_q;
  assign o_miso = n254_q; //(module output)
  assign o_rnw = rw_reg; //(module output)
  assign o_addr = addr_reg; //(module output)
  assign o_data = data_reg; //(module output)
  assign o_update = n79_o; //(module output)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:26:12  */
  assign rx_shift = n215_q; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:27:12  */
  assign tx_shift = n217_q; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:29:12  */
  assign bit_counter = n219_q; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:30:12  */
  assign tx_counter = n221_q; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:36:12  */
  always @*
    rw_reg = n225_q; // (isignal)
  initial
    rw_reg = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:37:12  */
  always @*
    addr_reg = n229_q; // (isignal)
  initial
    addr_reg = 7'b0000000;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:38:12  */
  always @*
    data_reg = n233_q; // (isignal)
  initial
    data_reg = 32'b00000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:39:12  */
  always @*
    valid_toggle = n237_q; // (isignal)
  initial
    valid_toggle = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:40:12  */
  always @*
    tx_begin = n239_q; // (isignal)
  initial
    tx_begin = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:42:12  */
  always @*
    valid_meta = n241_q; // (isignal)
  initial
    valid_meta = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:43:12  */
  always @*
    valid_sync = n243_q; // (isignal)
  initial
    valid_sync = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:44:12  */
  always @*
    valid_prev = n245_q; // (isignal)
  initial
    valid_prev = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:46:12  */
  always @*
    spi_clk_meta = n246_q; // (isignal)
  initial
    spi_clk_meta = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:47:12  */
  always @*
    spi_clk_sync = n247_q; // (isignal)
  initial
    spi_clk_sync = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:48:12  */
  always @*
    spi_clk_prev = n248_q; // (isignal)
  initial
    spi_clk_prev = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:50:12  */
  always @*
    spi_ncs_meta = n249_q; // (isignal)
  initial
    spi_ncs_meta = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:51:12  */
  always @*
    spi_ncs_sync = n250_q; // (isignal)
  initial
    spi_ncs_sync = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:53:12  */
  always @*
    spi_pos_edge = n81_o; // (isignal)
  initial
    spi_pos_edge = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:54:12  */
  always @*
    spi_neg_edge = n83_o; // (isignal)
  initial
    spi_neg_edge = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:61:28  */
  assign n79_o = valid_sync ^ valid_prev;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:62:38  */
  assign n80_o = ~spi_clk_prev;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:62:34  */
  assign n81_o = spi_clk_sync & n80_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:63:21  */
  assign n82_o = ~spi_clk_sync;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:63:38  */
  assign n83_o = n82_o & spi_clk_prev;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:69:41  */
  assign n86_o = ~rw_reg;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:69:30  */
  assign n87_o = n86_o & i_ncs;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:69:56  */
  assign n88_o = n87_o | rw_reg;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:107:32  */
  assign n110_o = $unsigned(bit_counter) < $unsigned(8'b00101000);
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:108:41  */
  assign n111_o = rx_shift[38:0]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:108:76  */
  assign n112_o = {n111_o, i_mosi};
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:109:36  */
  assign n114_o = bit_counter == 8'b00000000;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:111:39  */
  assign n116_o = bit_counter == 8'b00000111;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:112:45  */
  assign n117_o = rx_shift[5:0]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:112:69  */
  assign n118_o = {n117_o, i_mosi};
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:114:45  */
  assign n119_o = ~valid_toggle;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:113:25  */
  assign n120_o = rw_reg ? n119_o : valid_toggle;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:111:21  */
  assign n122_o = n135_o ? 1'b1 : tx_begin;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:117:40  */
  assign n124_o = bit_counter == 8'b00100111;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:117:108  */
  assign n125_o = ~rw_reg;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:117:96  */
  assign n126_o = n125_o & n124_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:120:45  */
  assign n127_o = rx_shift[30:0]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:120:69  */
  assign n128_o = {n127_o, i_mosi};
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:121:41  */
  assign n129_o = ~valid_toggle;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:117:21  */
  assign n130_o = n126_o ? n128_o : data_reg;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:117:21  */
  assign n131_o = n126_o ? n129_o : valid_toggle;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:111:21  */
  assign n132_o = n116_o ? n118_o : addr_reg;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:111:21  */
  assign n133_o = n116_o ? data_reg : n130_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:111:21  */
  assign n134_o = n116_o ? n120_o : n131_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:111:21  */
  assign n135_o = rw_reg & n116_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:109:21  */
  assign n137_o = n114_o ? addr_reg : n132_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:109:21  */
  assign n138_o = n114_o ? data_reg : n133_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:109:21  */
  assign n139_o = n114_o ? valid_toggle : n134_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:109:21  */
  assign n140_o = n114_o ? tx_begin : n122_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:123:47  */
  assign n142_o = bit_counter + 8'b00000001;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:107:17  */
  assign n145_o = n114_o & n110_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:105:13  */
  assign n150_o = n110_o & spi_pos_edge;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:105:13  */
  assign n151_o = n110_o & spi_pos_edge;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:105:13  */
  assign n152_o = n145_o & spi_pos_edge;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:105:13  */
  assign n153_o = n110_o & spi_pos_edge;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:105:13  */
  assign n154_o = n110_o & spi_pos_edge;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:105:13  */
  assign n155_o = n110_o & spi_pos_edge;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:105:13  */
  assign n156_o = n110_o & spi_pos_edge;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:137:35  */
  assign n178_o = tx_counter == 8'b00000000;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:138:41  */
  assign n179_o = i_data[31]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:139:43  */
  assign n180_o = i_data[30:0]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:139:67  */
  assign n182_o = {n180_o, 1'b0};
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:140:50  */
  assign n184_o = tx_counter + 8'b00000001;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:141:38  */
  assign n186_o = $unsigned(tx_counter) < $unsigned(8'b00100000);
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:142:43  */
  assign n187_o = tx_shift[31]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:143:45  */
  assign n188_o = tx_shift[30:0]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:143:69  */
  assign n190_o = {n188_o, 1'b0};
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:144:50  */
  assign n192_o = tx_counter + 8'b00000001;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:141:21  */
  assign n193_o = n186_o ? n187_o : n254_q;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:141:21  */
  assign n194_o = n186_o ? n190_o : tx_shift;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:141:21  */
  assign n195_o = n186_o ? n192_o : tx_counter;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:137:21  */
  assign n196_o = n178_o ? n179_o : n193_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:137:21  */
  assign n197_o = n178_o ? n182_o : n194_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:137:21  */
  assign n198_o = n178_o ? n184_o : n195_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:135:13  */
  assign n202_o = tx_begin & spi_neg_edge;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:135:13  */
  assign n203_o = tx_begin & spi_neg_edge;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:135:13  */
  assign n204_o = tx_begin & spi_neg_edge;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:104:9  */
  assign n214_o = n150_o ? n112_o : rx_shift;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:104:9  */
  always @(posedge i_clk or posedge spi_ncs_sync)
    if (spi_ncs_sync)
      n215_q <= 40'b0000000000000000000000000000000000000000;
    else
      n215_q <= n214_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:134:9  */
  assign n216_o = n203_o ? n197_o : tx_shift;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:134:9  */
  always @(posedge i_clk or posedge spi_ncs_sync)
    if (spi_ncs_sync)
      n217_q <= 32'b00000000000000000000000000000000;
    else
      n217_q <= n216_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:104:9  */
  assign n218_o = n151_o ? n142_o : bit_counter;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:104:9  */
  always @(posedge i_clk or posedge spi_ncs_sync)
    if (spi_ncs_sync)
      n219_q <= 8'b00000000;
    else
      n219_q <= n218_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:134:9  */
  assign n220_o = n204_o ? n198_o : tx_counter;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:134:9  */
  always @(posedge i_clk or posedge spi_ncs_sync)
    if (spi_ncs_sync)
      n221_q <= 8'b00000000;
    else
      n221_q <= n220_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:96:5  */
  assign n222_o = ~spi_ncs_sync;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:96:5  */
  assign n223_o = n152_o & n222_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:104:9  */
  assign n224_o = n223_o ? i_mosi : rw_reg;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:104:9  */
  always @(posedge i_clk)
    n225_q <= n224_o;
  initial
    n225_q = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:96:5  */
  assign n226_o = ~spi_ncs_sync;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:96:5  */
  assign n227_o = n153_o & n226_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:104:9  */
  assign n228_o = n227_o ? n137_o : addr_reg;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:104:9  */
  always @(posedge i_clk)
    n229_q <= n228_o;
  initial
    n229_q = 7'b0000000;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:96:5  */
  assign n230_o = ~spi_ncs_sync;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:96:5  */
  assign n231_o = n154_o & n230_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:104:9  */
  assign n232_o = n231_o ? n138_o : data_reg;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:104:9  */
  always @(posedge i_clk)
    n233_q <= n232_o;
  initial
    n233_q = 32'b00000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:96:5  */
  assign n234_o = ~spi_ncs_sync;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:96:5  */
  assign n235_o = n155_o & n234_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:104:9  */
  assign n236_o = n235_o ? n139_o : valid_toggle;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:104:9  */
  always @(posedge i_clk)
    n237_q <= n236_o;
  initial
    n237_q = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:104:9  */
  assign n238_o = n156_o ? n140_o : tx_begin;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:104:9  */
  always @(posedge i_clk or posedge spi_ncs_sync)
    if (spi_ncs_sync)
      n239_q <= 1'b0;
    else
      n239_q <= n238_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:68:9  */
  assign n240_o = n88_o ? valid_toggle : valid_meta;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:68:9  */
  always @(posedge i_clk)
    n241_q <= n240_o;
  initial
    n241_q = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:68:9  */
  assign n242_o = n88_o ? valid_meta : valid_sync;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:68:9  */
  always @(posedge i_clk)
    n243_q <= n242_o;
  initial
    n243_q = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:68:9  */
  assign n244_o = n88_o ? valid_sync : valid_prev;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:68:9  */
  always @(posedge i_clk)
    n245_q <= n244_o;
  initial
    n245_q = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:80:9  */
  always @(posedge i_clk)
    n246_q <= i_spi_clk;
  initial
    n246_q = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:80:9  */
  always @(posedge i_clk)
    n247_q <= spi_clk_meta;
  initial
    n247_q = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:80:9  */
  always @(posedge i_clk)
    n248_q <= spi_clk_sync;
  initial
    n248_q = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:89:9  */
  always @(posedge i_clk)
    n249_q <= i_ncs;
  initial
    n249_q = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:89:9  */
  always @(posedge i_clk)
    n250_q <= spi_ncs_meta;
  initial
    n250_q = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:129:5  */
  assign n251_o = ~spi_ncs_sync;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:129:5  */
  assign n252_o = n202_o & n251_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:134:9  */
  assign n253_o = n252_o ? n196_o : n254_q;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:134:9  */
  always @(posedge i_clk)
    n254_q <= n253_o;
endmodule

module bram_sp_sin_lut_20_11
  (input  we,
   input  clk,
   input  [19:0] di,
   input  [10:0] addr,
   output [19:0] do);
  reg [40959:0] memory;
  wire [10:0] n50_o;
  reg [19:0] n58_data; // mem_rd
  assign do = n58_data; //(module output)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\bram_sp_sin_lut.vhdl:25:8  */
  always @*
    memory = 40960'b0000000000000000000000000000011001001000000000001100100100010000000100101101100100000001100100100010000000011111011010100000001001011011001000000010101111111011000000110010010000110000001110001000101100000011111011010010000001000101000110100000010010110110001000000101000110101001000001010111111100000000010111100011011100000110010001111110000001101010110001000000011100010000101000000111011101010000000001111101100101100000100000111101101100001000101000100000000010010000011001010000100101101010100100001001110011101101000010100011001100000000101010010111010000001010111110110110000010110101111110010000101111000011101100001100001001111100000011001000101111010000110011101111111000001101010100111110000011011011011111010000111000011011110000001110011111111010000011101110001110000000111101000111011000001111101010110010000100000000111011100001000001110010101000010000110101100101000100010011100111110001000110011101100000010010000000010001000100100110010010010001001011001000000100010011001010111000000100111000111011100001001111110010001100010100010101010111000101001011100010110001010100011011111000010101011111110000000101011110001000010001011001000101000100010110101010000001000101110000101100000001011101101101110100010111110100001010000110000011001101100001100010010110000100011000111110001011000110010101101101000001100110111101110100011010001000000100000110101000001010100001101011100100111100011011010001110011000110111010100101100001110000001011100000011100011011011001000111001100111110010001110100110001011100011101100100110101000111011111010100010001111001010110110000011110101110000110000111110001100111110001111101111011011100011111110111001110001000000011111000110010000010011111011100100001000000001001001000010110000110110010000111000010101100100010001000111010001000101000010010000010001011100101010000100011010001011111001000111010011010000010010000000111000000100100011001110111001001001100011111010010010100101000000000100101100010000011001001011110100001000010011001001000010000100110101010000010001001110000011111100010011101100111101000100111110001110011001010000010011010110010100010000110001000101000111001010111001010010100010010100010100110100011110000101010000000101100001010100110000110110010101011000000100000101011000111110011001010110111110111010010101111011100010100101100001110101011001011001001100011110010110011110111001000101101010101010011001011011011001100110010111000010001000000101110011011101100001011101100110001100010111100101001111000101111100001110101001011111110010010010011000001000001110000110000100111101101001100001111101111000011000101011000100100110001101101010100001100100001000111100011001001101110010100110010110010101010001100110010011011100011001110000010111100110011110111101111001101000011101011000011010010010110100000110100111100100001001101010100110110010011010110101000111000110110000001000001001101100101111100100011011010111010001000110111000101001111001101110110111110010011011111001010001000111000001001001001001110000111111011010011100011011000111100111001001100110000001110011000110011010011100111100110100100111010010000000010001110101001100110100011101011110010111000111011010011000001001110111010010100010011101111111101111100111100010101101011001111001010111101010011110100000111110000111101011000000000001111011011100000110011111000010000001100111110011010000000001111101011111110110011111100010111010000111111011011101010001111111100010111100100000000011101000001000000011100111111010000001100101010110100000100100001010101000001011101111100010000011100111000010100001000100100010001000010011110100100010000101101000000010100001100100101110001000011011110110100010000111101000010010100010000100101110001000100011110101100010001001100111110100100010100100100010101000101011110001101010001011100110100110100011000100001011001000110011101010110010001101100100100110100011100011100111001000111011100000110010001111100001111000100100000010110111001001000011010011110010010001011110010110100100100001111010101001001011000011100010010011011010000010100101000000110001001001010010110000001010010101010100111010100101011111011011001001011010011001100010010111001111000000100101111101111000001001100001111111101010011001001000010000100110011100000111101001101001100010100010011011000000101100100110111010001010001001110001000010000010011100111000010000100111010111111111001001111000011110000010011110101111000000100111110101100110001001111111110110110010100000100100111000101000010010111111101010000111001011111010100010011001111000101000110000001011001010001110011101101010100100001110000000101001001101001000101010010101101011110010100110000001010000101001101001110111001010011100110110010010100111110011100100101010000110010111101010100011111101001010101001100101000000101010100010101001101010101011000000011010101011010101100000101010111110101101001010110010000000000010101101000101000110101011011010100001001010111000111011110010101110110011101110101011110110000110001010111111110011110010110000100001011010101100010001011100001011000110101000000010110010001110001010101100101100100011001011001101011000011010110011111001111010101101000111011010001011010100000100111010110101100100101110101101100010000001101011011010101101011010110111001110100000101101111100011001001011100001010010000010111000110111010100101110010110100000101011100111110010101010111010011111001000101110110000011000101011101110001111001010111100000101111100101111001001111111101011110100100111101010111101101011101110101111100011010110101011111010111100000010111111010000011110101111111100011101001100000001001100010011000000110100001100110000010101010011001100000111011000011011000010010110111000110000101101111000101100001101100000010011000011111000011110110001000110001100101100010011100011111011000101011001000010110001011110001111101100011001100011010011000110111000100010110001110110000001101100011111011110010011001000010110111100110010001101100010101100100101010101000011001001110100010000110010100100110001101100101011000111011011001011010000011110110010111011101111101100110000110101011011001100101011100110110011010010011011101100110110011110111011001110000101100110110011101000110110001100111100000100000011001111011110100000110011111110111110001101000001100100101011010000110110010010110100010100110100101101000111000000101011010010001100111010110100101010011000101101001100011000001011010011100010011010110100111111101010101101010001101011001011010100110110110010110101010100101010001101010110111001100011010110001001111110110101101001010111001101011100000011001011010111011100000000110101111101110001101101100001001000010011011000101100111000110110010001111001001101100110001000101011011001111100100100110110100101101110001101101011000100010011011011001011000110110110111001010000001101101111111011001011011100011000011010110111001100011111001101110100101101010011011101100100100100110111011111011010101101111001011010100011011110101111011110110111110010000011001101111110000011000011011111111001001100111000000100011000001110000010100110110011100001000001101110111000010110011001101110000111000101100011100010001001000000111000101000001000001110001011011111011011100011001111000100111000111001100010001110001111110100011011100100010011111000111001001010101001001110010100000100011011100101010111011110111001011011011100001110011000001111011011100110011001110110111001101011111010101110011100010101100011100111011010111100111001111100000101101110100000010110100011101000011010110010111010001011111100101110100100010010101011101001011001011000111010011011011111001110101000001001100011101010010110101100111010101010101101101110101011111011011011101011010010101110111010111001100111101110101111101000010011101100001101100000111011001000001101001110110011001111111011101101000111000000111011010110011110001110110110110010100011101101111111001110111011100100011010101110111010001111111011101110110110001000111011110010000010101110111101101000001011101111101011110000111011111111010101101111000000111011001011110000100000000100111100001100010011101111000100001000111011110001010011000110111100011000111101001111000111010001100011110010000100110100111100100101010001101111001010010100111011110010110101001100111100110001010000101111001101010010111011110011100100010010111100111100111011001111010000001011110011110100010010000010111101001000010000001111010010111111010011110100111110011110111101010011010000001111010101101101100011110101101001100110111101011101111010101111011000010110011011110110010011011000111101101000010000001111011010111001111011110110111011110100111101110010010000001111011101011000001011110111100010111010111101111011111010101111011111110001000011111000001000101100111110000101001111101111100010000100011011111000101101000110111110001110001111001111100100010010100011111001010000001010111110010110111000101111100110011011001011111001110001111000111110011111001101001111101000011110011011111010010010010000111110100111001011101111101010011100010011111010110001010000111110101110110100101111101100010100101011111011001110111000111110110110000111101111101110000111101011111011101011001010111110111101000100101111101111110101001011111100000110000110111111000011101100001111110001011101001011111100011111101010111111001001111101101111110010111111101011111100110111110100111111001111111001101111110100011100110011111101001110101000111111010101011111001111110101110100011011111101100100000100111111011010101110101111110111000110011011111101111000001010111111011111101000101111111000010011000011111110001010110110111111100100001100001111111001011010001011111110011100001010111111101000011001101111111010011011101011111110101100000100111111101100010001001111111011010111110011111110111010101000111111101111110010101111111100001110010011111111000111110010111111110010111110001111111100111111010011111111010011100100111111110101110011001111111101101010101011111111011101111110111111111000010010001111111110010000101011111111100111000000111111111010011011001111111110110000111011111111101110101000111111111100001101101111111111001011110011111111110100111000111111111101101010001111111111100001000011111111111001101110111111111110110000101111111111110000110011111111111101001100111111111111100000101111111111111011000011111111111111010010111111111111111010101111111111111111101011111111111111111110111111111111111110101111111111111110101011111111111111010010111111111111101100001111111111111000001011111111111101001100111111111111000011001111111111101100001011111111111001101110111111111110000100001111111111011010100011111111110100111000111111111100101111001111111111000011011011111111101110101000111111111011000011101111111110100110110011111111100111000000111111111001000010101111111110000100100011111111011101111110111111110110101010101111111101011100110011111111010011100100111111110011111101001111111100101111100011111111000111110010111111110000111001001111111011111100101011111110111010101000111111101101011111001111111011000100010011111110101100000100111111101001101110101111111010000110011011111110011100001010111111100101101000101111111001000011000011111110001010110110111111100001001100001111110111111010001011111101111000001010111111011100011001101111110110101011101011111101100100000100111111010111010001101111110101010111110011111101001110101000111111010001110011001111110011111110011011111100110111110100111111001011111110101111110010011111011011111100011111101010111111000101110100101111110000111011000011111100000110000110111110111111010100101111101111010001001011111011101011001010111110111000011110101111101101100001111011111011001110111000111110110001010010101111101011101101001011111010110001010000111110101001110001001111101001110010111011111010010010010000111110100001111001101111100111110011010011111001110001111000111110011001101100101111100101101110001011111001010000001010111110010001001010001111100011100011110011111000101101000110111110001000010001101111100001010011111011111000001000101100111101111111000100001111011110111110101011110111100010111010111101110101100000101111011100100100000011110110111011110100111101101011100111101111011010000100000011110110010011011000111101100001011001101111010111011110101011110101101001100110111101010110110110001111010100110100000011110100111110011110111101001011111101001111010010000100000011110100010010000010111101000000101111001111001111001110110011110011100100010010111100110101001011101111001100010100001011110010110101001100111100101001010011101111001001010100011011110010000100110100111100011101000110001111000110001111010011110001010011000110111100010000100011101111000011000100111011110000100000000100111100000011101100101110111111110101011011101111101011110000111011110110100000101110111100100000101011101110110110001000111011101000111111101110111001000110101011101101111111001110111011011011001010001110110101100111100011101101000111000000111011001100111111101110110010000011010011101100001101100000111010111110100001001110101110011001111011101011010010101110111010101111101101101110101010101011011011101010010110101100111010100000100110001110100110110111110011101001011001011000111010010001001010101110100010111111001011101000011010110010111010000001011010001110011111000001011011100111011010111100111001110001010110001110011010111110101011100110011001110110111001100000111101101110010110110111000011100101010111011110111001010000010001101110010010101010010011100100010011111000111000111111010001101110001110011000100011100011001111000100111000101101111101101110001010000010000011100010001001000000111000011100010110001110000101100110011011100001000001101110111000001010011011001110000001000110000011011111111001001100110111111000001100001101111100100000110011011110101111011110110111100101101010001101110111110110101011011101100100100100110111010010110101001101110011000111110011011100011000011010110110111111101100101101101110010100000011011011001011000110110110101100010001001101101001011011100011011001111100100100110110011000100010101101100100011110010011011000101100111000110110000100100001001101011111011100011011010111011100000000110101110000001100101101011010010101110011010110001001111110110101011011100110001101010101001010100011010100110110110010110101000110101100101101001111111010101011010011100010011010110100110001100000101101001010100110001011010010001100111010110100011100000010101101000101001101001011010000110110010010110100000110010010101100111111101111100011001111011110100000110011110000010000001100111010001101100011001110000101100110110011011001111011101100110100100110111011001100101011100110110011000011010101101100101110111011111011001011010000011110110010101100011101101100101001001100011011001001110100010000110010010101010100001100100011011000101011001000010110111100110001111101111001001100011101100000011011000110111000100010110001100110001101001100010111100011111011000101011001000010110001001110001111101100010001100011001011000011111000011110110000110110000001001100001011011110001011000010010110111000110000011101100001101100000101010100110011000000110100001100110000000100110001001011111111000111010010111111010000011110101111101011110000001011111000110101101010111101101011101110101111010010011110101011110010011111111010111100000101111100101110111000111100101011101100000110001010111010011111001000101110011111001010101011100101101000001010111000110111010100101110000101001000001011011111000110010010110111001110100000101101101010110101101011011000100000011010110101100100101110101101010000010011101011010001110110100010110011111001111010101100110101100001101011001011001000110010110010001110001010101100011010100000001011000100010111000010110000100001011010101011111111001111001010111101100001100010101110110011101110101011100011101111001010110110101000010010101101000101000110101011001000000000001010101111101011010010101011010101100000101010101100000001101010101000101010011010101001100101000000101010001111110100101010100001100101111010100111110011100100101001110011011001001010011010011101110010100110000001010000101001010110101111001010010011010010001010100100001110000000101000111001110110101010001100000010110010100010011001111000101000011100101111101010000100101111111010100000100100111000100111111111011011001001111101011001100010011110101111000000100111100001111000001001110101111111110010011100111000010000100111000100001000001001101110100010100010011011000000101100100110100110001010001001100111000001111010011001001000010000100110000111111110101001011111011110000010010111001111000000100101101001100110001001010111110110110010010101010100111010100101001011000000101001010000001100010010010011011010000010100100101100001110001001001000011110101010010001011110010110100100001101001111001001000000101101110010001111100001111000100011101110000011001000111000111001110010001101100100100110100011001110101011001000110001000010110010001011100110100110100010101111000110101000101001001000101010001001100111110100100010001111010110001000100001001011100010000111101000010010100001101111011010001000011001001011100010000101101000000010100001001111010010001000010001001000100010000011100111000010100000101110111110001000001001000010101010000001100101010110100000001110011111101000000000111010000001111111100010111100011111101101110101000111111000101110100001111101011111110110011111001101000000000111110000100000011001111011011100000110011110101100000000000111101000001111100001111001010111101010011110001010110101100111011111111011111001110111010010100010011101101001100000100111010111100101110001110101001100110100011101001000000001000111001111001101001001110011000110011010011100100110011000000111000110110001111001110000111111011010011100000100100100100110111110010100010001101110110111110010011011100010100111100110110101110100010001101100101111100100011011000000100000100110101101010001110001101010100110110010011010011110010000100110100100101101000001101000011101011000011001111011110111100110011100000101111001100110010011011100011001011001010101000110010011011100101001100100001000111100011000110110101010000110001010110001001001100001111101111000011000010011110110100110000010000011100001011111110010010010010111110000111010100101111001010011110001011101100110001100010111001101110110000101110000100010000001011011011001100110010110101010101001100101100111101110010001011001001100011110010110000111010101100101011110111000101001010110111110111010010101100011111001100101010110000001000001010100110000110110010101000000010110000101001101000111100001010010100010010100010100011100101011100101000100001100010001010000010011010110010011111000111001100100111011001111010001001110000011111100010011010101000001000100110010010000100001001011110100001000010010110001000001100100101001010000000001001001100011111010010010001100111011100100100000001110000001000111010011010000010001101000101111100100010111001010100001000101000010010000010001000100011101000100001110000101011001000010110000110110010000100000000100100100000100111110111001000000011111000110001111111011100111000011111011110110111000111110001100111110001111010111000011000011110010101101100000111011111010100010001110110010011010100011101001100010111000111001100111110010001110001101101100100011100000010111000000110111010100101100001101101000111001100011010111001001111000110101000001010100001101000100000010000011001101111011101000110010101101101000001100011111000101100011000100101100001000110000011001101100001011111010000101000010111011011011101000101110000101100000001011010101000000100010110010001010001000101011110001000010001010101111111000000010101000110111110000101001011100010110001010001010101011100010011111100100011000100111000111011100001001100101011100000010010110010000001000100100110010010010001001000000001000100010001100111011000000100010011100111110001000011010110010100010000011100101010000100000000111011100000111110101011001000001111010001110110000011101110001110000000111001111111101000001110000110111100000011011011011111010000110101010011111000001100111011111110000011001000101111010000110000100111110000001011110000111011000010110101111110010000101011111011011000001010100101110100000010100011001100000000100111001110110100001001011010101001000010010000011001010000100010100010000000001000001111011011000001111101100101100000011101110101000000000111000100001010000001101010110001000000011001000111111000000101111000110111000001010111111100000000010100011010100100000100101101100010000001000101000110100000001111101101001000000011100010001011000000110010010000110000001010111111101100000010010110110010000000011111011010100000000110010010001000000001001011011001000000001100100100010000000001100100100000000000000000000000111111111001101110001111111100110110111111111110110100100111111111100110110111101111111000001001011011111101101001001110111111010100000001011111110011011011110111111100011101110101111111000001001011101111101110101110011011111011010010011110111110101110010101111111101010000001000011111010000111001001111110011011100000101111100101010011110011111000111011110110111110001000101100001111100000100110101011110111110000100101111101110101111000001111011011111001101111110110100101010111111101100011000100111111010111001101000011110101011010001100111101010000010010101111010010100000011111110100001111000101111100111101100001001111001101110100001111110011000100000010111100101010110000101111001001001000001111110001111001000100111100011000000001101111000100011100100011110000101110001010111100000101010011101110111111110001001011101111100011010110111011110010100110111110111011000110000111101110011000101000111011011111111011111110110110011011011111101101001101111111111011001101010010001110110001110001001011101100000011011101111010111010101010011110101101000111010111101010111001000010111010101000000100001110101000011101111111101001101110101111111010010101011111111110100011110101000011101000100100100011111010000010111101101110011111001100101011100111011010011111111001110000011101011110011010100100110011100110010000100011111001011101111111001110010101111101011011100101000110110001111001001011100011011110010001010110101011100011111101001000111000111001001001111110001100110000011111100010110011101001111000100110110010111110001000001010111111100001101010010100111000010100011110101110000011100110000111100000100001001001111000000010001100101101111111000001110111011111011000001001110111101111111101111101111010011110010111011110001111010101110111011101110001101101110101111011100011011101000110101100110111001011101000011101110001011001100011011011111110010000110110111001100010011101101100111000001111011010110110000000110110100111011111011101101000010111110011011001101101111100110110010101011111101101100011111000001011011000100110000110110110000011100011011101011111011001010111010111011110011110110101110001101010011101011010111011011011010110010111000100110101011111110101001101010110011110010111010101001111111000110101001110000011011101010010000010001111010100001000111011110100111100010101011101001101100111000111010011000010001110110100101010101011011101001001001100110111010001111011110000110100011001000101001101000100110011101011010000110101100010110100000111100010111101000000011011011111001111101111100100110011110110000100111100111100000100010011001110101001110111110011100100101011001100110111101110001011001101100100011011110011010011010101101100110011011001001011001100011111010001110011000010000100011100101111000101010011001011011010011000110010110000110111111100101010110010011111001010010101110010110010011111101111111100100110100000111011001001010001011110110010001110101100011100100010010000011111001000001101011110110001111101101101111100011110000001001111000111001001110001110001101100110100001100011001110011001111000110000110010111110001011011111111101100010101100110011011000101000011010010110001001011001111111100010001011010111111000100000000100001110000111010100101011100001101010000101111000010111110000100110000101010000000001100001001000111110111000001111011111101110000011001100000001100000101000000010111000000111010001100110000001001000101101100000000111010001010111111111000110000101111111000110000011011111100110101010110111110110111101011101111101000100001001011111000110001111110111101110110111100101111011000010111001011110100101111111110111100110110100100101111001000010011001011110000101111011110111011110110100100101110111000010101001011101100110000011010111010110110111011101110101000011100111011101000110010110110111001110111101010101110011000101010101011100100110110110110111000111000110010101110001000111110101011100000111100010010110111111010010010101101111001011000101011011101000011010110110110111100001011101101101001111001001011011001001011111110110101111110011110101101011010011111111011010101010110001110110101000001001010101101001011001101001011010001100010000010110100000100010000101100111100000000111011001101101111100010110011000111110001101100101100111011001011001001111110101010110010001011101100101100011101111100001011000110001111100010110001010000000010101100001111000100001011000010100010000010110000010100110100101100000000010010101010111110110110010010101111011010000001101011110001101000011010111011001100010010101110011111101010101011100011000100111010110111100100000010101101100101101111101011010100101000101010110011111101100010101100101100010010101011000110010011101010110000011000111010101011110011010001101010111000000101111010101100110110000010101010111010101101101010101001111111011010101001010101000010101010000010100110101010011100000000001010100101110101110110101001001010111110101010001110001000101010100010011000100110101000010011110100101010000000011000101010011110111101001110100111011101001000101001110010110000001010011011100011101110100110100110111010101001100101001111011010011000001100001110100101110001001100101001010111110110011010010100110110100110100100111011111101101001001010100101011010010001100011000010100100000111001110101000111101011100001010001110010001011010100011010010111111101000110000011010111010001011000001110010100010011111001111101000100011100001111010000111110100001010100001101100000001101000010110110000111010000100101000100110100000111001010011101000001010001000001010000001011111000110100000000111000110100111111101100111101001111110010111101010011111010101011010100111110001001111011001111011010010010010011110100100001111100111100100111111101001111000001111000110011101110011100111100111011000111000011001110101001101111110011101000011100001100111001100111001101001110010001110111110011100010011111101100111000001000011101001101111010010001010011011100100111011100110110101010110001001101100010111100010011010110110011101100110101001110001011001101001011111000110011010001000100001100110011110010101011001100110101000110110011001011011001001100110010011000010011001100011110100110110011000101110010100100110000111111000001001100001000011000010011000000010000100100101111100110110111001011110010011011110010111010110010111100101110001111110111001011011100110001110010110101011001111100101100111001111111001011000111011001110010110000000101011100101011100101001111001010110010010011110010101010110101100100101010010001101001001010011101100000110010100101101010010100101000111111001111001010001001000000010010100000100011101100100111101101111101001001110100110010010010011011100001110100100110011101110111001001100000110111010010010110100100100100100101001110111101001001001101001110110010010001101100000100100100000001001111001000111001111001110010001100111000010100100010110100101101001000100110110111010010001000001001011100100001101001011001001000010100001000110010000011011111010100100000011111010001001000000001101101010001111110111010000100011111010110010101000111101111100100110001111010011001101100011110001110101001000111011101110000010001110101111110000100011101001000001011000111001100001111010001110001100111100100011100000010111011000110111011000010010001101101010101110100011010111110111011000110101010001000110001101001001001000100011001111100001011000110011001100010110001100101000001011100011000111010101001000110001001010001010001100000111110101100010111111010011001000101111001010011110001011101000000111100010110111011010111000101101001101010010001011001001000010100010101111101101001000101011010010101010001010101010100101100010101000001001011000101001011010100110001010001100110001100010100000101111101000100111100101000010001001101111100110100010011001100000011000100101110010000010001001010011000100100010010010011011001000100100000001100110001000110111001011100010001011100000011000100010010011110010001000011011111011100010000100101111111000100000101000100010001000000001010101100001111110001001111000011110111111111010000111100111011001100001110111101110011000011101011001110110000111001110000110100001110001011101001000011011110110011010000110110101011101100001101011010110011000011010010101101010000110011101011111100001100101011010011000011000110111011110000110000110001010100001011111101000101000010111011011111110000101101111100000100001011010000001101000010110000011000110000101011001100000100001010100100101001000010100101100110110000101000100001011100001001111010011011000010011011001010010000100101111100000100001001010001100011000010010001000011010000100011011100000100001000101001111111000010000111010001110000100001000001011100001000000011110001000001111101110101010000011110101100001100000111011110111011000001110100101110110000011100011100010100000110111011011001000001101011111101110000011010010001111100000110011001001111000001100011100010010000011000001100110100000101111000011011000001011011011100010000010110001101001100000101011000111101000001010011101100010000010100010010111100000100111010110111000001001100010010010000010010011110001100000100011110000111000001000101001101110000010000101110111100000100000010101111000000111110011110110000001111000101000100000011101000101111000000111000000101110000001101100000101100000011010000000111000000110010000011010000001100000001101100000010111000110101000000101100010110010000001010101000010100000010100010111011000000100110111111010000001001010100011100000010001110011011000000100001111101110000001000000101111100000001111011010001000000011101010010110000000110111101000100000001101001011111000000011000111101110000000101111001101100000001011001000111000000010100111111010000000100111011110100000001001010000101000000010001010110010000000100000011011100000000111100011101000000001110000011110000000011010000100100000000110000001101000000001011000111010000000010100011010100000000100101010111000000001000100000110000000001111011100100000000011011110111000000000110010000010000000001011001010100000000010011110011000000000100010110010000000000111100101100000000001101000101000000000010110010010000000000100101100100000000000111110001000000000001100100110000000000010011111100000000000011110101000000000000101101010000000000000111111100000000000001010001000000000000001011110000000000000001011100000000000000000111000000000000000000110000000000000000011100000000000000010111000000000000001011110000000000000101000100000000000001111111000000000000101101010000000000001111010100000000000100111111000000000001100100110000000000011111000100000000001001011001000000000010110010010000000000110100010100000000001111001011000000000100010110010000000001001111001100000000010110010101000000000110010000010000000001101111011100000000011110111001000000001000100000110000000010010101011100000000101000110101000000001011000111010000000011000000110100000000110100001001000000001110000011110000000011110001110100000001000000110111000000010001010110010000000100101000010100000001001110111101000000010100111111010000000101100100011100000001011110011011000000011000111101110000000110100101111100000001101111010001000000011101010010110000000111101101000100000010000001011111000000100001111101110000001000111001101100000010010101000111000000100110111111010000001010001011101100000010101010000101000000101100010110010000001011100011010100000011000000011011000000110010000011010000001101000000011100000011011000001011000000111000000101110000001110100010111100000011110001010001000000111110011110110000010000001010111100000100001011101111000001000101001101110000010001111000011100000100100111100011000001001100010010010000010011101011011100000101000100101111000001010011101100010000010101100011110100000101100011010011000001011011011100010000010111100001101100000110000011001101000001100011100010010000011001100100111100000110100100011111000001101011111101110000011011101101100100000111000111000101000001110100101110110000011101111011101100000111101011000011000001111101110101010000100000001111000100001000010000010111000010000111010001110000100010100111111100001000110111000001000010010001000011010000100101000110001100001001011111000001000010011011001010010000100111101001101100001010001000010111000010100101100110110000101010010010100100001010110011000001000010110000011000110000101101000000110100001011011111000001000010111011011111110000101111110100010100001100001100010101000011000110111011110000110010101101001100001100111010111111000011010010101101010000110101101011001100001101101010111011000011011110110011010000111000101110100100001110011100001101000011101011001110110000111011110111001100001111001110110011000011110111111111010000111111000100111100010000000010101011000100000101000100010001000010010111111100010000110111110111000100010010011110010001000101110000001100010001101110010111000100100000001100110001001001001101100100010010100110001001000100101110010000010001001100110000001100010011011111001101000100111100101000010001010000010111110100010100011001100011000101001011010100110001010100000100101100010101010101001011000101011010010101010001010111110110100100010110010010000101000101101001101010010001011011101101011100010111010000001111000101111001010011110001011111101001100100011000001111101011000110001001010001010001100011101010100100011001010000010111000110011001100010110001100111110000101100011010010010010001000110101010001000110001101011111011101100011011010101011101000110111011000010010001110000001011101100011100011001111001000111001100001111010001110100100000101100011101011111100001000111011101110000010001111000111010100100011110100110011011000111101111100100110001111101011001010100011111101110100001001000000001101101010010000001111101000100100000110111110101001000010100001000110010000110100101100100100010000010010111001000100110110111010010001011010010110100100011001110000101001000111001111001110010010000000100111100100100011011000001001001001101001110110010010100111011110100100101101001001001001001100000110111010010011001110111011100100110111000011101001001110100110010010010011110110111110100101000001000111011001010001001000000010010100011111100111100101001011010100101001010011101100000110010101001000110100100101010101101011001001010110010010011110010101110010100111100101100000001010111001011000111011001110010110011100111111100101101010110011111001011011100110001110010111000111111011100101110101100101111001011110010011011110010111110011011011100110000000100001001001100001000011000010011000011111100000100110001011100101001001100011110100110110011001001100001001100110010110110010011001100110101000110110011001111001010101100110100010001000011001101001011111000110011010100111000101100110101101100111011001101100010111100010011011010101011000100110111001001110111001101111010010001010011100000100001110100111000100111111011001110010001110111110011100110011100110100111010000111000011001110101001101111110011101100011100001100111011100111001111001111000001111000110011110010011111110100111101001000011111001111011010010010010011111000100111101100111110101010110101001111110010111101010011111110110011110101000000001110001101010000001011111000110100000101000100000101000001110010100111010000100101000100110100001011011000011101000011011000000011010000111110100001010100010001110000111101000100111110011111010001011000001110010100011000001101011101000110100101111111010001110010001011010100011110101110000101001000001110011101010010001100011000010100100101010010101101001001110111111011010010100110110100110100101011111011001101001011100010011001010011000001100001110100110010100111101101001101001101110101010011011100011101110100111001011000000101001110111010010001010011110111101001110101000000001100010101010000100111101001010100010011000100110101000111000100010101010010010101111101010100101110101110110101001110000000000101010100000101001101010101001010101000010101010100111111101101010101110101011011010101100110110000010101011100000010111101010111100110100011010110000011000111010101100011001001110101011001011000100101010110011111101100010101101010010100010101011011001011011111010110111100100000010101110001100010011101011100111111010101010111011001100010010101111000110100001101011110110100000011010111110110110010010110000000001001010101100000101001101001011000010100010000010110000111100010000101100010100000000101011000110001111100010110001110111110000101100100010111011001011001001111110101010110010110011101100101100110001111100011011001101101111100010110011110000000011101101000001000100001011010001100010000010110100101100110100101101010000010010101011010101010110001110110101101001111111101101011111100111101011011001001011111110110110100111100100101101101111000010111011011101000011010110110111100101100010101101111110100100101011100000111100010010111000100011111010101110001110001100101011100100110110110110111001100010101010101110011101111010101011101000110010110110111010100001110011101110101101101110111011101100110000011010111011100001010100101110111101101001001011110000101111011110111100100001001100101111001101101001001011110100101111111110111101100001011100101111011101101111001011111000110001111110111110100010000100101111101101111010111011111100110101010110111111100011000001101111111110001100001100000000111010001011000000100100010110110000001110100011001100000101000000010111000001100110000000110000011110111111011100001001000111110111000010101000000000110000101111100001001100001101010000101111000011101010010101110001000000001000011100010001011010111111000100101100111111110001010000110100101100010101100110011011000101101111111110110001100001100101111100011001110011001111000110110011010000110001110010011100011100011110000001001111000111110110110111110010000011010111101100100010010000011111001000111010110001110010010100010111101100100110100000111011001001111110111111110010100101011100101100101010110010011111001011000011011111110010110110100110001100101111000101010011001100001000010001110011000111110100011100110011011001001011001101001101010110110011011001000110111100110111101110001011001110010010101100110011101010011101111100111100000100010011001111011000010011110011111011111001001101000000011011011111010000011110001011110100001101011000101101000100110011101011010001100100010100110100011110111100001101001001001100110111010010101010101101110100110000100011101101001101100111000111010011110001010101110101000010001110111101010010000010001111010100111000001101110101010011111110001101010110011110010111010101111111010100110101100101110001001101011010111011011011010111000110101001110101110111100111101101011111011001010111011000001110001101110110001001100001101101100011111000001011011001010101111110110110011011011111001101101000010111110011011010011101111101110110101101100000001101101100111000001111011011100110001001110110111111100100001101110001011001100011011100101110100001110111010001101011001101110101111011100011011101110111000110110111100011110101011101111010011110010111011110111111110111110111110110000010011101111111000001110111100000001000110010111000001000010010011110000011100110000111100001010001111010111000011010100101001110001000001010111111100010011011001011111000101100111010011110001100110000011111100011100100100111111000111111010010001110010001010110101011100100101110001101111001010001101100011110010101111101011011100101110111111100111001100100001000111110011010100100110011100111000001110101111001110110100111111110011111001100101011101000001011110110111010001001001000111110100011110101000011101001010101111111111010011011101011111110101000011101111111101010100000010000111010101110010000101110101101000111010111101011101010101001111011000000110111011110110001110001001011101100110101001000111011010011011111111110110110011011011111101101111111101111111011100110001010001110111011000110000111101111001010011011111011111000110101101110111111110001001011110000010101001110111100001011100010101111000100011100100011110001100000000110111100011110010001001111001001001000001111110010101011000010111100110001000000101111001101110100001111110011110110000100111101000011110001011111010010100000011111110101000001001010111101010110100011001111010111001101000011110110001100010011111101101001010101111111011011111001101111110111010111100000111101111100001001011111100000100110101011111000100010110000111110001110111101101111100101010011110011111001101110000010111110100001110010011111101010000001000011111010111001010111111110110100100111101111101110101110011011111100000100101110111111000111011101011111110011011011110111111101010000000101111111011010010011101111111000001001011011111110011011011110111111101101001001111111111100110110111111111111100110111000; // (isignal)
  initial
    memory = 40960'b0000000000000000000000000000011001001000000000001100100100010000000100101101100100000001100100100010000000011111011010100000001001011011001000000010101111111011000000110010010000110000001110001000101100000011111011010010000001000101000110100000010010110110001000000101000110101001000001010111111100000000010111100011011100000110010001111110000001101010110001000000011100010000101000000111011101010000000001111101100101100000100000111101101100001000101000100000000010010000011001010000100101101010100100001001110011101101000010100011001100000000101010010111010000001010111110110110000010110101111110010000101111000011101100001100001001111100000011001000101111010000110011101111111000001101010100111110000011011011011111010000111000011011110000001110011111111010000011101110001110000000111101000111011000001111101010110010000100000000111011100001000001110010101000010000110101100101000100010011100111110001000110011101100000010010000000010001000100100110010010010001001011001000000100010011001010111000000100111000111011100001001111110010001100010100010101010111000101001011100010110001010100011011111000010101011111110000000101011110001000010001011001000101000100010110101010000001000101110000101100000001011101101101110100010111110100001010000110000011001101100001100010010110000100011000111110001011000110010101101101000001100110111101110100011010001000000100000110101000001010100001101011100100111100011011010001110011000110111010100101100001110000001011100000011100011011011001000111001100111110010001110100110001011100011101100100110101000111011111010100010001111001010110110000011110101110000110000111110001100111110001111101111011011100011111110111001110001000000011111000110010000010011111011100100001000000001001001000010110000110110010000111000010101100100010001000111010001000101000010010000010001011100101010000100011010001011111001000111010011010000010010000000111000000100100011001110111001001001100011111010010010100101000000000100101100010000011001001011110100001000010011001001000010000100110101010000010001001110000011111100010011101100111101000100111110001110011001010000010011010110010100010000110001000101000111001010111001010010100010010100010100110100011110000101010000000101100001010100110000110110010101011000000100000101011000111110011001010110111110111010010101111011100010100101100001110101011001011001001100011110010110011110111001000101101010101010011001011011011001100110010111000010001000000101110011011101100001011101100110001100010111100101001111000101111100001110101001011111110010010010011000001000001110000110000100111101101001100001111101111000011000101011000100100110001101101010100001100100001000111100011001001101110010100110010110010101010001100110010011011100011001110000010111100110011110111101111001101000011101011000011010010010110100000110100111100100001001101010100110110010011010110101000111000110110000001000001001101100101111100100011011010111010001000110111000101001111001101110110111110010011011111001010001000111000001001001001001110000111111011010011100011011000111100111001001100110000001110011000110011010011100111100110100100111010010000000010001110101001100110100011101011110010111000111011010011000001001110111010010100010011101111111101111100111100010101101011001111001010111101010011110100000111110000111101011000000000001111011011100000110011111000010000001100111110011010000000001111101011111110110011111100010111010000111111011011101010001111111100010111100100000000011101000001000000011100111111010000001100101010110100000100100001010101000001011101111100010000011100111000010100001000100100010001000010011110100100010000101101000000010100001100100101110001000011011110110100010000111101000010010100010000100101110001000100011110101100010001001100111110100100010100100100010101000101011110001101010001011100110100110100011000100001011001000110011101010110010001101100100100110100011100011100111001000111011100000110010001111100001111000100100000010110111001001000011010011110010010001011110010110100100100001111010101001001011000011100010010011011010000010100101000000110001001001010010110000001010010101010100111010100101011111011011001001011010011001100010010111001111000000100101111101111000001001100001111111101010011001001000010000100110011100000111101001101001100010100010011011000000101100100110111010001010001001110001000010000010011100111000010000100111010111111111001001111000011110000010011110101111000000100111110101100110001001111111110110110010100000100100111000101000010010111111101010000111001011111010100010011001111000101000110000001011001010001110011101101010100100001110000000101001001101001000101010010101101011110010100110000001010000101001101001110111001010011100110110010010100111110011100100101010000110010111101010100011111101001010101001100101000000101010100010101001101010101011000000011010101011010101100000101010111110101101001010110010000000000010101101000101000110101011011010100001001010111000111011110010101110110011101110101011110110000110001010111111110011110010110000100001011010101100010001011100001011000110101000000010110010001110001010101100101100100011001011001101011000011010110011111001111010101101000111011010001011010100000100111010110101100100101110101101100010000001101011011010101101011010110111001110100000101101111100011001001011100001010010000010111000110111010100101110010110100000101011100111110010101010111010011111001000101110110000011000101011101110001111001010111100000101111100101111001001111111101011110100100111101010111101101011101110101111100011010110101011111010111100000010111111010000011110101111111100011101001100000001001100010011000000110100001100110000010101010011001100000111011000011011000010010110111000110000101101111000101100001101100000010011000011111000011110110001000110001100101100010011100011111011000101011001000010110001011110001111101100011001100011010011000110111000100010110001110110000001101100011111011110010011001000010110111100110010001101100010101100100101010101000011001001110100010000110010100100110001101100101011000111011011001011010000011110110010111011101111101100110000110101011011001100101011100110110011010010011011101100110110011110111011001110000101100110110011101000110110001100111100000100000011001111011110100000110011111110111110001101000001100100101011010000110110010010110100010100110100101101000111000000101011010010001100111010110100101010011000101101001100011000001011010011100010011010110100111111101010101101010001101011001011010100110110110010110101010100101010001101010110111001100011010110001001111110110101101001010111001101011100000011001011010111011100000000110101111101110001101101100001001000010011011000101100111000110110010001111001001101100110001000101011011001111100100100110110100101101110001101101011000100010011011011001011000110110110111001010000001101101111111011001011011100011000011010110111001100011111001101110100101101010011011101100100100100110111011111011010101101111001011010100011011110101111011110110111110010000011001101111110000011000011011111111001001100111000000100011000001110000010100110110011100001000001101110111000010110011001101110000111000101100011100010001001000000111000101000001000001110001011011111011011100011001111000100111000111001100010001110001111110100011011100100010011111000111001001010101001001110010100000100011011100101010111011110111001011011011100001110011000001111011011100110011001110110111001101011111010101110011100010101100011100111011010111100111001111100000101101110100000010110100011101000011010110010111010001011111100101110100100010010101011101001011001011000111010011011011111001110101000001001100011101010010110101100111010101010101101101110101011111011011011101011010010101110111010111001100111101110101111101000010011101100001101100000111011001000001101001110110011001111111011101101000111000000111011010110011110001110110110110010100011101101111111001110111011100100011010101110111010001111111011101110110110001000111011110010000010101110111101101000001011101111101011110000111011111111010101101111000000111011001011110000100000000100111100001100010011101111000100001000111011110001010011000110111100011000111101001111000111010001100011110010000100110100111100100101010001101111001010010100111011110010110101001100111100110001010000101111001101010010111011110011100100010010111100111100111011001111010000001011110011110100010010000010111101001000010000001111010010111111010011110100111110011110111101010011010000001111010101101101100011110101101001100110111101011101111010101111011000010110011011110110010011011000111101101000010000001111011010111001111011110110111011110100111101110010010000001111011101011000001011110111100010111010111101111011111010101111011111110001000011111000001000101100111110000101001111101111100010000100011011111000101101000110111110001110001111001111100100010010100011111001010000001010111110010110111000101111100110011011001011111001110001111000111110011111001101001111101000011110011011111010010010010000111110100111001011101111101010011100010011111010110001010000111110101110110100101111101100010100101011111011001110111000111110110110000111101111101110000111101011111011101011001010111110111101000100101111101111110101001011111100000110000110111111000011101100001111110001011101001011111100011111101010111111001001111101101111110010111111101011111100110111110100111111001111111001101111110100011100110011111101001110101000111111010101011111001111110101110100011011111101100100000100111111011010101110101111110111000110011011111101111000001010111111011111101000101111111000010011000011111110001010110110111111100100001100001111111001011010001011111110011100001010111111101000011001101111111010011011101011111110101100000100111111101100010001001111111011010111110011111110111010101000111111101111110010101111111100001110010011111111000111110010111111110010111110001111111100111111010011111111010011100100111111110101110011001111111101101010101011111111011101111110111111111000010010001111111110010000101011111111100111000000111111111010011011001111111110110000111011111111101110101000111111111100001101101111111111001011110011111111110100111000111111111101101010001111111111100001000011111111111001101110111111111110110000101111111111110000110011111111111101001100111111111111100000101111111111111011000011111111111111010010111111111111111010101111111111111111101011111111111111111110111111111111111110101111111111111110101011111111111111010010111111111111101100001111111111111000001011111111111101001100111111111111000011001111111111101100001011111111111001101110111111111110000100001111111111011010100011111111110100111000111111111100101111001111111111000011011011111111101110101000111111111011000011101111111110100110110011111111100111000000111111111001000010101111111110000100100011111111011101111110111111110110101010101111111101011100110011111111010011100100111111110011111101001111111100101111100011111111000111110010111111110000111001001111111011111100101011111110111010101000111111101101011111001111111011000100010011111110101100000100111111101001101110101111111010000110011011111110011100001010111111100101101000101111111001000011000011111110001010110110111111100001001100001111110111111010001011111101111000001010111111011100011001101111110110101011101011111101100100000100111111010111010001101111110101010111110011111101001110101000111111010001110011001111110011111110011011111100110111110100111111001011111110101111110010011111011011111100011111101010111111000101110100101111110000111011000011111100000110000110111110111111010100101111101111010001001011111011101011001010111110111000011110101111101101100001111011111011001110111000111110110001010010101111101011101101001011111010110001010000111110101001110001001111101001110010111011111010010010010000111110100001111001101111100111110011010011111001110001111000111110011001101100101111100101101110001011111001010000001010111110010001001010001111100011100011110011111000101101000110111110001000010001101111100001010011111011111000001000101100111101111111000100001111011110111110101011110111100010111010111101110101100000101111011100100100000011110110111011110100111101101011100111101111011010000100000011110110010011011000111101100001011001101111010111011110101011110101101001100110111101010110110110001111010100110100000011110100111110011110111101001011111101001111010010000100000011110100010010000010111101000000101111001111001111001110110011110011100100010010111100110101001011101111001100010100001011110010110101001100111100101001010011101111001001010100011011110010000100110100111100011101000110001111000110001111010011110001010011000110111100010000100011101111000011000100111011110000100000000100111100000011101100101110111111110101011011101111101011110000111011110110100000101110111100100000101011101110110110001000111011101000111111101110111001000110101011101101111111001110111011011011001010001110110101100111100011101101000111000000111011001100111111101110110010000011010011101100001101100000111010111110100001001110101110011001111011101011010010101110111010101111101101101110101010101011011011101010010110101100111010100000100110001110100110110111110011101001011001011000111010010001001010101110100010111111001011101000011010110010111010000001011010001110011111000001011011100111011010111100111001110001010110001110011010111110101011100110011001110110111001100000111101101110010110110111000011100101010111011110111001010000010001101110010010101010010011100100010011111000111000111111010001101110001110011000100011100011001111000100111000101101111101101110001010000010000011100010001001000000111000011100010110001110000101100110011011100001000001101110111000001010011011001110000001000110000011011111111001001100110111111000001100001101111100100000110011011110101111011110110111100101101010001101110111110110101011011101100100100100110111010010110101001101110011000111110011011100011000011010110110111111101100101101101110010100000011011011001011000110110110101100010001001101101001011011100011011001111100100100110110011000100010101101100100011110010011011000101100111000110110000100100001001101011111011100011011010111011100000000110101110000001100101101011010010101110011010110001001111110110101011011100110001101010101001010100011010100110110110010110101000110101100101101001111111010101011010011100010011010110100110001100000101101001010100110001011010010001100111010110100011100000010101101000101001101001011010000110110010010110100000110010010101100111111101111100011001111011110100000110011110000010000001100111010001101100011001110000101100110110011011001111011101100110100100110111011001100101011100110110011000011010101101100101110111011111011001011010000011110110010101100011101101100101001001100011011001001110100010000110010010101010100001100100011011000101011001000010110111100110001111101111001001100011101100000011011000110111000100010110001100110001101001100010111100011111011000101011001000010110001001110001111101100010001100011001011000011111000011110110000110110000001001100001011011110001011000010010110111000110000011101100001101100000101010100110011000000110100001100110000000100110001001011111111000111010010111111010000011110101111101011110000001011111000110101101010111101101011101110101111010010011110101011110010011111111010111100000101111100101110111000111100101011101100000110001010111010011111001000101110011111001010101011100101101000001010111000110111010100101110000101001000001011011111000110010010110111001110100000101101101010110101101011011000100000011010110101100100101110101101010000010011101011010001110110100010110011111001111010101100110101100001101011001011001000110010110010001110001010101100011010100000001011000100010111000010110000100001011010101011111111001111001010111101100001100010101110110011101110101011100011101111001010110110101000010010101101000101000110101011001000000000001010101111101011010010101011010101100000101010101100000001101010101000101010011010101001100101000000101010001111110100101010100001100101111010100111110011100100101001110011011001001010011010011101110010100110000001010000101001010110101111001010010011010010001010100100001110000000101000111001110110101010001100000010110010100010011001111000101000011100101111101010000100101111111010100000100100111000100111111111011011001001111101011001100010011110101111000000100111100001111000001001110101111111110010011100111000010000100111000100001000001001101110100010100010011011000000101100100110100110001010001001100111000001111010011001001000010000100110000111111110101001011111011110000010010111001111000000100101101001100110001001010111110110110010010101010100111010100101001011000000101001010000001100010010010011011010000010100100101100001110001001001000011110101010010001011110010110100100001101001111001001000000101101110010001111100001111000100011101110000011001000111000111001110010001101100100100110100011001110101011001000110001000010110010001011100110100110100010101111000110101000101001001000101010001001100111110100100010001111010110001000100001001011100010000111101000010010100001101111011010001000011001001011100010000101101000000010100001001111010010001000010001001000100010000011100111000010100000101110111110001000001001000010101010000001100101010110100000001110011111101000000000111010000001111111100010111100011111101101110101000111111000101110100001111101011111110110011111001101000000000111110000100000011001111011011100000110011110101100000000000111101000001111100001111001010111101010011110001010110101100111011111111011111001110111010010100010011101101001100000100111010111100101110001110101001100110100011101001000000001000111001111001101001001110011000110011010011100100110011000000111000110110001111001110000111111011010011100000100100100100110111110010100010001101110110111110010011011100010100111100110110101110100010001101100101111100100011011000000100000100110101101010001110001101010100110110010011010011110010000100110100100101101000001101000011101011000011001111011110111100110011100000101111001100110010011011100011001011001010101000110010011011100101001100100001000111100011000110110101010000110001010110001001001100001111101111000011000010011110110100110000010000011100001011111110010010010010111110000111010100101111001010011110001011101100110001100010111001101110110000101110000100010000001011011011001100110010110101010101001100101100111101110010001011001001100011110010110000111010101100101011110111000101001010110111110111010010101100011111001100101010110000001000001010100110000110110010101000000010110000101001101000111100001010010100010010100010100011100101011100101000100001100010001010000010011010110010011111000111001100100111011001111010001001110000011111100010011010101000001000100110010010000100001001011110100001000010010110001000001100100101001010000000001001001100011111010010010001100111011100100100000001110000001000111010011010000010001101000101111100100010111001010100001000101000010010000010001000100011101000100001110000101011001000010110000110110010000100000000100100100000100111110111001000000011111000110001111111011100111000011111011110110111000111110001100111110001111010111000011000011110010101101100000111011111010100010001110110010011010100011101001100010111000111001100111110010001110001101101100100011100000010111000000110111010100101100001101101000111001100011010111001001111000110101000001010100001101000100000010000011001101111011101000110010101101101000001100011111000101100011000100101100001000110000011001101100001011111010000101000010111011011011101000101110000101100000001011010101000000100010110010001010001000101011110001000010001010101111111000000010101000110111110000101001011100010110001010001010101011100010011111100100011000100111000111011100001001100101011100000010010110010000001000100100110010010010001001000000001000100010001100111011000000100010011100111110001000011010110010100010000011100101010000100000000111011100000111110101011001000001111010001110110000011101110001110000000111001111111101000001110000110111100000011011011011111010000110101010011111000001100111011111110000011001000101111010000110000100111110000001011110000111011000010110101111110010000101011111011011000001010100101110100000010100011001100000000100111001110110100001001011010101001000010010000011001010000100010100010000000001000001111011011000001111101100101100000011101110101000000000111000100001010000001101010110001000000011001000111111000000101111000110111000001010111111100000000010100011010100100000100101101100010000001000101000110100000001111101101001000000011100010001011000000110010010000110000001010111111101100000010010110110010000000011111011010100000000110010010001000000001001011011001000000001100100100010000000001100100100000000000000000000000111111111001101110001111111100110110111111111110110100100111111111100110110111101111111000001001011011111101101001001110111111010100000001011111110011011011110111111100011101110101111111000001001011101111101110101110011011111011010010011110111110101110010101111111101010000001000011111010000111001001111110011011100000101111100101010011110011111000111011110110111110001000101100001111100000100110101011110111110000100101111101110101111000001111011011111001101111110110100101010111111101100011000100111111010111001101000011110101011010001100111101010000010010101111010010100000011111110100001111000101111100111101100001001111001101110100001111110011000100000010111100101010110000101111001001001000001111110001111001000100111100011000000001101111000100011100100011110000101110001010111100000101010011101110111111110001001011101111100011010110111011110010100110111110111011000110000111101110011000101000111011011111111011111110110110011011011111101101001101111111111011001101010010001110110001110001001011101100000011011101111010111010101010011110101101000111010111101010111001000010111010101000000100001110101000011101111111101001101110101111111010010101011111111110100011110101000011101000100100100011111010000010111101101110011111001100101011100111011010011111111001110000011101011110011010100100110011100110010000100011111001011101111111001110010101111101011011100101000110110001111001001011100011011110010001010110101011100011111101001000111000111001001001111110001100110000011111100010110011101001111000100110110010111110001000001010111111100001101010010100111000010100011110101110000011100110000111100000100001001001111000000010001100101101111111000001110111011111011000001001110111101111111101111101111010011110010111011110001111010101110111011101110001101101110101111011100011011101000110101100110111001011101000011101110001011001100011011011111110010000110110111001100010011101101100111000001111011010110110000000110110100111011111011101101000010111110011011001101101111100110110010101011111101101100011111000001011011000100110000110110110000011100011011101011111011001010111010111011110011110110101110001101010011101011010111011011011010110010111000100110101011111110101001101010110011110010111010101001111111000110101001110000011011101010010000010001111010100001000111011110100111100010101011101001101100111000111010011000010001110110100101010101011011101001001001100110111010001111011110000110100011001000101001101000100110011101011010000110101100010110100000111100010111101000000011011011111001111101111100100110011110110000100111100111100000100010011001110101001110111110011100100101011001100110111101110001011001101100100011011110011010011010101101100110011011001001011001100011111010001110011000010000100011100101111000101010011001011011010011000110010110000110111111100101010110010011111001010010101110010110010011111101111111100100110100000111011001001010001011110110010001110101100011100100010010000011111001000001101011110110001111101101101111100011110000001001111000111001001110001110001101100110100001100011001110011001111000110000110010111110001011011111111101100010101100110011011000101000011010010110001001011001111111100010001011010111111000100000000100001110000111010100101011100001101010000101111000010111110000100110000101010000000001100001001000111110111000001111011111101110000011001100000001100000101000000010111000000111010001100110000001001000101101100000000111010001010111111111000110000101111111000110000011011111100110101010110111110110111101011101111101000100001001011111000110001111110111101110110111100101111011000010111001011110100101111111110111100110110100100101111001000010011001011110000101111011110111011110110100100101110111000010101001011101100110000011010111010110110111011101110101000011100111011101000110010110110111001110111101010101110011000101010101011100100110110110110111000111000110010101110001000111110101011100000111100010010110111111010010010101101111001011000101011011101000011010110110110111100001011101101101001111001001011011001001011111110110101111110011110101101011010011111111011010101010110001110110101000001001010101101001011001101001011010001100010000010110100000100010000101100111100000000111011001101101111100010110011000111110001101100101100111011001011001001111110101010110010001011101100101100011101111100001011000110001111100010110001010000000010101100001111000100001011000010100010000010110000010100110100101100000000010010101010111110110110010010101111011010000001101011110001101000011010111011001100010010101110011111101010101011100011000100111010110111100100000010101101100101101111101011010100101000101010110011111101100010101100101100010010101011000110010011101010110000011000111010101011110011010001101010111000000101111010101100110110000010101010111010101101101010101001111111011010101001010101000010101010000010100110101010011100000000001010100101110101110110101001001010111110101010001110001000101010100010011000100110101000010011110100101010000000011000101010011110111101001110100111011101001000101001110010110000001010011011100011101110100110100110111010101001100101001111011010011000001100001110100101110001001100101001010111110110011010010100110110100110100100111011111101101001001010100101011010010001100011000010100100000111001110101000111101011100001010001110010001011010100011010010111111101000110000011010111010001011000001110010100010011111001111101000100011100001111010000111110100001010100001101100000001101000010110110000111010000100101000100110100000111001010011101000001010001000001010000001011111000110100000000111000110100111111101100111101001111110010111101010011111010101011010100111110001001111011001111011010010010010011110100100001111100111100100111111101001111000001111000110011101110011100111100111011000111000011001110101001101111110011101000011100001100111001100111001101001110010001110111110011100010011111101100111000001000011101001101111010010001010011011100100111011100110110101010110001001101100010111100010011010110110011101100110101001110001011001101001011111000110011010001000100001100110011110010101011001100110101000110110011001011011001001100110010011000010011001100011110100110110011000101110010100100110000111111000001001100001000011000010011000000010000100100101111100110110111001011110010011011110010111010110010111100101110001111110111001011011100110001110010110101011001111100101100111001111111001011000111011001110010110000000101011100101011100101001111001010110010010011110010101010110101100100101010010001101001001010011101100000110010100101101010010100101000111111001111001010001001000000010010100000100011101100100111101101111101001001110100110010010010011011100001110100100110011101110111001001100000110111010010010110100100100100100101001110111101001001001101001110110010010001101100000100100100000001001111001000111001111001110010001100111000010100100010110100101101001000100110110111010010001000001001011100100001101001011001001000010100001000110010000011011111010100100000011111010001001000000001101101010001111110111010000100011111010110010101000111101111100100110001111010011001101100011110001110101001000111011101110000010001110101111110000100011101001000001011000111001100001111010001110001100111100100011100000010111011000110111011000010010001101101010101110100011010111110111011000110101010001000110001101001001001000100011001111100001011000110011001100010110001100101000001011100011000111010101001000110001001010001010001100000111110101100010111111010011001000101111001010011110001011101000000111100010110111011010111000101101001101010010001011001001000010100010101111101101001000101011010010101010001010101010100101100010101000001001011000101001011010100110001010001100110001100010100000101111101000100111100101000010001001101111100110100010011001100000011000100101110010000010001001010011000100100010010010011011001000100100000001100110001000110111001011100010001011100000011000100010010011110010001000011011111011100010000100101111111000100000101000100010001000000001010101100001111110001001111000011110111111111010000111100111011001100001110111101110011000011101011001110110000111001110000110100001110001011101001000011011110110011010000110110101011101100001101011010110011000011010010101101010000110011101011111100001100101011010011000011000110111011110000110000110001010100001011111101000101000010111011011111110000101101111100000100001011010000001101000010110000011000110000101011001100000100001010100100101001000010100101100110110000101000100001011100001001111010011011000010011011001010010000100101111100000100001001010001100011000010010001000011010000100011011100000100001000101001111111000010000111010001110000100001000001011100001000000011110001000001111101110101010000011110101100001100000111011110111011000001110100101110110000011100011100010100000110111011011001000001101011111101110000011010010001111100000110011001001111000001100011100010010000011000001100110100000101111000011011000001011011011100010000010110001101001100000101011000111101000001010011101100010000010100010010111100000100111010110111000001001100010010010000010010011110001100000100011110000111000001000101001101110000010000101110111100000100000010101111000000111110011110110000001111000101000100000011101000101111000000111000000101110000001101100000101100000011010000000111000000110010000011010000001100000001101100000010111000110101000000101100010110010000001010101000010100000010100010111011000000100110111111010000001001010100011100000010001110011011000000100001111101110000001000000101111100000001111011010001000000011101010010110000000110111101000100000001101001011111000000011000111101110000000101111001101100000001011001000111000000010100111111010000000100111011110100000001001010000101000000010001010110010000000100000011011100000000111100011101000000001110000011110000000011010000100100000000110000001101000000001011000111010000000010100011010100000000100101010111000000001000100000110000000001111011100100000000011011110111000000000110010000010000000001011001010100000000010011110011000000000100010110010000000000111100101100000000001101000101000000000010110010010000000000100101100100000000000111110001000000000001100100110000000000010011111100000000000011110101000000000000101101010000000000000111111100000000000001010001000000000000001011110000000000000001011100000000000000000111000000000000000000110000000000000000011100000000000000010111000000000000001011110000000000000101000100000000000001111111000000000000101101010000000000001111010100000000000100111111000000000001100100110000000000011111000100000000001001011001000000000010110010010000000000110100010100000000001111001011000000000100010110010000000001001111001100000000010110010101000000000110010000010000000001101111011100000000011110111001000000001000100000110000000010010101011100000000101000110101000000001011000111010000000011000000110100000000110100001001000000001110000011110000000011110001110100000001000000110111000000010001010110010000000100101000010100000001001110111101000000010100111111010000000101100100011100000001011110011011000000011000111101110000000110100101111100000001101111010001000000011101010010110000000111101101000100000010000001011111000000100001111101110000001000111001101100000010010101000111000000100110111111010000001010001011101100000010101010000101000000101100010110010000001011100011010100000011000000011011000000110010000011010000001101000000011100000011011000001011000000111000000101110000001110100010111100000011110001010001000000111110011110110000010000001010111100000100001011101111000001000101001101110000010001111000011100000100100111100011000001001100010010010000010011101011011100000101000100101111000001010011101100010000010101100011110100000101100011010011000001011011011100010000010111100001101100000110000011001101000001100011100010010000011001100100111100000110100100011111000001101011111101110000011011101101100100000111000111000101000001110100101110110000011101111011101100000111101011000011000001111101110101010000100000001111000100001000010000010111000010000111010001110000100010100111111100001000110111000001000010010001000011010000100101000110001100001001011111000001000010011011001010010000100111101001101100001010001000010111000010100101100110110000101010010010100100001010110011000001000010110000011000110000101101000000110100001011011111000001000010111011011111110000101111110100010100001100001100010101000011000110111011110000110010101101001100001100111010111111000011010010101101010000110101101011001100001101101010111011000011011110110011010000111000101110100100001110011100001101000011101011001110110000111011110111001100001111001110110011000011110111111111010000111111000100111100010000000010101011000100000101000100010001000010010111111100010000110111110111000100010010011110010001000101110000001100010001101110010111000100100000001100110001001001001101100100010010100110001001000100101110010000010001001100110000001100010011011111001101000100111100101000010001010000010111110100010100011001100011000101001011010100110001010100000100101100010101010101001011000101011010010101010001010111110110100100010110010010000101000101101001101010010001011011101101011100010111010000001111000101111001010011110001011111101001100100011000001111101011000110001001010001010001100011101010100100011001010000010111000110011001100010110001100111110000101100011010010010010001000110101010001000110001101011111011101100011011010101011101000110111011000010010001110000001011101100011100011001111001000111001100001111010001110100100000101100011101011111100001000111011101110000010001111000111010100100011110100110011011000111101111100100110001111101011001010100011111101110100001001000000001101101010010000001111101000100100000110111110101001000010100001000110010000110100101100100100010000010010111001000100110110111010010001011010010110100100011001110000101001000111001111001110010010000000100111100100100011011000001001001001101001110110010010100111011110100100101101001001001001001100000110111010010011001110111011100100110111000011101001001110100110010010010011110110111110100101000001000111011001010001001000000010010100011111100111100101001011010100101001010011101100000110010101001000110100100101010101101011001001010110010010011110010101110010100111100101100000001010111001011000111011001110010110011100111111100101101010110011111001011011100110001110010111000111111011100101110101100101111001011110010011011110010111110011011011100110000000100001001001100001000011000010011000011111100000100110001011100101001001100011110100110110011001001100001001100110010110110010011001100110101000110110011001111001010101100110100010001000011001101001011111000110011010100111000101100110101101100111011001101100010111100010011011010101011000100110111001001110111001101111010010001010011100000100001110100111000100111111011001110010001110111110011100110011100110100111010000111000011001110101001101111110011101100011100001100111011100111001111001111000001111000110011110010011111110100111101001000011111001111011010010010010011111000100111101100111110101010110101001111110010111101010011111110110011110101000000001110001101010000001011111000110100000101000100000101000001110010100111010000100101000100110100001011011000011101000011011000000011010000111110100001010100010001110000111101000100111110011111010001011000001110010100011000001101011101000110100101111111010001110010001011010100011110101110000101001000001110011101010010001100011000010100100101010010101101001001110111111011010010100110110100110100101011111011001101001011100010011001010011000001100001110100110010100111101101001101001101110101010011011100011101110100111001011000000101001110111010010001010011110111101001110101000000001100010101010000100111101001010100010011000100110101000111000100010101010010010101111101010100101110101110110101001110000000000101010100000101001101010101001010101000010101010100111111101101010101110101011011010101100110110000010101011100000010111101010111100110100011010110000011000111010101100011001001110101011001011000100101010110011111101100010101101010010100010101011011001011011111010110111100100000010101110001100010011101011100111111010101010111011001100010010101111000110100001101011110110100000011010111110110110010010110000000001001010101100000101001101001011000010100010000010110000111100010000101100010100000000101011000110001111100010110001110111110000101100100010111011001011001001111110101010110010110011101100101100110001111100011011001101101111100010110011110000000011101101000001000100001011010001100010000010110100101100110100101101010000010010101011010101010110001110110101101001111111101101011111100111101011011001001011111110110110100111100100101101101111000010111011011101000011010110110111100101100010101101111110100100101011100000111100010010111000100011111010101110001110001100101011100100110110110110111001100010101010101110011101111010101011101000110010110110111010100001110011101110101101101110111011101100110000011010111011100001010100101110111101101001001011110000101111011110111100100001001100101111001101101001001011110100101111111110111101100001011100101111011101101111001011111000110001111110111110100010000100101111101101111010111011111100110101010110111111100011000001101111111110001100001100000000111010001011000000100100010110110000001110100011001100000101000000010111000001100110000000110000011110111111011100001001000111110111000010101000000000110000101111100001001100001101010000101111000011101010010101110001000000001000011100010001011010111111000100101100111111110001010000110100101100010101100110011011000101101111111110110001100001100101111100011001110011001111000110110011010000110001110010011100011100011110000001001111000111110110110111110010000011010111101100100010010000011111001000111010110001110010010100010111101100100110100000111011001001111110111111110010100101011100101100101010110010011111001011000011011111110010110110100110001100101111000101010011001100001000010001110011000111110100011100110011011001001011001101001101010110110011011001000110111100110111101110001011001110010010101100110011101010011101111100111100000100010011001111011000010011110011111011111001001101000000011011011111010000011110001011110100001101011000101101000100110011101011010001100100010100110100011110111100001101001001001100110111010010101010101101110100110000100011101101001101100111000111010011110001010101110101000010001110111101010010000010001111010100111000001101110101010011111110001101010110011110010111010101111111010100110101100101110001001101011010111011011011010111000110101001110101110111100111101101011111011001010111011000001110001101110110001001100001101101100011111000001011011001010101111110110110011011011111001101101000010111110011011010011101111101110110101101100000001101101100111000001111011011100110001001110110111111100100001101110001011001100011011100101110100001110111010001101011001101110101111011100011011101110111000110110111100011110101011101111010011110010111011110111111110111110111110110000010011101111111000001110111100000001000110010111000001000010010011110000011100110000111100001010001111010111000011010100101001110001000001010111111100010011011001011111000101100111010011110001100110000011111100011100100100111111000111111010010001110010001010110101011100100101110001101111001010001101100011110010101111101011011100101110111111100111001100100001000111110011010100100110011100111000001110101111001110110100111111110011111001100101011101000001011110110111010001001001000111110100011110101000011101001010101111111111010011011101011111110101000011101111111101010100000010000111010101110010000101110101101000111010111101011101010101001111011000000110111011110110001110001001011101100110101001000111011010011011111111110110110011011011111101101111111101111111011100110001010001110111011000110000111101111001010011011111011111000110101101110111111110001001011110000010101001110111100001011100010101111000100011100100011110001100000000110111100011110010001001111001001001000001111110010101011000010111100110001000000101111001101110100001111110011110110000100111101000011110001011111010010100000011111110101000001001010111101010110100011001111010111001101000011110110001100010011111101101001010101111111011011111001101111110111010111100000111101111100001001011111100000100110101011111000100010110000111110001110111101101111100101010011110011111001101110000010111110100001110010011111101010000001000011111010111001010111111110110100100111101111101110101110011011111100000100101110111111000111011101011111110011011011110111111101010000000101111111011010010011101111111000001001011011111110011011011110111111101101001001111111111100110110111111111111100110111000;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\bram_sp_sin_lut.vhdl:2081:26  */
  assign n50_o = 11'b11111111111 - addr;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\bram_sp_sin_lut.vhdl:16:9  */
  reg [19:0] n56[2047:0] ; // memory
  initial begin
    n56[2047] = 20'b00000000000000000000;
    n56[2046] = 20'b00000000011001001000;
    n56[2045] = 20'b00000000110010010001;
    n56[2044] = 20'b00000001001011011001;
    n56[2043] = 20'b00000001100100100010;
    n56[2042] = 20'b00000001111101101010;
    n56[2041] = 20'b00000010010110110010;
    n56[2040] = 20'b00000010101111111011;
    n56[2039] = 20'b00000011001001000011;
    n56[2038] = 20'b00000011100010001011;
    n56[2037] = 20'b00000011111011010010;
    n56[2036] = 20'b00000100010100011010;
    n56[2035] = 20'b00000100101101100010;
    n56[2034] = 20'b00000101000110101001;
    n56[2033] = 20'b00000101011111110000;
    n56[2032] = 20'b00000101111000110111;
    n56[2031] = 20'b00000110010001111110;
    n56[2030] = 20'b00000110101011000100;
    n56[2029] = 20'b00000111000100001010;
    n56[2028] = 20'b00000111011101010000;
    n56[2027] = 20'b00000111110110010110;
    n56[2026] = 20'b00001000001111011011;
    n56[2025] = 20'b00001000101000100000;
    n56[2024] = 20'b00001001000001100101;
    n56[2023] = 20'b00001001011010101001;
    n56[2022] = 20'b00001001110011101101;
    n56[2021] = 20'b00001010001100110000;
    n56[2020] = 20'b00001010100101110100;
    n56[2019] = 20'b00001010111110110110;
    n56[2018] = 20'b00001011010111111001;
    n56[2017] = 20'b00001011110000111011;
    n56[2016] = 20'b00001100001001111100;
    n56[2015] = 20'b00001100100010111101;
    n56[2014] = 20'b00001100111011111110;
    n56[2013] = 20'b00001101010100111110;
    n56[2012] = 20'b00001101101101111101;
    n56[2011] = 20'b00001110000110111100;
    n56[2010] = 20'b00001110011111111010;
    n56[2009] = 20'b00001110111000111000;
    n56[2008] = 20'b00001111010001110110;
    n56[2007] = 20'b00001111101010110010;
    n56[2006] = 20'b00010000000011101110;
    n56[2005] = 20'b00010000011100101010;
    n56[2004] = 20'b00010000110101100101;
    n56[2003] = 20'b00010001001110011111;
    n56[2002] = 20'b00010001100111011000;
    n56[2001] = 20'b00010010000000010001;
    n56[2000] = 20'b00010010011001001001;
    n56[1999] = 20'b00010010110010000001;
    n56[1998] = 20'b00010011001010111000;
    n56[1997] = 20'b00010011100011101110;
    n56[1996] = 20'b00010011111100100011;
    n56[1995] = 20'b00010100010101010111;
    n56[1994] = 20'b00010100101110001011;
    n56[1993] = 20'b00010101000110111110;
    n56[1992] = 20'b00010101011111110000;
    n56[1991] = 20'b00010101111000100001;
    n56[1990] = 20'b00010110010001010001;
    n56[1989] = 20'b00010110101010000001;
    n56[1988] = 20'b00010111000010110000;
    n56[1987] = 20'b00010111011011011101;
    n56[1986] = 20'b00010111110100001010;
    n56[1985] = 20'b00011000001100110110;
    n56[1984] = 20'b00011000100101100001;
    n56[1983] = 20'b00011000111110001011;
    n56[1982] = 20'b00011001010110110100;
    n56[1981] = 20'b00011001101111011101;
    n56[1980] = 20'b00011010001000000100;
    n56[1979] = 20'b00011010100000101010;
    n56[1978] = 20'b00011010111001001111;
    n56[1977] = 20'b00011011010001110011;
    n56[1976] = 20'b00011011101010010110;
    n56[1975] = 20'b00011100000010111000;
    n56[1974] = 20'b00011100011011011001;
    n56[1973] = 20'b00011100110011111001;
    n56[1972] = 20'b00011101001100010111;
    n56[1971] = 20'b00011101100100110101;
    n56[1970] = 20'b00011101111101010001;
    n56[1969] = 20'b00011110010101101100;
    n56[1968] = 20'b00011110101110000110;
    n56[1967] = 20'b00011111000110011111;
    n56[1966] = 20'b00011111011110110111;
    n56[1965] = 20'b00011111110111001110;
    n56[1964] = 20'b00100000001111100011;
    n56[1963] = 20'b00100000100111110111;
    n56[1962] = 20'b00100001000000001001;
    n56[1961] = 20'b00100001011000011011;
    n56[1960] = 20'b00100001110000101011;
    n56[1959] = 20'b00100010001000111010;
    n56[1958] = 20'b00100010100001001000;
    n56[1957] = 20'b00100010111001010100;
    n56[1956] = 20'b00100011010001011111;
    n56[1955] = 20'b00100011101001101000;
    n56[1954] = 20'b00100100000001110000;
    n56[1953] = 20'b00100100011001110111;
    n56[1952] = 20'b00100100110001111101;
    n56[1951] = 20'b00100101001010000000;
    n56[1950] = 20'b00100101100010000011;
    n56[1949] = 20'b00100101111010000100;
    n56[1948] = 20'b00100110010010000100;
    n56[1947] = 20'b00100110101010000010;
    n56[1946] = 20'b00100111000001111110;
    n56[1945] = 20'b00100111011001111010;
    n56[1944] = 20'b00100111110001110011;
    n56[1943] = 20'b00101000001001101011;
    n56[1942] = 20'b00101000100001100010;
    n56[1941] = 20'b00101000111001010111;
    n56[1940] = 20'b00101001010001001010;
    n56[1939] = 20'b00101001101000111100;
    n56[1938] = 20'b00101010000000101100;
    n56[1937] = 20'b00101010011000011011;
    n56[1936] = 20'b00101010110000001000;
    n56[1935] = 20'b00101011000111110011;
    n56[1934] = 20'b00101011011111011101;
    n56[1933] = 20'b00101011110111000101;
    n56[1932] = 20'b00101100001110101011;
    n56[1931] = 20'b00101100100110001111;
    n56[1930] = 20'b00101100111101110010;
    n56[1929] = 20'b00101101010101010011;
    n56[1928] = 20'b00101101101100110011;
    n56[1927] = 20'b00101110000100010000;
    n56[1926] = 20'b00101110011011101100;
    n56[1925] = 20'b00101110110011000110;
    n56[1924] = 20'b00101111001010011110;
    n56[1923] = 20'b00101111100001110101;
    n56[1922] = 20'b00101111111001001001;
    n56[1921] = 20'b00110000010000011100;
    n56[1920] = 20'b00110000100111101101;
    n56[1919] = 20'b00110000111110111100;
    n56[1918] = 20'b00110001010110001001;
    n56[1917] = 20'b00110001101101010100;
    n56[1916] = 20'b00110010000100011110;
    n56[1915] = 20'b00110010011011100101;
    n56[1914] = 20'b00110010110010101010;
    n56[1913] = 20'b00110011001001101110;
    n56[1912] = 20'b00110011100000101111;
    n56[1911] = 20'b00110011110111101111;
    n56[1910] = 20'b00110100001110101100;
    n56[1909] = 20'b00110100100101101000;
    n56[1908] = 20'b00110100111100100001;
    n56[1907] = 20'b00110101010011011001;
    n56[1906] = 20'b00110101101010001110;
    n56[1905] = 20'b00110110000001000001;
    n56[1904] = 20'b00110110010111110010;
    n56[1903] = 20'b00110110101110100010;
    n56[1902] = 20'b00110111000101001111;
    n56[1901] = 20'b00110111011011111001;
    n56[1900] = 20'b00110111110010100010;
    n56[1899] = 20'b00111000001001001001;
    n56[1898] = 20'b00111000011111101101;
    n56[1897] = 20'b00111000110110001111;
    n56[1896] = 20'b00111001001100110000;
    n56[1895] = 20'b00111001100011001101;
    n56[1894] = 20'b00111001111001101001;
    n56[1893] = 20'b00111010010000000010;
    n56[1892] = 20'b00111010100110011010;
    n56[1891] = 20'b00111010111100101110;
    n56[1890] = 20'b00111011010011000001;
    n56[1889] = 20'b00111011101001010001;
    n56[1888] = 20'b00111011111111011111;
    n56[1887] = 20'b00111100010101101011;
    n56[1886] = 20'b00111100101011110101;
    n56[1885] = 20'b00111101000001111100;
    n56[1884] = 20'b00111101011000000000;
    n56[1883] = 20'b00111101101110000011;
    n56[1882] = 20'b00111110000100000011;
    n56[1881] = 20'b00111110011010000000;
    n56[1880] = 20'b00111110101111111011;
    n56[1879] = 20'b00111111000101110100;
    n56[1878] = 20'b00111111011011101010;
    n56[1877] = 20'b00111111110001011110;
    n56[1876] = 20'b01000000000111010000;
    n56[1875] = 20'b01000000011100111111;
    n56[1874] = 20'b01000000110010101011;
    n56[1873] = 20'b01000001001000010101;
    n56[1872] = 20'b01000001011101111100;
    n56[1871] = 20'b01000001110011100001;
    n56[1870] = 20'b01000010001001000100;
    n56[1869] = 20'b01000010011110100100;
    n56[1868] = 20'b01000010110100000001;
    n56[1867] = 20'b01000011001001011100;
    n56[1866] = 20'b01000011011110110100;
    n56[1865] = 20'b01000011110100001001;
    n56[1864] = 20'b01000100001001011100;
    n56[1863] = 20'b01000100011110101100;
    n56[1862] = 20'b01000100110011111010;
    n56[1861] = 20'b01000101001001000101;
    n56[1860] = 20'b01000101011110001101;
    n56[1859] = 20'b01000101110011010011;
    n56[1858] = 20'b01000110001000010110;
    n56[1857] = 20'b01000110011101010110;
    n56[1856] = 20'b01000110110010010011;
    n56[1855] = 20'b01000111000111001110;
    n56[1854] = 20'b01000111011100000110;
    n56[1853] = 20'b01000111110000111100;
    n56[1852] = 20'b01001000000101101110;
    n56[1851] = 20'b01001000011010011110;
    n56[1850] = 20'b01001000101111001011;
    n56[1849] = 20'b01001001000011110101;
    n56[1848] = 20'b01001001011000011100;
    n56[1847] = 20'b01001001101101000001;
    n56[1846] = 20'b01001010000001100010;
    n56[1845] = 20'b01001010010110000001;
    n56[1844] = 20'b01001010101010011101;
    n56[1843] = 20'b01001010111110110110;
    n56[1842] = 20'b01001011010011001100;
    n56[1841] = 20'b01001011100111100000;
    n56[1840] = 20'b01001011111011110000;
    n56[1839] = 20'b01001100001111111101;
    n56[1838] = 20'b01001100100100001000;
    n56[1837] = 20'b01001100111000001111;
    n56[1836] = 20'b01001101001100010100;
    n56[1835] = 20'b01001101100000010110;
    n56[1834] = 20'b01001101110100010100;
    n56[1833] = 20'b01001110001000010000;
    n56[1832] = 20'b01001110011100001000;
    n56[1831] = 20'b01001110101111111110;
    n56[1830] = 20'b01001111000011110000;
    n56[1829] = 20'b01001111010111100000;
    n56[1828] = 20'b01001111101011001100;
    n56[1827] = 20'b01001111111110110110;
    n56[1826] = 20'b01010000010010011100;
    n56[1825] = 20'b01010000100101111111;
    n56[1824] = 20'b01010000111001011111;
    n56[1823] = 20'b01010001001100111100;
    n56[1822] = 20'b01010001100000010110;
    n56[1821] = 20'b01010001110011101101;
    n56[1820] = 20'b01010010000111000000;
    n56[1819] = 20'b01010010011010010001;
    n56[1818] = 20'b01010010101101011110;
    n56[1817] = 20'b01010011000000101000;
    n56[1816] = 20'b01010011010011101110;
    n56[1815] = 20'b01010011100110110010;
    n56[1814] = 20'b01010011111001110010;
    n56[1813] = 20'b01010100001100101111;
    n56[1812] = 20'b01010100011111101001;
    n56[1811] = 20'b01010100110010100000;
    n56[1810] = 20'b01010101000101010011;
    n56[1809] = 20'b01010101011000000011;
    n56[1808] = 20'b01010101101010110000;
    n56[1807] = 20'b01010101111101011010;
    n56[1806] = 20'b01010110010000000000;
    n56[1805] = 20'b01010110100010100011;
    n56[1804] = 20'b01010110110101000010;
    n56[1803] = 20'b01010111000111011110;
    n56[1802] = 20'b01010111011001110111;
    n56[1801] = 20'b01010111101100001100;
    n56[1800] = 20'b01010111111110011110;
    n56[1799] = 20'b01011000010000101101;
    n56[1798] = 20'b01011000100010111000;
    n56[1797] = 20'b01011000110101000000;
    n56[1796] = 20'b01011001000111000101;
    n56[1795] = 20'b01011001011001000110;
    n56[1794] = 20'b01011001101011000011;
    n56[1793] = 20'b01011001111100111101;
    n56[1792] = 20'b01011010001110110100;
    n56[1791] = 20'b01011010100000100111;
    n56[1790] = 20'b01011010110010010111;
    n56[1789] = 20'b01011011000100000011;
    n56[1788] = 20'b01011011010101101011;
    n56[1787] = 20'b01011011100111010000;
    n56[1786] = 20'b01011011111000110010;
    n56[1785] = 20'b01011100001010010000;
    n56[1784] = 20'b01011100011011101010;
    n56[1783] = 20'b01011100101101000001;
    n56[1782] = 20'b01011100111110010101;
    n56[1781] = 20'b01011101001111100100;
    n56[1780] = 20'b01011101100000110001;
    n56[1779] = 20'b01011101110001111001;
    n56[1778] = 20'b01011110000010111110;
    n56[1777] = 20'b01011110010011111111;
    n56[1776] = 20'b01011110100100111101;
    n56[1775] = 20'b01011110110101110111;
    n56[1774] = 20'b01011111000110101101;
    n56[1773] = 20'b01011111010111100000;
    n56[1772] = 20'b01011111101000001111;
    n56[1771] = 20'b01011111111000111010;
    n56[1770] = 20'b01100000001001100010;
    n56[1769] = 20'b01100000011010000110;
    n56[1768] = 20'b01100000101010100110;
    n56[1767] = 20'b01100000111011000011;
    n56[1766] = 20'b01100001001011011100;
    n56[1765] = 20'b01100001011011110001;
    n56[1764] = 20'b01100001101100000010;
    n56[1763] = 20'b01100001111100001111;
    n56[1762] = 20'b01100010001100011001;
    n56[1761] = 20'b01100010011100011111;
    n56[1760] = 20'b01100010101100100001;
    n56[1759] = 20'b01100010111100011111;
    n56[1758] = 20'b01100011001100011010;
    n56[1757] = 20'b01100011011100010001;
    n56[1756] = 20'b01100011101100000011;
    n56[1755] = 20'b01100011111011110010;
    n56[1754] = 20'b01100100001011011110;
    n56[1753] = 20'b01100100011011000101;
    n56[1752] = 20'b01100100101010101000;
    n56[1751] = 20'b01100100111010001000;
    n56[1750] = 20'b01100101001001100011;
    n56[1749] = 20'b01100101011000111011;
    n56[1748] = 20'b01100101101000001111;
    n56[1747] = 20'b01100101110111011111;
    n56[1746] = 20'b01100110000110101011;
    n56[1745] = 20'b01100110010101110011;
    n56[1744] = 20'b01100110100100110111;
    n56[1743] = 20'b01100110110011110111;
    n56[1742] = 20'b01100111000010110011;
    n56[1741] = 20'b01100111010001101100;
    n56[1740] = 20'b01100111100000100000;
    n56[1739] = 20'b01100111101111010000;
    n56[1738] = 20'b01100111111101111100;
    n56[1737] = 20'b01101000001100100101;
    n56[1736] = 20'b01101000011011001001;
    n56[1735] = 20'b01101000101001101001;
    n56[1734] = 20'b01101000111000000101;
    n56[1733] = 20'b01101001000110011101;
    n56[1732] = 20'b01101001010100110001;
    n56[1731] = 20'b01101001100011000001;
    n56[1730] = 20'b01101001110001001101;
    n56[1729] = 20'b01101001111111010101;
    n56[1728] = 20'b01101010001101011001;
    n56[1727] = 20'b01101010011011011001;
    n56[1726] = 20'b01101010101001010100;
    n56[1725] = 20'b01101010110111001100;
    n56[1724] = 20'b01101011000100111111;
    n56[1723] = 20'b01101011010010101110;
    n56[1722] = 20'b01101011100000011001;
    n56[1721] = 20'b01101011101110000000;
    n56[1720] = 20'b01101011111011100011;
    n56[1719] = 20'b01101100001001000010;
    n56[1718] = 20'b01101100010110011100;
    n56[1717] = 20'b01101100100011110010;
    n56[1716] = 20'b01101100110001000101;
    n56[1715] = 20'b01101100111110010010;
    n56[1714] = 20'b01101101001011011100;
    n56[1713] = 20'b01101101011000100010;
    n56[1712] = 20'b01101101100101100011;
    n56[1711] = 20'b01101101110010100000;
    n56[1710] = 20'b01101101111111011001;
    n56[1709] = 20'b01101110001100001101;
    n56[1708] = 20'b01101110011000111110;
    n56[1707] = 20'b01101110100101101010;
    n56[1706] = 20'b01101110110010010010;
    n56[1705] = 20'b01101110111110110101;
    n56[1704] = 20'b01101111001011010100;
    n56[1703] = 20'b01101111010111101111;
    n56[1702] = 20'b01101111100100000110;
    n56[1701] = 20'b01101111110000011000;
    n56[1700] = 20'b01101111111100100110;
    n56[1699] = 20'b01110000001000110000;
    n56[1698] = 20'b01110000010100110110;
    n56[1697] = 20'b01110000100000110111;
    n56[1696] = 20'b01110000101100110011;
    n56[1695] = 20'b01110000111000101100;
    n56[1694] = 20'b01110001000100100000;
    n56[1693] = 20'b01110001010000010000;
    n56[1692] = 20'b01110001011011111011;
    n56[1691] = 20'b01110001100111100010;
    n56[1690] = 20'b01110001110011000100;
    n56[1689] = 20'b01110001111110100011;
    n56[1688] = 20'b01110010001001111100;
    n56[1687] = 20'b01110010010101010010;
    n56[1686] = 20'b01110010100000100011;
    n56[1685] = 20'b01110010101011101111;
    n56[1684] = 20'b01110010110110111000;
    n56[1683] = 20'b01110011000001111011;
    n56[1682] = 20'b01110011001100111011;
    n56[1681] = 20'b01110011010111110101;
    n56[1680] = 20'b01110011100010101100;
    n56[1679] = 20'b01110011101101011110;
    n56[1678] = 20'b01110011111000001011;
    n56[1677] = 20'b01110100000010110100;
    n56[1676] = 20'b01110100001101011001;
    n56[1675] = 20'b01110100010111111001;
    n56[1674] = 20'b01110100100010010101;
    n56[1673] = 20'b01110100101100101100;
    n56[1672] = 20'b01110100110110111110;
    n56[1671] = 20'b01110101000001001100;
    n56[1670] = 20'b01110101001011010110;
    n56[1669] = 20'b01110101010101011011;
    n56[1668] = 20'b01110101011111011011;
    n56[1667] = 20'b01110101101001010111;
    n56[1666] = 20'b01110101110011001111;
    n56[1665] = 20'b01110101111101000010;
    n56[1664] = 20'b01110110000110110000;
    n56[1663] = 20'b01110110010000011010;
    n56[1662] = 20'b01110110011001111111;
    n56[1661] = 20'b01110110100011100000;
    n56[1660] = 20'b01110110101100111100;
    n56[1659] = 20'b01110110110110010100;
    n56[1658] = 20'b01110110111111100111;
    n56[1657] = 20'b01110111001000110101;
    n56[1656] = 20'b01110111010001111111;
    n56[1655] = 20'b01110111011011000100;
    n56[1654] = 20'b01110111100100000101;
    n56[1653] = 20'b01110111101101000001;
    n56[1652] = 20'b01110111110101111000;
    n56[1651] = 20'b01110111111110101011;
    n56[1650] = 20'b01111000000111011001;
    n56[1649] = 20'b01111000010000000010;
    n56[1648] = 20'b01111000011000100111;
    n56[1647] = 20'b01111000100001000111;
    n56[1646] = 20'b01111000101001100011;
    n56[1645] = 20'b01111000110001111010;
    n56[1644] = 20'b01111000111010001100;
    n56[1643] = 20'b01111001000010011010;
    n56[1642] = 20'b01111001001010100011;
    n56[1641] = 20'b01111001010010100111;
    n56[1640] = 20'b01111001011010100110;
    n56[1639] = 20'b01111001100010100001;
    n56[1638] = 20'b01111001101010010111;
    n56[1637] = 20'b01111001110010001001;
    n56[1636] = 20'b01111001111001110110;
    n56[1635] = 20'b01111010000001011110;
    n56[1634] = 20'b01111010001001000001;
    n56[1633] = 20'b01111010010000100000;
    n56[1632] = 20'b01111010010111111010;
    n56[1631] = 20'b01111010011111001111;
    n56[1630] = 20'b01111010100110100000;
    n56[1629] = 20'b01111010101101101100;
    n56[1628] = 20'b01111010110100110011;
    n56[1627] = 20'b01111010111011110101;
    n56[1626] = 20'b01111011000010110011;
    n56[1625] = 20'b01111011001001101100;
    n56[1624] = 20'b01111011010000100000;
    n56[1623] = 20'b01111011010111001111;
    n56[1622] = 20'b01111011011101111010;
    n56[1621] = 20'b01111011100100100000;
    n56[1620] = 20'b01111011101011000001;
    n56[1619] = 20'b01111011110001011101;
    n56[1618] = 20'b01111011110111110101;
    n56[1617] = 20'b01111011111110001000;
    n56[1616] = 20'b01111100000100010110;
    n56[1615] = 20'b01111100001010011111;
    n56[1614] = 20'b01111100010000100011;
    n56[1613] = 20'b01111100010110100011;
    n56[1612] = 20'b01111100011100011110;
    n56[1611] = 20'b01111100100010010100;
    n56[1610] = 20'b01111100101000000101;
    n56[1609] = 20'b01111100101101110001;
    n56[1608] = 20'b01111100110011011001;
    n56[1607] = 20'b01111100111000111100;
    n56[1606] = 20'b01111100111110011010;
    n56[1605] = 20'b01111101000011110011;
    n56[1604] = 20'b01111101001001001000;
    n56[1603] = 20'b01111101001110010111;
    n56[1602] = 20'b01111101010011100010;
    n56[1601] = 20'b01111101011000101000;
    n56[1600] = 20'b01111101011101101001;
    n56[1599] = 20'b01111101100010100101;
    n56[1598] = 20'b01111101100111011100;
    n56[1597] = 20'b01111101101100001111;
    n56[1596] = 20'b01111101110000111101;
    n56[1595] = 20'b01111101110101100101;
    n56[1594] = 20'b01111101111010001001;
    n56[1593] = 20'b01111101111110101001;
    n56[1592] = 20'b01111110000011000011;
    n56[1591] = 20'b01111110000111011000;
    n56[1590] = 20'b01111110001011101001;
    n56[1589] = 20'b01111110001111110101;
    n56[1588] = 20'b01111110010011111011;
    n56[1587] = 20'b01111110010111111101;
    n56[1586] = 20'b01111110011011111010;
    n56[1585] = 20'b01111110011111110011;
    n56[1584] = 20'b01111110100011100110;
    n56[1583] = 20'b01111110100111010100;
    n56[1582] = 20'b01111110101010111110;
    n56[1581] = 20'b01111110101110100011;
    n56[1580] = 20'b01111110110010000010;
    n56[1579] = 20'b01111110110101011101;
    n56[1578] = 20'b01111110111000110011;
    n56[1577] = 20'b01111110111100000101;
    n56[1576] = 20'b01111110111111010001;
    n56[1575] = 20'b01111111000010011000;
    n56[1574] = 20'b01111111000101011011;
    n56[1573] = 20'b01111111001000011000;
    n56[1572] = 20'b01111111001011010001;
    n56[1571] = 20'b01111111001110000101;
    n56[1570] = 20'b01111111010000110011;
    n56[1569] = 20'b01111111010011011101;
    n56[1568] = 20'b01111111010110000010;
    n56[1567] = 20'b01111111011000100010;
    n56[1566] = 20'b01111111011010111110;
    n56[1565] = 20'b01111111011101010100;
    n56[1564] = 20'b01111111011111100101;
    n56[1563] = 20'b01111111100001110010;
    n56[1562] = 20'b01111111100011111001;
    n56[1561] = 20'b01111111100101111100;
    n56[1560] = 20'b01111111100111111010;
    n56[1559] = 20'b01111111101001110010;
    n56[1558] = 20'b01111111101011100110;
    n56[1557] = 20'b01111111101101010101;
    n56[1556] = 20'b01111111101110111111;
    n56[1555] = 20'b01111111110000100100;
    n56[1554] = 20'b01111111110010000101;
    n56[1553] = 20'b01111111110011100000;
    n56[1552] = 20'b01111111110100110110;
    n56[1551] = 20'b01111111110110000111;
    n56[1550] = 20'b01111111110111010100;
    n56[1549] = 20'b01111111111000011011;
    n56[1548] = 20'b01111111111001011110;
    n56[1547] = 20'b01111111111010011100;
    n56[1546] = 20'b01111111111011010100;
    n56[1545] = 20'b01111111111100001000;
    n56[1544] = 20'b01111111111100110111;
    n56[1543] = 20'b01111111111101100001;
    n56[1542] = 20'b01111111111110000110;
    n56[1541] = 20'b01111111111110100110;
    n56[1540] = 20'b01111111111111000001;
    n56[1539] = 20'b01111111111111011000;
    n56[1538] = 20'b01111111111111101001;
    n56[1537] = 20'b01111111111111110101;
    n56[1536] = 20'b01111111111111111101;
    n56[1535] = 20'b01111111111111111111;
    n56[1534] = 20'b01111111111111111101;
    n56[1533] = 20'b01111111111111110101;
    n56[1532] = 20'b01111111111111101001;
    n56[1531] = 20'b01111111111111011000;
    n56[1530] = 20'b01111111111111000001;
    n56[1529] = 20'b01111111111110100110;
    n56[1528] = 20'b01111111111110000110;
    n56[1527] = 20'b01111111111101100001;
    n56[1526] = 20'b01111111111100110111;
    n56[1525] = 20'b01111111111100001000;
    n56[1524] = 20'b01111111111011010100;
    n56[1523] = 20'b01111111111010011100;
    n56[1522] = 20'b01111111111001011110;
    n56[1521] = 20'b01111111111000011011;
    n56[1520] = 20'b01111111110111010100;
    n56[1519] = 20'b01111111110110000111;
    n56[1518] = 20'b01111111110100110110;
    n56[1517] = 20'b01111111110011100000;
    n56[1516] = 20'b01111111110010000101;
    n56[1515] = 20'b01111111110000100100;
    n56[1514] = 20'b01111111101110111111;
    n56[1513] = 20'b01111111101101010101;
    n56[1512] = 20'b01111111101011100110;
    n56[1511] = 20'b01111111101001110010;
    n56[1510] = 20'b01111111100111111010;
    n56[1509] = 20'b01111111100101111100;
    n56[1508] = 20'b01111111100011111001;
    n56[1507] = 20'b01111111100001110010;
    n56[1506] = 20'b01111111011111100101;
    n56[1505] = 20'b01111111011101010100;
    n56[1504] = 20'b01111111011010111110;
    n56[1503] = 20'b01111111011000100010;
    n56[1502] = 20'b01111111010110000010;
    n56[1501] = 20'b01111111010011011101;
    n56[1500] = 20'b01111111010000110011;
    n56[1499] = 20'b01111111001110000101;
    n56[1498] = 20'b01111111001011010001;
    n56[1497] = 20'b01111111001000011000;
    n56[1496] = 20'b01111111000101011011;
    n56[1495] = 20'b01111111000010011000;
    n56[1494] = 20'b01111110111111010001;
    n56[1493] = 20'b01111110111100000101;
    n56[1492] = 20'b01111110111000110011;
    n56[1491] = 20'b01111110110101011101;
    n56[1490] = 20'b01111110110010000010;
    n56[1489] = 20'b01111110101110100011;
    n56[1488] = 20'b01111110101010111110;
    n56[1487] = 20'b01111110100111010100;
    n56[1486] = 20'b01111110100011100110;
    n56[1485] = 20'b01111110011111110011;
    n56[1484] = 20'b01111110011011111010;
    n56[1483] = 20'b01111110010111111101;
    n56[1482] = 20'b01111110010011111011;
    n56[1481] = 20'b01111110001111110101;
    n56[1480] = 20'b01111110001011101001;
    n56[1479] = 20'b01111110000111011000;
    n56[1478] = 20'b01111110000011000011;
    n56[1477] = 20'b01111101111110101001;
    n56[1476] = 20'b01111101111010001001;
    n56[1475] = 20'b01111101110101100101;
    n56[1474] = 20'b01111101110000111101;
    n56[1473] = 20'b01111101101100001111;
    n56[1472] = 20'b01111101100111011100;
    n56[1471] = 20'b01111101100010100101;
    n56[1470] = 20'b01111101011101101001;
    n56[1469] = 20'b01111101011000101000;
    n56[1468] = 20'b01111101010011100010;
    n56[1467] = 20'b01111101001110010111;
    n56[1466] = 20'b01111101001001001000;
    n56[1465] = 20'b01111101000011110011;
    n56[1464] = 20'b01111100111110011010;
    n56[1463] = 20'b01111100111000111100;
    n56[1462] = 20'b01111100110011011001;
    n56[1461] = 20'b01111100101101110001;
    n56[1460] = 20'b01111100101000000101;
    n56[1459] = 20'b01111100100010010100;
    n56[1458] = 20'b01111100011100011110;
    n56[1457] = 20'b01111100010110100011;
    n56[1456] = 20'b01111100010000100011;
    n56[1455] = 20'b01111100001010011111;
    n56[1454] = 20'b01111100000100010110;
    n56[1453] = 20'b01111011111110001000;
    n56[1452] = 20'b01111011110111110101;
    n56[1451] = 20'b01111011110001011101;
    n56[1450] = 20'b01111011101011000001;
    n56[1449] = 20'b01111011100100100000;
    n56[1448] = 20'b01111011011101111010;
    n56[1447] = 20'b01111011010111001111;
    n56[1446] = 20'b01111011010000100000;
    n56[1445] = 20'b01111011001001101100;
    n56[1444] = 20'b01111011000010110011;
    n56[1443] = 20'b01111010111011110101;
    n56[1442] = 20'b01111010110100110011;
    n56[1441] = 20'b01111010101101101100;
    n56[1440] = 20'b01111010100110100000;
    n56[1439] = 20'b01111010011111001111;
    n56[1438] = 20'b01111010010111111010;
    n56[1437] = 20'b01111010010000100000;
    n56[1436] = 20'b01111010001001000001;
    n56[1435] = 20'b01111010000001011110;
    n56[1434] = 20'b01111001111001110110;
    n56[1433] = 20'b01111001110010001001;
    n56[1432] = 20'b01111001101010010111;
    n56[1431] = 20'b01111001100010100001;
    n56[1430] = 20'b01111001011010100110;
    n56[1429] = 20'b01111001010010100111;
    n56[1428] = 20'b01111001001010100011;
    n56[1427] = 20'b01111001000010011010;
    n56[1426] = 20'b01111000111010001100;
    n56[1425] = 20'b01111000110001111010;
    n56[1424] = 20'b01111000101001100011;
    n56[1423] = 20'b01111000100001000111;
    n56[1422] = 20'b01111000011000100111;
    n56[1421] = 20'b01111000010000000010;
    n56[1420] = 20'b01111000000111011001;
    n56[1419] = 20'b01110111111110101011;
    n56[1418] = 20'b01110111110101111000;
    n56[1417] = 20'b01110111101101000001;
    n56[1416] = 20'b01110111100100000101;
    n56[1415] = 20'b01110111011011000100;
    n56[1414] = 20'b01110111010001111111;
    n56[1413] = 20'b01110111001000110101;
    n56[1412] = 20'b01110110111111100111;
    n56[1411] = 20'b01110110110110010100;
    n56[1410] = 20'b01110110101100111100;
    n56[1409] = 20'b01110110100011100000;
    n56[1408] = 20'b01110110011001111111;
    n56[1407] = 20'b01110110010000011010;
    n56[1406] = 20'b01110110000110110000;
    n56[1405] = 20'b01110101111101000010;
    n56[1404] = 20'b01110101110011001111;
    n56[1403] = 20'b01110101101001010111;
    n56[1402] = 20'b01110101011111011011;
    n56[1401] = 20'b01110101010101011011;
    n56[1400] = 20'b01110101001011010110;
    n56[1399] = 20'b01110101000001001100;
    n56[1398] = 20'b01110100110110111110;
    n56[1397] = 20'b01110100101100101100;
    n56[1396] = 20'b01110100100010010101;
    n56[1395] = 20'b01110100010111111001;
    n56[1394] = 20'b01110100001101011001;
    n56[1393] = 20'b01110100000010110100;
    n56[1392] = 20'b01110011111000001011;
    n56[1391] = 20'b01110011101101011110;
    n56[1390] = 20'b01110011100010101100;
    n56[1389] = 20'b01110011010111110101;
    n56[1388] = 20'b01110011001100111011;
    n56[1387] = 20'b01110011000001111011;
    n56[1386] = 20'b01110010110110111000;
    n56[1385] = 20'b01110010101011101111;
    n56[1384] = 20'b01110010100000100011;
    n56[1383] = 20'b01110010010101010010;
    n56[1382] = 20'b01110010001001111100;
    n56[1381] = 20'b01110001111110100011;
    n56[1380] = 20'b01110001110011000100;
    n56[1379] = 20'b01110001100111100010;
    n56[1378] = 20'b01110001011011111011;
    n56[1377] = 20'b01110001010000010000;
    n56[1376] = 20'b01110001000100100000;
    n56[1375] = 20'b01110000111000101100;
    n56[1374] = 20'b01110000101100110011;
    n56[1373] = 20'b01110000100000110111;
    n56[1372] = 20'b01110000010100110110;
    n56[1371] = 20'b01110000001000110000;
    n56[1370] = 20'b01101111111100100110;
    n56[1369] = 20'b01101111110000011000;
    n56[1368] = 20'b01101111100100000110;
    n56[1367] = 20'b01101111010111101111;
    n56[1366] = 20'b01101111001011010100;
    n56[1365] = 20'b01101110111110110101;
    n56[1364] = 20'b01101110110010010010;
    n56[1363] = 20'b01101110100101101010;
    n56[1362] = 20'b01101110011000111110;
    n56[1361] = 20'b01101110001100001101;
    n56[1360] = 20'b01101101111111011001;
    n56[1359] = 20'b01101101110010100000;
    n56[1358] = 20'b01101101100101100011;
    n56[1357] = 20'b01101101011000100010;
    n56[1356] = 20'b01101101001011011100;
    n56[1355] = 20'b01101100111110010010;
    n56[1354] = 20'b01101100110001000101;
    n56[1353] = 20'b01101100100011110010;
    n56[1352] = 20'b01101100010110011100;
    n56[1351] = 20'b01101100001001000010;
    n56[1350] = 20'b01101011111011100011;
    n56[1349] = 20'b01101011101110000000;
    n56[1348] = 20'b01101011100000011001;
    n56[1347] = 20'b01101011010010101110;
    n56[1346] = 20'b01101011000100111111;
    n56[1345] = 20'b01101010110111001100;
    n56[1344] = 20'b01101010101001010100;
    n56[1343] = 20'b01101010011011011001;
    n56[1342] = 20'b01101010001101011001;
    n56[1341] = 20'b01101001111111010101;
    n56[1340] = 20'b01101001110001001101;
    n56[1339] = 20'b01101001100011000001;
    n56[1338] = 20'b01101001010100110001;
    n56[1337] = 20'b01101001000110011101;
    n56[1336] = 20'b01101000111000000101;
    n56[1335] = 20'b01101000101001101001;
    n56[1334] = 20'b01101000011011001001;
    n56[1333] = 20'b01101000001100100101;
    n56[1332] = 20'b01100111111101111100;
    n56[1331] = 20'b01100111101111010000;
    n56[1330] = 20'b01100111100000100000;
    n56[1329] = 20'b01100111010001101100;
    n56[1328] = 20'b01100111000010110011;
    n56[1327] = 20'b01100110110011110111;
    n56[1326] = 20'b01100110100100110111;
    n56[1325] = 20'b01100110010101110011;
    n56[1324] = 20'b01100110000110101011;
    n56[1323] = 20'b01100101110111011111;
    n56[1322] = 20'b01100101101000001111;
    n56[1321] = 20'b01100101011000111011;
    n56[1320] = 20'b01100101001001100011;
    n56[1319] = 20'b01100100111010001000;
    n56[1318] = 20'b01100100101010101000;
    n56[1317] = 20'b01100100011011000101;
    n56[1316] = 20'b01100100001011011110;
    n56[1315] = 20'b01100011111011110010;
    n56[1314] = 20'b01100011101100000011;
    n56[1313] = 20'b01100011011100010001;
    n56[1312] = 20'b01100011001100011010;
    n56[1311] = 20'b01100010111100011111;
    n56[1310] = 20'b01100010101100100001;
    n56[1309] = 20'b01100010011100011111;
    n56[1308] = 20'b01100010001100011001;
    n56[1307] = 20'b01100001111100001111;
    n56[1306] = 20'b01100001101100000010;
    n56[1305] = 20'b01100001011011110001;
    n56[1304] = 20'b01100001001011011100;
    n56[1303] = 20'b01100000111011000011;
    n56[1302] = 20'b01100000101010100110;
    n56[1301] = 20'b01100000011010000110;
    n56[1300] = 20'b01100000001001100010;
    n56[1299] = 20'b01011111111000111010;
    n56[1298] = 20'b01011111101000001111;
    n56[1297] = 20'b01011111010111100000;
    n56[1296] = 20'b01011111000110101101;
    n56[1295] = 20'b01011110110101110111;
    n56[1294] = 20'b01011110100100111101;
    n56[1293] = 20'b01011110010011111111;
    n56[1292] = 20'b01011110000010111110;
    n56[1291] = 20'b01011101110001111001;
    n56[1290] = 20'b01011101100000110001;
    n56[1289] = 20'b01011101001111100100;
    n56[1288] = 20'b01011100111110010101;
    n56[1287] = 20'b01011100101101000001;
    n56[1286] = 20'b01011100011011101010;
    n56[1285] = 20'b01011100001010010000;
    n56[1284] = 20'b01011011111000110010;
    n56[1283] = 20'b01011011100111010000;
    n56[1282] = 20'b01011011010101101011;
    n56[1281] = 20'b01011011000100000011;
    n56[1280] = 20'b01011010110010010111;
    n56[1279] = 20'b01011010100000100111;
    n56[1278] = 20'b01011010001110110100;
    n56[1277] = 20'b01011001111100111101;
    n56[1276] = 20'b01011001101011000011;
    n56[1275] = 20'b01011001011001000110;
    n56[1274] = 20'b01011001000111000101;
    n56[1273] = 20'b01011000110101000000;
    n56[1272] = 20'b01011000100010111000;
    n56[1271] = 20'b01011000010000101101;
    n56[1270] = 20'b01010111111110011110;
    n56[1269] = 20'b01010111101100001100;
    n56[1268] = 20'b01010111011001110111;
    n56[1267] = 20'b01010111000111011110;
    n56[1266] = 20'b01010110110101000010;
    n56[1265] = 20'b01010110100010100011;
    n56[1264] = 20'b01010110010000000000;
    n56[1263] = 20'b01010101111101011010;
    n56[1262] = 20'b01010101101010110000;
    n56[1261] = 20'b01010101011000000011;
    n56[1260] = 20'b01010101000101010011;
    n56[1259] = 20'b01010100110010100000;
    n56[1258] = 20'b01010100011111101001;
    n56[1257] = 20'b01010100001100101111;
    n56[1256] = 20'b01010011111001110010;
    n56[1255] = 20'b01010011100110110010;
    n56[1254] = 20'b01010011010011101110;
    n56[1253] = 20'b01010011000000101000;
    n56[1252] = 20'b01010010101101011110;
    n56[1251] = 20'b01010010011010010001;
    n56[1250] = 20'b01010010000111000000;
    n56[1249] = 20'b01010001110011101101;
    n56[1248] = 20'b01010001100000010110;
    n56[1247] = 20'b01010001001100111100;
    n56[1246] = 20'b01010000111001011111;
    n56[1245] = 20'b01010000100101111111;
    n56[1244] = 20'b01010000010010011100;
    n56[1243] = 20'b01001111111110110110;
    n56[1242] = 20'b01001111101011001100;
    n56[1241] = 20'b01001111010111100000;
    n56[1240] = 20'b01001111000011110000;
    n56[1239] = 20'b01001110101111111110;
    n56[1238] = 20'b01001110011100001000;
    n56[1237] = 20'b01001110001000010000;
    n56[1236] = 20'b01001101110100010100;
    n56[1235] = 20'b01001101100000010110;
    n56[1234] = 20'b01001101001100010100;
    n56[1233] = 20'b01001100111000001111;
    n56[1232] = 20'b01001100100100001000;
    n56[1231] = 20'b01001100001111111101;
    n56[1230] = 20'b01001011111011110000;
    n56[1229] = 20'b01001011100111100000;
    n56[1228] = 20'b01001011010011001100;
    n56[1227] = 20'b01001010111110110110;
    n56[1226] = 20'b01001010101010011101;
    n56[1225] = 20'b01001010010110000001;
    n56[1224] = 20'b01001010000001100010;
    n56[1223] = 20'b01001001101101000001;
    n56[1222] = 20'b01001001011000011100;
    n56[1221] = 20'b01001001000011110101;
    n56[1220] = 20'b01001000101111001011;
    n56[1219] = 20'b01001000011010011110;
    n56[1218] = 20'b01001000000101101110;
    n56[1217] = 20'b01000111110000111100;
    n56[1216] = 20'b01000111011100000110;
    n56[1215] = 20'b01000111000111001110;
    n56[1214] = 20'b01000110110010010011;
    n56[1213] = 20'b01000110011101010110;
    n56[1212] = 20'b01000110001000010110;
    n56[1211] = 20'b01000101110011010011;
    n56[1210] = 20'b01000101011110001101;
    n56[1209] = 20'b01000101001001000101;
    n56[1208] = 20'b01000100110011111010;
    n56[1207] = 20'b01000100011110101100;
    n56[1206] = 20'b01000100001001011100;
    n56[1205] = 20'b01000011110100001001;
    n56[1204] = 20'b01000011011110110100;
    n56[1203] = 20'b01000011001001011100;
    n56[1202] = 20'b01000010110100000001;
    n56[1201] = 20'b01000010011110100100;
    n56[1200] = 20'b01000010001001000100;
    n56[1199] = 20'b01000001110011100001;
    n56[1198] = 20'b01000001011101111100;
    n56[1197] = 20'b01000001001000010101;
    n56[1196] = 20'b01000000110010101011;
    n56[1195] = 20'b01000000011100111111;
    n56[1194] = 20'b01000000000111010000;
    n56[1193] = 20'b00111111110001011110;
    n56[1192] = 20'b00111111011011101010;
    n56[1191] = 20'b00111111000101110100;
    n56[1190] = 20'b00111110101111111011;
    n56[1189] = 20'b00111110011010000000;
    n56[1188] = 20'b00111110000100000011;
    n56[1187] = 20'b00111101101110000011;
    n56[1186] = 20'b00111101011000000000;
    n56[1185] = 20'b00111101000001111100;
    n56[1184] = 20'b00111100101011110101;
    n56[1183] = 20'b00111100010101101011;
    n56[1182] = 20'b00111011111111011111;
    n56[1181] = 20'b00111011101001010001;
    n56[1180] = 20'b00111011010011000001;
    n56[1179] = 20'b00111010111100101110;
    n56[1178] = 20'b00111010100110011010;
    n56[1177] = 20'b00111010010000000010;
    n56[1176] = 20'b00111001111001101001;
    n56[1175] = 20'b00111001100011001101;
    n56[1174] = 20'b00111001001100110000;
    n56[1173] = 20'b00111000110110001111;
    n56[1172] = 20'b00111000011111101101;
    n56[1171] = 20'b00111000001001001001;
    n56[1170] = 20'b00110111110010100010;
    n56[1169] = 20'b00110111011011111001;
    n56[1168] = 20'b00110111000101001111;
    n56[1167] = 20'b00110110101110100010;
    n56[1166] = 20'b00110110010111110010;
    n56[1165] = 20'b00110110000001000001;
    n56[1164] = 20'b00110101101010001110;
    n56[1163] = 20'b00110101010011011001;
    n56[1162] = 20'b00110100111100100001;
    n56[1161] = 20'b00110100100101101000;
    n56[1160] = 20'b00110100001110101100;
    n56[1159] = 20'b00110011110111101111;
    n56[1158] = 20'b00110011100000101111;
    n56[1157] = 20'b00110011001001101110;
    n56[1156] = 20'b00110010110010101010;
    n56[1155] = 20'b00110010011011100101;
    n56[1154] = 20'b00110010000100011110;
    n56[1153] = 20'b00110001101101010100;
    n56[1152] = 20'b00110001010110001001;
    n56[1151] = 20'b00110000111110111100;
    n56[1150] = 20'b00110000100111101101;
    n56[1149] = 20'b00110000010000011100;
    n56[1148] = 20'b00101111111001001001;
    n56[1147] = 20'b00101111100001110101;
    n56[1146] = 20'b00101111001010011110;
    n56[1145] = 20'b00101110110011000110;
    n56[1144] = 20'b00101110011011101100;
    n56[1143] = 20'b00101110000100010000;
    n56[1142] = 20'b00101101101100110011;
    n56[1141] = 20'b00101101010101010011;
    n56[1140] = 20'b00101100111101110010;
    n56[1139] = 20'b00101100100110001111;
    n56[1138] = 20'b00101100001110101011;
    n56[1137] = 20'b00101011110111000101;
    n56[1136] = 20'b00101011011111011101;
    n56[1135] = 20'b00101011000111110011;
    n56[1134] = 20'b00101010110000001000;
    n56[1133] = 20'b00101010011000011011;
    n56[1132] = 20'b00101010000000101100;
    n56[1131] = 20'b00101001101000111100;
    n56[1130] = 20'b00101001010001001010;
    n56[1129] = 20'b00101000111001010111;
    n56[1128] = 20'b00101000100001100010;
    n56[1127] = 20'b00101000001001101011;
    n56[1126] = 20'b00100111110001110011;
    n56[1125] = 20'b00100111011001111010;
    n56[1124] = 20'b00100111000001111110;
    n56[1123] = 20'b00100110101010000010;
    n56[1122] = 20'b00100110010010000100;
    n56[1121] = 20'b00100101111010000100;
    n56[1120] = 20'b00100101100010000011;
    n56[1119] = 20'b00100101001010000000;
    n56[1118] = 20'b00100100110001111101;
    n56[1117] = 20'b00100100011001110111;
    n56[1116] = 20'b00100100000001110000;
    n56[1115] = 20'b00100011101001101000;
    n56[1114] = 20'b00100011010001011111;
    n56[1113] = 20'b00100010111001010100;
    n56[1112] = 20'b00100010100001001000;
    n56[1111] = 20'b00100010001000111010;
    n56[1110] = 20'b00100001110000101011;
    n56[1109] = 20'b00100001011000011011;
    n56[1108] = 20'b00100001000000001001;
    n56[1107] = 20'b00100000100111110111;
    n56[1106] = 20'b00100000001111100011;
    n56[1105] = 20'b00011111110111001110;
    n56[1104] = 20'b00011111011110110111;
    n56[1103] = 20'b00011111000110011111;
    n56[1102] = 20'b00011110101110000110;
    n56[1101] = 20'b00011110010101101100;
    n56[1100] = 20'b00011101111101010001;
    n56[1099] = 20'b00011101100100110101;
    n56[1098] = 20'b00011101001100010111;
    n56[1097] = 20'b00011100110011111001;
    n56[1096] = 20'b00011100011011011001;
    n56[1095] = 20'b00011100000010111000;
    n56[1094] = 20'b00011011101010010110;
    n56[1093] = 20'b00011011010001110011;
    n56[1092] = 20'b00011010111001001111;
    n56[1091] = 20'b00011010100000101010;
    n56[1090] = 20'b00011010001000000100;
    n56[1089] = 20'b00011001101111011101;
    n56[1088] = 20'b00011001010110110100;
    n56[1087] = 20'b00011000111110001011;
    n56[1086] = 20'b00011000100101100001;
    n56[1085] = 20'b00011000001100110110;
    n56[1084] = 20'b00010111110100001010;
    n56[1083] = 20'b00010111011011011101;
    n56[1082] = 20'b00010111000010110000;
    n56[1081] = 20'b00010110101010000001;
    n56[1080] = 20'b00010110010001010001;
    n56[1079] = 20'b00010101111000100001;
    n56[1078] = 20'b00010101011111110000;
    n56[1077] = 20'b00010101000110111110;
    n56[1076] = 20'b00010100101110001011;
    n56[1075] = 20'b00010100010101010111;
    n56[1074] = 20'b00010011111100100011;
    n56[1073] = 20'b00010011100011101110;
    n56[1072] = 20'b00010011001010111000;
    n56[1071] = 20'b00010010110010000001;
    n56[1070] = 20'b00010010011001001001;
    n56[1069] = 20'b00010010000000010001;
    n56[1068] = 20'b00010001100111011000;
    n56[1067] = 20'b00010001001110011111;
    n56[1066] = 20'b00010000110101100101;
    n56[1065] = 20'b00010000011100101010;
    n56[1064] = 20'b00010000000011101110;
    n56[1063] = 20'b00001111101010110010;
    n56[1062] = 20'b00001111010001110110;
    n56[1061] = 20'b00001110111000111000;
    n56[1060] = 20'b00001110011111111010;
    n56[1059] = 20'b00001110000110111100;
    n56[1058] = 20'b00001101101101111101;
    n56[1057] = 20'b00001101010100111110;
    n56[1056] = 20'b00001100111011111110;
    n56[1055] = 20'b00001100100010111101;
    n56[1054] = 20'b00001100001001111100;
    n56[1053] = 20'b00001011110000111011;
    n56[1052] = 20'b00001011010111111001;
    n56[1051] = 20'b00001010111110110110;
    n56[1050] = 20'b00001010100101110100;
    n56[1049] = 20'b00001010001100110000;
    n56[1048] = 20'b00001001110011101101;
    n56[1047] = 20'b00001001011010101001;
    n56[1046] = 20'b00001001000001100101;
    n56[1045] = 20'b00001000101000100000;
    n56[1044] = 20'b00001000001111011011;
    n56[1043] = 20'b00000111110110010110;
    n56[1042] = 20'b00000111011101010000;
    n56[1041] = 20'b00000111000100001010;
    n56[1040] = 20'b00000110101011000100;
    n56[1039] = 20'b00000110010001111110;
    n56[1038] = 20'b00000101111000110111;
    n56[1037] = 20'b00000101011111110000;
    n56[1036] = 20'b00000101000110101001;
    n56[1035] = 20'b00000100101101100010;
    n56[1034] = 20'b00000100010100011010;
    n56[1033] = 20'b00000011111011010010;
    n56[1032] = 20'b00000011100010001011;
    n56[1031] = 20'b00000011001001000011;
    n56[1030] = 20'b00000010101111111011;
    n56[1029] = 20'b00000010010110110010;
    n56[1028] = 20'b00000001111101101010;
    n56[1027] = 20'b00000001100100100010;
    n56[1026] = 20'b00000001001011011001;
    n56[1025] = 20'b00000000110010010001;
    n56[1024] = 20'b00000000011001001000;
    n56[1023] = 20'b00000000000000000000;
    n56[1022] = 20'b11111111100110111000;
    n56[1021] = 20'b11111111001101101111;
    n56[1020] = 20'b11111110110100100111;
    n56[1019] = 20'b11111110011011011110;
    n56[1018] = 20'b11111110000010010110;
    n56[1017] = 20'b11111101101001001110;
    n56[1016] = 20'b11111101010000000101;
    n56[1015] = 20'b11111100110110111101;
    n56[1014] = 20'b11111100011101110101;
    n56[1013] = 20'b11111100000100101110;
    n56[1012] = 20'b11111011101011100110;
    n56[1011] = 20'b11111011010010011110;
    n56[1010] = 20'b11111010111001010111;
    n56[1009] = 20'b11111010100000010000;
    n56[1008] = 20'b11111010000111001001;
    n56[1007] = 20'b11111001101110000010;
    n56[1006] = 20'b11111001010100111100;
    n56[1005] = 20'b11111000111011110110;
    n56[1004] = 20'b11111000100010110000;
    n56[1003] = 20'b11111000001001101010;
    n56[1002] = 20'b11110111110000100101;
    n56[1001] = 20'b11110111010111100000;
    n56[1000] = 20'b11110110111110011011;
    n56[999] = 20'b11110110100101010111;
    n56[998] = 20'b11110110001100010011;
    n56[997] = 20'b11110101110011010000;
    n56[996] = 20'b11110101011010001100;
    n56[995] = 20'b11110101000001001010;
    n56[994] = 20'b11110100101000000111;
    n56[993] = 20'b11110100001111000101;
    n56[992] = 20'b11110011110110000100;
    n56[991] = 20'b11110011011101000011;
    n56[990] = 20'b11110011000100000010;
    n56[989] = 20'b11110010101011000010;
    n56[988] = 20'b11110010010010000011;
    n56[987] = 20'b11110001111001000100;
    n56[986] = 20'b11110001100000000110;
    n56[985] = 20'b11110001000111001000;
    n56[984] = 20'b11110000101110001010;
    n56[983] = 20'b11110000010101001110;
    n56[982] = 20'b11101111111100010010;
    n56[981] = 20'b11101111100011010110;
    n56[980] = 20'b11101111001010011011;
    n56[979] = 20'b11101110110001100001;
    n56[978] = 20'b11101110011000101000;
    n56[977] = 20'b11101101111111101111;
    n56[976] = 20'b11101101100110110111;
    n56[975] = 20'b11101101001101111111;
    n56[974] = 20'b11101100110101001000;
    n56[973] = 20'b11101100011100010010;
    n56[972] = 20'b11101100000011011101;
    n56[971] = 20'b11101011101010101001;
    n56[970] = 20'b11101011010001110101;
    n56[969] = 20'b11101010111001000010;
    n56[968] = 20'b11101010100000010000;
    n56[967] = 20'b11101010000111011111;
    n56[966] = 20'b11101001101110101111;
    n56[965] = 20'b11101001010101111111;
    n56[964] = 20'b11101000111101010000;
    n56[963] = 20'b11101000100100100011;
    n56[962] = 20'b11101000001011110110;
    n56[961] = 20'b11100111110011001010;
    n56[960] = 20'b11100111011010011111;
    n56[959] = 20'b11100111000001110101;
    n56[958] = 20'b11100110101001001100;
    n56[957] = 20'b11100110010000100011;
    n56[956] = 20'b11100101110111111100;
    n56[955] = 20'b11100101011111010110;
    n56[954] = 20'b11100101000110110001;
    n56[953] = 20'b11100100101110001101;
    n56[952] = 20'b11100100010101101010;
    n56[951] = 20'b11100011111101001000;
    n56[950] = 20'b11100011100100100111;
    n56[949] = 20'b11100011001100000111;
    n56[948] = 20'b11100010110011101001;
    n56[947] = 20'b11100010011011001011;
    n56[946] = 20'b11100010000010101111;
    n56[945] = 20'b11100001101010010100;
    n56[944] = 20'b11100001010001111010;
    n56[943] = 20'b11100000111001100001;
    n56[942] = 20'b11100000100001001001;
    n56[941] = 20'b11100000001000110010;
    n56[940] = 20'b11011111110000011101;
    n56[939] = 20'b11011111011000001001;
    n56[938] = 20'b11011110111111110111;
    n56[937] = 20'b11011110100111100101;
    n56[936] = 20'b11011110001111010101;
    n56[935] = 20'b11011101110111000110;
    n56[934] = 20'b11011101011110111000;
    n56[933] = 20'b11011101000110101100;
    n56[932] = 20'b11011100101110100001;
    n56[931] = 20'b11011100010110011000;
    n56[930] = 20'b11011011111110010000;
    n56[929] = 20'b11011011100110001001;
    n56[928] = 20'b11011011001110000011;
    n56[927] = 20'b11011010110110000000;
    n56[926] = 20'b11011010011101111101;
    n56[925] = 20'b11011010000101111100;
    n56[924] = 20'b11011001101101111100;
    n56[923] = 20'b11011001010101111110;
    n56[922] = 20'b11011000111110000010;
    n56[921] = 20'b11011000100110000110;
    n56[920] = 20'b11011000001110001101;
    n56[919] = 20'b11010111110110010101;
    n56[918] = 20'b11010111011110011110;
    n56[917] = 20'b11010111000110101001;
    n56[916] = 20'b11010110101110110110;
    n56[915] = 20'b11010110010111000100;
    n56[914] = 20'b11010101111111010100;
    n56[913] = 20'b11010101100111100101;
    n56[912] = 20'b11010101001111111000;
    n56[911] = 20'b11010100111000001101;
    n56[910] = 20'b11010100100000100011;
    n56[909] = 20'b11010100001000111011;
    n56[908] = 20'b11010011110001010101;
    n56[907] = 20'b11010011011001110001;
    n56[906] = 20'b11010011000010001110;
    n56[905] = 20'b11010010101010101101;
    n56[904] = 20'b11010010010011001101;
    n56[903] = 20'b11010001111011110000;
    n56[902] = 20'b11010001100100010100;
    n56[901] = 20'b11010001001100111010;
    n56[900] = 20'b11010000110101100010;
    n56[899] = 20'b11010000011110001011;
    n56[898] = 20'b11010000000110110111;
    n56[897] = 20'b11001111101111100100;
    n56[896] = 20'b11001111011000010011;
    n56[895] = 20'b11001111000001000100;
    n56[894] = 20'b11001110101001110111;
    n56[893] = 20'b11001110010010101100;
    n56[892] = 20'b11001101111011100010;
    n56[891] = 20'b11001101100100011011;
    n56[890] = 20'b11001101001101010110;
    n56[889] = 20'b11001100110110010010;
    n56[888] = 20'b11001100011111010001;
    n56[887] = 20'b11001100001000010001;
    n56[886] = 20'b11001011110001010100;
    n56[885] = 20'b11001011011010011000;
    n56[884] = 20'b11001011000011011111;
    n56[883] = 20'b11001010101100100111;
    n56[882] = 20'b11001010010101110010;
    n56[881] = 20'b11001001111110111111;
    n56[880] = 20'b11001001101000001110;
    n56[879] = 20'b11001001010001011110;
    n56[878] = 20'b11001000111010110001;
    n56[877] = 20'b11001000100100000111;
    n56[876] = 20'b11001000001101011110;
    n56[875] = 20'b11000111110110110111;
    n56[874] = 20'b11000111100000010011;
    n56[873] = 20'b11000111001001110001;
    n56[872] = 20'b11000110110011010000;
    n56[871] = 20'b11000110011100110011;
    n56[870] = 20'b11000110000110010111;
    n56[869] = 20'b11000101101111111110;
    n56[868] = 20'b11000101011001100110;
    n56[867] = 20'b11000101000011010010;
    n56[866] = 20'b11000100101100111111;
    n56[865] = 20'b11000100010110101111;
    n56[864] = 20'b11000100000000100001;
    n56[863] = 20'b11000011101010010101;
    n56[862] = 20'b11000011010100001011;
    n56[861] = 20'b11000010111110000100;
    n56[860] = 20'b11000010101000000000;
    n56[859] = 20'b11000010010001111101;
    n56[858] = 20'b11000001111011111101;
    n56[857] = 20'b11000001100110000000;
    n56[856] = 20'b11000001010000000101;
    n56[855] = 20'b11000000111010001100;
    n56[854] = 20'b11000000100100010110;
    n56[853] = 20'b11000000001110100010;
    n56[852] = 20'b10111111111000110000;
    n56[851] = 20'b10111111100011000001;
    n56[850] = 20'b10111111001101010101;
    n56[849] = 20'b10111110110111101011;
    n56[848] = 20'b10111110100010000100;
    n56[847] = 20'b10111110001100011111;
    n56[846] = 20'b10111101110110111100;
    n56[845] = 20'b10111101100001011100;
    n56[844] = 20'b10111101001011111111;
    n56[843] = 20'b10111100110110100100;
    n56[842] = 20'b10111100100001001100;
    n56[841] = 20'b10111100001011110111;
    n56[840] = 20'b10111011110110100100;
    n56[839] = 20'b10111011100001010100;
    n56[838] = 20'b10111011001100000110;
    n56[837] = 20'b10111010110110111011;
    n56[836] = 20'b10111010100001110011;
    n56[835] = 20'b10111010001100101101;
    n56[834] = 20'b10111001110111101010;
    n56[833] = 20'b10111001100010101010;
    n56[832] = 20'b10111001001101101101;
    n56[831] = 20'b10111000111000110010;
    n56[830] = 20'b10111000100011111010;
    n56[829] = 20'b10111000001111000100;
    n56[828] = 20'b10110111111010010010;
    n56[827] = 20'b10110111100101100010;
    n56[826] = 20'b10110111010000110101;
    n56[825] = 20'b10110110111100001011;
    n56[824] = 20'b10110110100111100100;
    n56[823] = 20'b10110110010010111111;
    n56[822] = 20'b10110101111110011110;
    n56[821] = 20'b10110101101001111111;
    n56[820] = 20'b10110101010101100011;
    n56[819] = 20'b10110101000001001010;
    n56[818] = 20'b10110100101100110100;
    n56[817] = 20'b10110100011000100000;
    n56[816] = 20'b10110100000100010000;
    n56[815] = 20'b10110011110000000011;
    n56[814] = 20'b10110011011011111000;
    n56[813] = 20'b10110011000111110001;
    n56[812] = 20'b10110010110011101100;
    n56[811] = 20'b10110010011111101010;
    n56[810] = 20'b10110010001011101100;
    n56[809] = 20'b10110001110111110000;
    n56[808] = 20'b10110001100011111000;
    n56[807] = 20'b10110001010000000010;
    n56[806] = 20'b10110000111100010000;
    n56[805] = 20'b10110000101000100000;
    n56[804] = 20'b10110000010100110100;
    n56[803] = 20'b10110000000001001010;
    n56[802] = 20'b10101111101101100100;
    n56[801] = 20'b10101111011010000001;
    n56[800] = 20'b10101111000110100001;
    n56[799] = 20'b10101110110011000100;
    n56[798] = 20'b10101110011111101010;
    n56[797] = 20'b10101110001100010011;
    n56[796] = 20'b10101101111001000000;
    n56[795] = 20'b10101101100101101111;
    n56[794] = 20'b10101101010010100010;
    n56[793] = 20'b10101100111111011000;
    n56[792] = 20'b10101100101100010010;
    n56[791] = 20'b10101100011001001110;
    n56[790] = 20'b10101100000110001110;
    n56[789] = 20'b10101011110011010001;
    n56[788] = 20'b10101011100000010111;
    n56[787] = 20'b10101011001101100000;
    n56[786] = 20'b10101010111010101101;
    n56[785] = 20'b10101010100111111101;
    n56[784] = 20'b10101010010101010000;
    n56[783] = 20'b10101010000010100110;
    n56[782] = 20'b10101001110000000000;
    n56[781] = 20'b10101001011101011101;
    n56[780] = 20'b10101001001010111110;
    n56[779] = 20'b10101000111000100010;
    n56[778] = 20'b10101000100110001001;
    n56[777] = 20'b10101000010011110100;
    n56[776] = 20'b10101000000001100010;
    n56[775] = 20'b10100111101111010011;
    n56[774] = 20'b10100111011101001000;
    n56[773] = 20'b10100111001011000000;
    n56[772] = 20'b10100110111000111011;
    n56[771] = 20'b10100110100110111010;
    n56[770] = 20'b10100110010100111101;
    n56[769] = 20'b10100110000011000011;
    n56[768] = 20'b10100101110001001100;
    n56[767] = 20'b10100101011111011001;
    n56[766] = 20'b10100101001101101001;
    n56[765] = 20'b10100100111011111101;
    n56[764] = 20'b10100100101010010101;
    n56[763] = 20'b10100100011000110000;
    n56[762] = 20'b10100100000111001110;
    n56[761] = 20'b10100011110101110000;
    n56[760] = 20'b10100011100100010110;
    n56[759] = 20'b10100011010010111111;
    n56[758] = 20'b10100011000001101011;
    n56[757] = 20'b10100010110000011100;
    n56[756] = 20'b10100010011111001111;
    n56[755] = 20'b10100010001110000111;
    n56[754] = 20'b10100001111101000010;
    n56[753] = 20'b10100001101100000001;
    n56[752] = 20'b10100001011011000011;
    n56[751] = 20'b10100001001010001001;
    n56[750] = 20'b10100000111001010011;
    n56[749] = 20'b10100000101000100000;
    n56[748] = 20'b10100000010111110001;
    n56[747] = 20'b10100000000111000110;
    n56[746] = 20'b10011111110110011110;
    n56[745] = 20'b10011111100101111010;
    n56[744] = 20'b10011111010101011010;
    n56[743] = 20'b10011111000100111101;
    n56[742] = 20'b10011110110100100100;
    n56[741] = 20'b10011110100100001111;
    n56[740] = 20'b10011110010011111110;
    n56[739] = 20'b10011110000011110001;
    n56[738] = 20'b10011101110011100111;
    n56[737] = 20'b10011101100011100001;
    n56[736] = 20'b10011101010011011111;
    n56[735] = 20'b10011101000011100001;
    n56[734] = 20'b10011100110011100110;
    n56[733] = 20'b10011100100011101111;
    n56[732] = 20'b10011100010011111101;
    n56[731] = 20'b10011100000100001110;
    n56[730] = 20'b10011011110100100010;
    n56[729] = 20'b10011011100100111011;
    n56[728] = 20'b10011011010101011000;
    n56[727] = 20'b10011011000101111000;
    n56[726] = 20'b10011010110110011101;
    n56[725] = 20'b10011010100111000101;
    n56[724] = 20'b10011010010111110001;
    n56[723] = 20'b10011010001000100001;
    n56[722] = 20'b10011001111001010101;
    n56[721] = 20'b10011001101010001101;
    n56[720] = 20'b10011001011011001001;
    n56[719] = 20'b10011001001100001001;
    n56[718] = 20'b10011000111101001101;
    n56[717] = 20'b10011000101110010100;
    n56[716] = 20'b10011000011111100000;
    n56[715] = 20'b10011000010000110000;
    n56[714] = 20'b10011000000010000100;
    n56[713] = 20'b10010111110011011011;
    n56[712] = 20'b10010111100100110111;
    n56[711] = 20'b10010111010110010111;
    n56[710] = 20'b10010111000111111011;
    n56[709] = 20'b10010110111001100011;
    n56[708] = 20'b10010110101011001111;
    n56[707] = 20'b10010110011100111111;
    n56[706] = 20'b10010110001110110011;
    n56[705] = 20'b10010110000000101011;
    n56[704] = 20'b10010101110010100111;
    n56[703] = 20'b10010101100100100111;
    n56[702] = 20'b10010101010110101100;
    n56[701] = 20'b10010101001000110100;
    n56[700] = 20'b10010100111011000001;
    n56[699] = 20'b10010100101101010010;
    n56[698] = 20'b10010100011111100111;
    n56[697] = 20'b10010100010010000000;
    n56[696] = 20'b10010100000100011101;
    n56[695] = 20'b10010011110110111110;
    n56[694] = 20'b10010011101001100100;
    n56[693] = 20'b10010011011100001110;
    n56[692] = 20'b10010011001110111011;
    n56[691] = 20'b10010011000001101110;
    n56[690] = 20'b10010010110100100100;
    n56[689] = 20'b10010010100111011110;
    n56[688] = 20'b10010010011010011101;
    n56[687] = 20'b10010010001101100000;
    n56[686] = 20'b10010010000000100111;
    n56[685] = 20'b10010001110011110011;
    n56[684] = 20'b10010001100111000010;
    n56[683] = 20'b10010001011010010110;
    n56[682] = 20'b10010001001101101110;
    n56[681] = 20'b10010001000001001011;
    n56[680] = 20'b10010000110100101100;
    n56[679] = 20'b10010000101000010001;
    n56[678] = 20'b10010000011011111010;
    n56[677] = 20'b10010000001111101000;
    n56[676] = 20'b10010000000011011010;
    n56[675] = 20'b10001111110111010000;
    n56[674] = 20'b10001111101011001010;
    n56[673] = 20'b10001111011111001001;
    n56[672] = 20'b10001111010011001101;
    n56[671] = 20'b10001111000111010100;
    n56[670] = 20'b10001110111011100000;
    n56[669] = 20'b10001110101111110000;
    n56[668] = 20'b10001110100100000101;
    n56[667] = 20'b10001110011000011110;
    n56[666] = 20'b10001110001100111100;
    n56[665] = 20'b10001110000001011101;
    n56[664] = 20'b10001101110110000100;
    n56[663] = 20'b10001101101010101110;
    n56[662] = 20'b10001101011111011101;
    n56[661] = 20'b10001101010100010001;
    n56[660] = 20'b10001101001001001000;
    n56[659] = 20'b10001100111110000101;
    n56[658] = 20'b10001100110011000101;
    n56[657] = 20'b10001100101000001011;
    n56[656] = 20'b10001100011101010100;
    n56[655] = 20'b10001100010010100010;
    n56[654] = 20'b10001100000111110101;
    n56[653] = 20'b10001011111101001100;
    n56[652] = 20'b10001011110010100111;
    n56[651] = 20'b10001011101000000111;
    n56[650] = 20'b10001011011101101011;
    n56[649] = 20'b10001011010011010100;
    n56[648] = 20'b10001011001001000010;
    n56[647] = 20'b10001010111110110100;
    n56[646] = 20'b10001010110100101010;
    n56[645] = 20'b10001010101010100101;
    n56[644] = 20'b10001010100000100101;
    n56[643] = 20'b10001010010110101001;
    n56[642] = 20'b10001010001100110001;
    n56[641] = 20'b10001010000010111110;
    n56[640] = 20'b10001001111001010000;
    n56[639] = 20'b10001001101111100110;
    n56[638] = 20'b10001001100110000001;
    n56[637] = 20'b10001001011100100000;
    n56[636] = 20'b10001001010011000100;
    n56[635] = 20'b10001001001001101100;
    n56[634] = 20'b10001001000000011001;
    n56[633] = 20'b10001000110111001011;
    n56[632] = 20'b10001000101110000001;
    n56[631] = 20'b10001000100100111100;
    n56[630] = 20'b10001000011011111011;
    n56[629] = 20'b10001000010010111111;
    n56[628] = 20'b10001000001010001000;
    n56[627] = 20'b10001000000001010101;
    n56[626] = 20'b10000111111000100111;
    n56[625] = 20'b10000111101111111110;
    n56[624] = 20'b10000111100111011001;
    n56[623] = 20'b10000111011110111001;
    n56[622] = 20'b10000111010110011101;
    n56[621] = 20'b10000111001110000110;
    n56[620] = 20'b10000111000101110100;
    n56[619] = 20'b10000110111101100110;
    n56[618] = 20'b10000110110101011101;
    n56[617] = 20'b10000110101101011001;
    n56[616] = 20'b10000110100101011010;
    n56[615] = 20'b10000110011101011111;
    n56[614] = 20'b10000110010101101001;
    n56[613] = 20'b10000110001101110111;
    n56[612] = 20'b10000110000110001010;
    n56[611] = 20'b10000101111110100010;
    n56[610] = 20'b10000101110110111111;
    n56[609] = 20'b10000101101111100000;
    n56[608] = 20'b10000101101000000110;
    n56[607] = 20'b10000101100000110001;
    n56[606] = 20'b10000101011001100000;
    n56[605] = 20'b10000101010010010100;
    n56[604] = 20'b10000101001011001101;
    n56[603] = 20'b10000101000100001011;
    n56[602] = 20'b10000100111101001101;
    n56[601] = 20'b10000100110110010100;
    n56[600] = 20'b10000100101111100000;
    n56[599] = 20'b10000100101000110001;
    n56[598] = 20'b10000100100010000110;
    n56[597] = 20'b10000100011011100000;
    n56[596] = 20'b10000100010100111111;
    n56[595] = 20'b10000100001110100011;
    n56[594] = 20'b10000100001000001011;
    n56[593] = 20'b10000100000001111000;
    n56[592] = 20'b10000011111011101010;
    n56[591] = 20'b10000011110101100001;
    n56[590] = 20'b10000011101111011101;
    n56[589] = 20'b10000011101001011101;
    n56[588] = 20'b10000011100011100010;
    n56[587] = 20'b10000011011101101100;
    n56[586] = 20'b10000011010111111011;
    n56[585] = 20'b10000011010010001111;
    n56[584] = 20'b10000011001100100111;
    n56[583] = 20'b10000011000111000100;
    n56[582] = 20'b10000011000001100110;
    n56[581] = 20'b10000010111100001101;
    n56[580] = 20'b10000010110110111000;
    n56[579] = 20'b10000010110001101001;
    n56[578] = 20'b10000010101100011110;
    n56[577] = 20'b10000010100111011000;
    n56[576] = 20'b10000010100010010111;
    n56[575] = 20'b10000010011101011011;
    n56[574] = 20'b10000010011000100100;
    n56[573] = 20'b10000010010011110001;
    n56[572] = 20'b10000010001111000011;
    n56[571] = 20'b10000010001010011011;
    n56[570] = 20'b10000010000101110111;
    n56[569] = 20'b10000010000001010111;
    n56[568] = 20'b10000001111100111101;
    n56[567] = 20'b10000001111000101000;
    n56[566] = 20'b10000001110100010111;
    n56[565] = 20'b10000001110000001011;
    n56[564] = 20'b10000001101100000101;
    n56[563] = 20'b10000001101000000011;
    n56[562] = 20'b10000001100100000110;
    n56[561] = 20'b10000001100000001101;
    n56[560] = 20'b10000001011100011010;
    n56[559] = 20'b10000001011000101100;
    n56[558] = 20'b10000001010101000010;
    n56[557] = 20'b10000001010001011101;
    n56[556] = 20'b10000001001101111110;
    n56[555] = 20'b10000001001010100011;
    n56[554] = 20'b10000001000111001101;
    n56[553] = 20'b10000001000011111011;
    n56[552] = 20'b10000001000000101111;
    n56[551] = 20'b10000000111101101000;
    n56[550] = 20'b10000000111010100101;
    n56[549] = 20'b10000000110111101000;
    n56[548] = 20'b10000000110100101111;
    n56[547] = 20'b10000000110001111011;
    n56[546] = 20'b10000000101111001101;
    n56[545] = 20'b10000000101100100011;
    n56[544] = 20'b10000000101001111110;
    n56[543] = 20'b10000000100111011110;
    n56[542] = 20'b10000000100101000010;
    n56[541] = 20'b10000000100010101100;
    n56[540] = 20'b10000000100000011011;
    n56[539] = 20'b10000000011110001110;
    n56[538] = 20'b10000000011100000111;
    n56[537] = 20'b10000000011010000100;
    n56[536] = 20'b10000000011000000110;
    n56[535] = 20'b10000000010110001110;
    n56[534] = 20'b10000000010100011010;
    n56[533] = 20'b10000000010010101011;
    n56[532] = 20'b10000000010001000001;
    n56[531] = 20'b10000000001111011100;
    n56[530] = 20'b10000000001101111011;
    n56[529] = 20'b10000000001100100000;
    n56[528] = 20'b10000000001011001010;
    n56[527] = 20'b10000000001001111001;
    n56[526] = 20'b10000000001000101100;
    n56[525] = 20'b10000000000111100101;
    n56[524] = 20'b10000000000110100010;
    n56[523] = 20'b10000000000101100100;
    n56[522] = 20'b10000000000100101100;
    n56[521] = 20'b10000000000011111000;
    n56[520] = 20'b10000000000011001001;
    n56[519] = 20'b10000000000010011111;
    n56[518] = 20'b10000000000001111010;
    n56[517] = 20'b10000000000001011010;
    n56[516] = 20'b10000000000000111111;
    n56[515] = 20'b10000000000000101000;
    n56[514] = 20'b10000000000000010111;
    n56[513] = 20'b10000000000000001011;
    n56[512] = 20'b10000000000000000011;
    n56[511] = 20'b10000000000000000001;
    n56[510] = 20'b10000000000000000011;
    n56[509] = 20'b10000000000000001011;
    n56[508] = 20'b10000000000000010111;
    n56[507] = 20'b10000000000000101000;
    n56[506] = 20'b10000000000000111111;
    n56[505] = 20'b10000000000001011010;
    n56[504] = 20'b10000000000001111010;
    n56[503] = 20'b10000000000010011111;
    n56[502] = 20'b10000000000011001001;
    n56[501] = 20'b10000000000011111000;
    n56[500] = 20'b10000000000100101100;
    n56[499] = 20'b10000000000101100100;
    n56[498] = 20'b10000000000110100010;
    n56[497] = 20'b10000000000111100101;
    n56[496] = 20'b10000000001000101100;
    n56[495] = 20'b10000000001001111001;
    n56[494] = 20'b10000000001011001010;
    n56[493] = 20'b10000000001100100000;
    n56[492] = 20'b10000000001101111011;
    n56[491] = 20'b10000000001111011100;
    n56[490] = 20'b10000000010001000001;
    n56[489] = 20'b10000000010010101011;
    n56[488] = 20'b10000000010100011010;
    n56[487] = 20'b10000000010110001110;
    n56[486] = 20'b10000000011000000110;
    n56[485] = 20'b10000000011010000100;
    n56[484] = 20'b10000000011100000111;
    n56[483] = 20'b10000000011110001110;
    n56[482] = 20'b10000000100000011011;
    n56[481] = 20'b10000000100010101100;
    n56[480] = 20'b10000000100101000010;
    n56[479] = 20'b10000000100111011110;
    n56[478] = 20'b10000000101001111110;
    n56[477] = 20'b10000000101100100011;
    n56[476] = 20'b10000000101111001101;
    n56[475] = 20'b10000000110001111011;
    n56[474] = 20'b10000000110100101111;
    n56[473] = 20'b10000000110111101000;
    n56[472] = 20'b10000000111010100101;
    n56[471] = 20'b10000000111101101000;
    n56[470] = 20'b10000001000000101111;
    n56[469] = 20'b10000001000011111011;
    n56[468] = 20'b10000001000111001101;
    n56[467] = 20'b10000001001010100011;
    n56[466] = 20'b10000001001101111110;
    n56[465] = 20'b10000001010001011101;
    n56[464] = 20'b10000001010101000010;
    n56[463] = 20'b10000001011000101100;
    n56[462] = 20'b10000001011100011010;
    n56[461] = 20'b10000001100000001101;
    n56[460] = 20'b10000001100100000110;
    n56[459] = 20'b10000001101000000011;
    n56[458] = 20'b10000001101100000101;
    n56[457] = 20'b10000001110000001011;
    n56[456] = 20'b10000001110100010111;
    n56[455] = 20'b10000001111000101000;
    n56[454] = 20'b10000001111100111101;
    n56[453] = 20'b10000010000001010111;
    n56[452] = 20'b10000010000101110111;
    n56[451] = 20'b10000010001010011011;
    n56[450] = 20'b10000010001111000011;
    n56[449] = 20'b10000010010011110001;
    n56[448] = 20'b10000010011000100100;
    n56[447] = 20'b10000010011101011011;
    n56[446] = 20'b10000010100010010111;
    n56[445] = 20'b10000010100111011000;
    n56[444] = 20'b10000010101100011110;
    n56[443] = 20'b10000010110001101001;
    n56[442] = 20'b10000010110110111000;
    n56[441] = 20'b10000010111100001101;
    n56[440] = 20'b10000011000001100110;
    n56[439] = 20'b10000011000111000100;
    n56[438] = 20'b10000011001100100111;
    n56[437] = 20'b10000011010010001111;
    n56[436] = 20'b10000011010111111011;
    n56[435] = 20'b10000011011101101100;
    n56[434] = 20'b10000011100011100010;
    n56[433] = 20'b10000011101001011101;
    n56[432] = 20'b10000011101111011101;
    n56[431] = 20'b10000011110101100001;
    n56[430] = 20'b10000011111011101010;
    n56[429] = 20'b10000100000001111000;
    n56[428] = 20'b10000100001000001011;
    n56[427] = 20'b10000100001110100011;
    n56[426] = 20'b10000100010100111111;
    n56[425] = 20'b10000100011011100000;
    n56[424] = 20'b10000100100010000110;
    n56[423] = 20'b10000100101000110001;
    n56[422] = 20'b10000100101111100000;
    n56[421] = 20'b10000100110110010100;
    n56[420] = 20'b10000100111101001101;
    n56[419] = 20'b10000101000100001011;
    n56[418] = 20'b10000101001011001101;
    n56[417] = 20'b10000101010010010100;
    n56[416] = 20'b10000101011001100000;
    n56[415] = 20'b10000101100000110001;
    n56[414] = 20'b10000101101000000110;
    n56[413] = 20'b10000101101111100000;
    n56[412] = 20'b10000101110110111111;
    n56[411] = 20'b10000101111110100010;
    n56[410] = 20'b10000110000110001010;
    n56[409] = 20'b10000110001101110111;
    n56[408] = 20'b10000110010101101001;
    n56[407] = 20'b10000110011101011111;
    n56[406] = 20'b10000110100101011010;
    n56[405] = 20'b10000110101101011001;
    n56[404] = 20'b10000110110101011101;
    n56[403] = 20'b10000110111101100110;
    n56[402] = 20'b10000111000101110100;
    n56[401] = 20'b10000111001110000110;
    n56[400] = 20'b10000111010110011101;
    n56[399] = 20'b10000111011110111001;
    n56[398] = 20'b10000111100111011001;
    n56[397] = 20'b10000111101111111110;
    n56[396] = 20'b10000111111000100111;
    n56[395] = 20'b10001000000001010101;
    n56[394] = 20'b10001000001010001000;
    n56[393] = 20'b10001000010010111111;
    n56[392] = 20'b10001000011011111011;
    n56[391] = 20'b10001000100100111100;
    n56[390] = 20'b10001000101110000001;
    n56[389] = 20'b10001000110111001011;
    n56[388] = 20'b10001001000000011001;
    n56[387] = 20'b10001001001001101100;
    n56[386] = 20'b10001001010011000100;
    n56[385] = 20'b10001001011100100000;
    n56[384] = 20'b10001001100110000001;
    n56[383] = 20'b10001001101111100110;
    n56[382] = 20'b10001001111001010000;
    n56[381] = 20'b10001010000010111110;
    n56[380] = 20'b10001010001100110001;
    n56[379] = 20'b10001010010110101001;
    n56[378] = 20'b10001010100000100101;
    n56[377] = 20'b10001010101010100101;
    n56[376] = 20'b10001010110100101010;
    n56[375] = 20'b10001010111110110100;
    n56[374] = 20'b10001011001001000010;
    n56[373] = 20'b10001011010011010100;
    n56[372] = 20'b10001011011101101011;
    n56[371] = 20'b10001011101000000111;
    n56[370] = 20'b10001011110010100111;
    n56[369] = 20'b10001011111101001100;
    n56[368] = 20'b10001100000111110101;
    n56[367] = 20'b10001100010010100010;
    n56[366] = 20'b10001100011101010100;
    n56[365] = 20'b10001100101000001011;
    n56[364] = 20'b10001100110011000101;
    n56[363] = 20'b10001100111110000101;
    n56[362] = 20'b10001101001001001000;
    n56[361] = 20'b10001101010100010001;
    n56[360] = 20'b10001101011111011101;
    n56[359] = 20'b10001101101010101110;
    n56[358] = 20'b10001101110110000100;
    n56[357] = 20'b10001110000001011101;
    n56[356] = 20'b10001110001100111100;
    n56[355] = 20'b10001110011000011110;
    n56[354] = 20'b10001110100100000101;
    n56[353] = 20'b10001110101111110000;
    n56[352] = 20'b10001110111011100000;
    n56[351] = 20'b10001111000111010100;
    n56[350] = 20'b10001111010011001101;
    n56[349] = 20'b10001111011111001001;
    n56[348] = 20'b10001111101011001010;
    n56[347] = 20'b10001111110111010000;
    n56[346] = 20'b10010000000011011010;
    n56[345] = 20'b10010000001111101000;
    n56[344] = 20'b10010000011011111010;
    n56[343] = 20'b10010000101000010001;
    n56[342] = 20'b10010000110100101100;
    n56[341] = 20'b10010001000001001011;
    n56[340] = 20'b10010001001101101110;
    n56[339] = 20'b10010001011010010110;
    n56[338] = 20'b10010001100111000010;
    n56[337] = 20'b10010001110011110011;
    n56[336] = 20'b10010010000000100111;
    n56[335] = 20'b10010010001101100000;
    n56[334] = 20'b10010010011010011101;
    n56[333] = 20'b10010010100111011110;
    n56[332] = 20'b10010010110100100100;
    n56[331] = 20'b10010011000001101110;
    n56[330] = 20'b10010011001110111011;
    n56[329] = 20'b10010011011100001110;
    n56[328] = 20'b10010011101001100100;
    n56[327] = 20'b10010011110110111110;
    n56[326] = 20'b10010100000100011101;
    n56[325] = 20'b10010100010010000000;
    n56[324] = 20'b10010100011111100111;
    n56[323] = 20'b10010100101101010010;
    n56[322] = 20'b10010100111011000001;
    n56[321] = 20'b10010101001000110100;
    n56[320] = 20'b10010101010110101100;
    n56[319] = 20'b10010101100100100111;
    n56[318] = 20'b10010101110010100111;
    n56[317] = 20'b10010110000000101011;
    n56[316] = 20'b10010110001110110011;
    n56[315] = 20'b10010110011100111111;
    n56[314] = 20'b10010110101011001111;
    n56[313] = 20'b10010110111001100011;
    n56[312] = 20'b10010111000111111011;
    n56[311] = 20'b10010111010110010111;
    n56[310] = 20'b10010111100100110111;
    n56[309] = 20'b10010111110011011011;
    n56[308] = 20'b10011000000010000100;
    n56[307] = 20'b10011000010000110000;
    n56[306] = 20'b10011000011111100000;
    n56[305] = 20'b10011000101110010100;
    n56[304] = 20'b10011000111101001101;
    n56[303] = 20'b10011001001100001001;
    n56[302] = 20'b10011001011011001001;
    n56[301] = 20'b10011001101010001101;
    n56[300] = 20'b10011001111001010101;
    n56[299] = 20'b10011010001000100001;
    n56[298] = 20'b10011010010111110001;
    n56[297] = 20'b10011010100111000101;
    n56[296] = 20'b10011010110110011101;
    n56[295] = 20'b10011011000101111000;
    n56[294] = 20'b10011011010101011000;
    n56[293] = 20'b10011011100100111011;
    n56[292] = 20'b10011011110100100010;
    n56[291] = 20'b10011100000100001110;
    n56[290] = 20'b10011100010011111101;
    n56[289] = 20'b10011100100011101111;
    n56[288] = 20'b10011100110011100110;
    n56[287] = 20'b10011101000011100001;
    n56[286] = 20'b10011101010011011111;
    n56[285] = 20'b10011101100011100001;
    n56[284] = 20'b10011101110011100111;
    n56[283] = 20'b10011110000011110001;
    n56[282] = 20'b10011110010011111110;
    n56[281] = 20'b10011110100100001111;
    n56[280] = 20'b10011110110100100100;
    n56[279] = 20'b10011111000100111101;
    n56[278] = 20'b10011111010101011010;
    n56[277] = 20'b10011111100101111010;
    n56[276] = 20'b10011111110110011110;
    n56[275] = 20'b10100000000111000110;
    n56[274] = 20'b10100000010111110001;
    n56[273] = 20'b10100000101000100000;
    n56[272] = 20'b10100000111001010011;
    n56[271] = 20'b10100001001010001001;
    n56[270] = 20'b10100001011011000011;
    n56[269] = 20'b10100001101100000001;
    n56[268] = 20'b10100001111101000010;
    n56[267] = 20'b10100010001110000111;
    n56[266] = 20'b10100010011111001111;
    n56[265] = 20'b10100010110000011100;
    n56[264] = 20'b10100011000001101011;
    n56[263] = 20'b10100011010010111111;
    n56[262] = 20'b10100011100100010110;
    n56[261] = 20'b10100011110101110000;
    n56[260] = 20'b10100100000111001110;
    n56[259] = 20'b10100100011000110000;
    n56[258] = 20'b10100100101010010101;
    n56[257] = 20'b10100100111011111101;
    n56[256] = 20'b10100101001101101001;
    n56[255] = 20'b10100101011111011001;
    n56[254] = 20'b10100101110001001100;
    n56[253] = 20'b10100110000011000011;
    n56[252] = 20'b10100110010100111101;
    n56[251] = 20'b10100110100110111010;
    n56[250] = 20'b10100110111000111011;
    n56[249] = 20'b10100111001011000000;
    n56[248] = 20'b10100111011101001000;
    n56[247] = 20'b10100111101111010011;
    n56[246] = 20'b10101000000001100010;
    n56[245] = 20'b10101000010011110100;
    n56[244] = 20'b10101000100110001001;
    n56[243] = 20'b10101000111000100010;
    n56[242] = 20'b10101001001010111110;
    n56[241] = 20'b10101001011101011101;
    n56[240] = 20'b10101001110000000000;
    n56[239] = 20'b10101010000010100110;
    n56[238] = 20'b10101010010101010000;
    n56[237] = 20'b10101010100111111101;
    n56[236] = 20'b10101010111010101101;
    n56[235] = 20'b10101011001101100000;
    n56[234] = 20'b10101011100000010111;
    n56[233] = 20'b10101011110011010001;
    n56[232] = 20'b10101100000110001110;
    n56[231] = 20'b10101100011001001110;
    n56[230] = 20'b10101100101100010010;
    n56[229] = 20'b10101100111111011000;
    n56[228] = 20'b10101101010010100010;
    n56[227] = 20'b10101101100101101111;
    n56[226] = 20'b10101101111001000000;
    n56[225] = 20'b10101110001100010011;
    n56[224] = 20'b10101110011111101010;
    n56[223] = 20'b10101110110011000100;
    n56[222] = 20'b10101111000110100001;
    n56[221] = 20'b10101111011010000001;
    n56[220] = 20'b10101111101101100100;
    n56[219] = 20'b10110000000001001010;
    n56[218] = 20'b10110000010100110100;
    n56[217] = 20'b10110000101000100000;
    n56[216] = 20'b10110000111100010000;
    n56[215] = 20'b10110001010000000010;
    n56[214] = 20'b10110001100011111000;
    n56[213] = 20'b10110001110111110000;
    n56[212] = 20'b10110010001011101100;
    n56[211] = 20'b10110010011111101010;
    n56[210] = 20'b10110010110011101100;
    n56[209] = 20'b10110011000111110001;
    n56[208] = 20'b10110011011011111000;
    n56[207] = 20'b10110011110000000011;
    n56[206] = 20'b10110100000100010000;
    n56[205] = 20'b10110100011000100000;
    n56[204] = 20'b10110100101100110100;
    n56[203] = 20'b10110101000001001010;
    n56[202] = 20'b10110101010101100011;
    n56[201] = 20'b10110101101001111111;
    n56[200] = 20'b10110101111110011110;
    n56[199] = 20'b10110110010010111111;
    n56[198] = 20'b10110110100111100100;
    n56[197] = 20'b10110110111100001011;
    n56[196] = 20'b10110111010000110101;
    n56[195] = 20'b10110111100101100010;
    n56[194] = 20'b10110111111010010010;
    n56[193] = 20'b10111000001111000100;
    n56[192] = 20'b10111000100011111010;
    n56[191] = 20'b10111000111000110010;
    n56[190] = 20'b10111001001101101101;
    n56[189] = 20'b10111001100010101010;
    n56[188] = 20'b10111001110111101010;
    n56[187] = 20'b10111010001100101101;
    n56[186] = 20'b10111010100001110011;
    n56[185] = 20'b10111010110110111011;
    n56[184] = 20'b10111011001100000110;
    n56[183] = 20'b10111011100001010100;
    n56[182] = 20'b10111011110110100100;
    n56[181] = 20'b10111100001011110111;
    n56[180] = 20'b10111100100001001100;
    n56[179] = 20'b10111100110110100100;
    n56[178] = 20'b10111101001011111111;
    n56[177] = 20'b10111101100001011100;
    n56[176] = 20'b10111101110110111100;
    n56[175] = 20'b10111110001100011111;
    n56[174] = 20'b10111110100010000100;
    n56[173] = 20'b10111110110111101011;
    n56[172] = 20'b10111111001101010101;
    n56[171] = 20'b10111111100011000001;
    n56[170] = 20'b10111111111000110000;
    n56[169] = 20'b11000000001110100010;
    n56[168] = 20'b11000000100100010110;
    n56[167] = 20'b11000000111010001100;
    n56[166] = 20'b11000001010000000101;
    n56[165] = 20'b11000001100110000000;
    n56[164] = 20'b11000001111011111101;
    n56[163] = 20'b11000010010001111101;
    n56[162] = 20'b11000010101000000000;
    n56[161] = 20'b11000010111110000100;
    n56[160] = 20'b11000011010100001011;
    n56[159] = 20'b11000011101010010101;
    n56[158] = 20'b11000100000000100001;
    n56[157] = 20'b11000100010110101111;
    n56[156] = 20'b11000100101100111111;
    n56[155] = 20'b11000101000011010010;
    n56[154] = 20'b11000101011001100110;
    n56[153] = 20'b11000101101111111110;
    n56[152] = 20'b11000110000110010111;
    n56[151] = 20'b11000110011100110011;
    n56[150] = 20'b11000110110011010000;
    n56[149] = 20'b11000111001001110001;
    n56[148] = 20'b11000111100000010011;
    n56[147] = 20'b11000111110110110111;
    n56[146] = 20'b11001000001101011110;
    n56[145] = 20'b11001000100100000111;
    n56[144] = 20'b11001000111010110001;
    n56[143] = 20'b11001001010001011110;
    n56[142] = 20'b11001001101000001110;
    n56[141] = 20'b11001001111110111111;
    n56[140] = 20'b11001010010101110010;
    n56[139] = 20'b11001010101100100111;
    n56[138] = 20'b11001011000011011111;
    n56[137] = 20'b11001011011010011000;
    n56[136] = 20'b11001011110001010100;
    n56[135] = 20'b11001100001000010001;
    n56[134] = 20'b11001100011111010001;
    n56[133] = 20'b11001100110110010010;
    n56[132] = 20'b11001101001101010110;
    n56[131] = 20'b11001101100100011011;
    n56[130] = 20'b11001101111011100010;
    n56[129] = 20'b11001110010010101100;
    n56[128] = 20'b11001110101001110111;
    n56[127] = 20'b11001111000001000100;
    n56[126] = 20'b11001111011000010011;
    n56[125] = 20'b11001111101111100100;
    n56[124] = 20'b11010000000110110111;
    n56[123] = 20'b11010000011110001011;
    n56[122] = 20'b11010000110101100010;
    n56[121] = 20'b11010001001100111010;
    n56[120] = 20'b11010001100100010100;
    n56[119] = 20'b11010001111011110000;
    n56[118] = 20'b11010010010011001101;
    n56[117] = 20'b11010010101010101101;
    n56[116] = 20'b11010011000010001110;
    n56[115] = 20'b11010011011001110001;
    n56[114] = 20'b11010011110001010101;
    n56[113] = 20'b11010100001000111011;
    n56[112] = 20'b11010100100000100011;
    n56[111] = 20'b11010100111000001101;
    n56[110] = 20'b11010101001111111000;
    n56[109] = 20'b11010101100111100101;
    n56[108] = 20'b11010101111111010100;
    n56[107] = 20'b11010110010111000100;
    n56[106] = 20'b11010110101110110110;
    n56[105] = 20'b11010111000110101001;
    n56[104] = 20'b11010111011110011110;
    n56[103] = 20'b11010111110110010101;
    n56[102] = 20'b11011000001110001101;
    n56[101] = 20'b11011000100110000110;
    n56[100] = 20'b11011000111110000010;
    n56[99] = 20'b11011001010101111110;
    n56[98] = 20'b11011001101101111100;
    n56[97] = 20'b11011010000101111100;
    n56[96] = 20'b11011010011101111101;
    n56[95] = 20'b11011010110110000000;
    n56[94] = 20'b11011011001110000011;
    n56[93] = 20'b11011011100110001001;
    n56[92] = 20'b11011011111110010000;
    n56[91] = 20'b11011100010110011000;
    n56[90] = 20'b11011100101110100001;
    n56[89] = 20'b11011101000110101100;
    n56[88] = 20'b11011101011110111000;
    n56[87] = 20'b11011101110111000110;
    n56[86] = 20'b11011110001111010101;
    n56[85] = 20'b11011110100111100101;
    n56[84] = 20'b11011110111111110111;
    n56[83] = 20'b11011111011000001001;
    n56[82] = 20'b11011111110000011101;
    n56[81] = 20'b11100000001000110010;
    n56[80] = 20'b11100000100001001001;
    n56[79] = 20'b11100000111001100001;
    n56[78] = 20'b11100001010001111010;
    n56[77] = 20'b11100001101010010100;
    n56[76] = 20'b11100010000010101111;
    n56[75] = 20'b11100010011011001011;
    n56[74] = 20'b11100010110011101001;
    n56[73] = 20'b11100011001100000111;
    n56[72] = 20'b11100011100100100111;
    n56[71] = 20'b11100011111101001000;
    n56[70] = 20'b11100100010101101010;
    n56[69] = 20'b11100100101110001101;
    n56[68] = 20'b11100101000110110001;
    n56[67] = 20'b11100101011111010110;
    n56[66] = 20'b11100101110111111100;
    n56[65] = 20'b11100110010000100011;
    n56[64] = 20'b11100110101001001100;
    n56[63] = 20'b11100111000001110101;
    n56[62] = 20'b11100111011010011111;
    n56[61] = 20'b11100111110011001010;
    n56[60] = 20'b11101000001011110110;
    n56[59] = 20'b11101000100100100011;
    n56[58] = 20'b11101000111101010000;
    n56[57] = 20'b11101001010101111111;
    n56[56] = 20'b11101001101110101111;
    n56[55] = 20'b11101010000111011111;
    n56[54] = 20'b11101010100000010000;
    n56[53] = 20'b11101010111001000010;
    n56[52] = 20'b11101011010001110101;
    n56[51] = 20'b11101011101010101001;
    n56[50] = 20'b11101100000011011101;
    n56[49] = 20'b11101100011100010010;
    n56[48] = 20'b11101100110101001000;
    n56[47] = 20'b11101101001101111111;
    n56[46] = 20'b11101101100110110111;
    n56[45] = 20'b11101101111111101111;
    n56[44] = 20'b11101110011000101000;
    n56[43] = 20'b11101110110001100001;
    n56[42] = 20'b11101111001010011011;
    n56[41] = 20'b11101111100011010110;
    n56[40] = 20'b11101111111100010010;
    n56[39] = 20'b11110000010101001110;
    n56[38] = 20'b11110000101110001010;
    n56[37] = 20'b11110001000111001000;
    n56[36] = 20'b11110001100000000110;
    n56[35] = 20'b11110001111001000100;
    n56[34] = 20'b11110010010010000011;
    n56[33] = 20'b11110010101011000010;
    n56[32] = 20'b11110011000100000010;
    n56[31] = 20'b11110011011101000011;
    n56[30] = 20'b11110011110110000100;
    n56[29] = 20'b11110100001111000101;
    n56[28] = 20'b11110100101000000111;
    n56[27] = 20'b11110101000001001010;
    n56[26] = 20'b11110101011010001100;
    n56[25] = 20'b11110101110011010000;
    n56[24] = 20'b11110110001100010011;
    n56[23] = 20'b11110110100101010111;
    n56[22] = 20'b11110110111110011011;
    n56[21] = 20'b11110111010111100000;
    n56[20] = 20'b11110111110000100101;
    n56[19] = 20'b11111000001001101010;
    n56[18] = 20'b11111000100010110000;
    n56[17] = 20'b11111000111011110110;
    n56[16] = 20'b11111001010100111100;
    n56[15] = 20'b11111001101110000010;
    n56[14] = 20'b11111010000111001001;
    n56[13] = 20'b11111010100000010000;
    n56[12] = 20'b11111010111001010111;
    n56[11] = 20'b11111011010010011110;
    n56[10] = 20'b11111011101011100110;
    n56[9] = 20'b11111100000100101110;
    n56[8] = 20'b11111100011101110101;
    n56[7] = 20'b11111100110110111101;
    n56[6] = 20'b11111101010000000101;
    n56[5] = 20'b11111101101001001110;
    n56[4] = 20'b11111110000010010110;
    n56[3] = 20'b11111110011011011110;
    n56[2] = 20'b11111110110100100111;
    n56[1] = 20'b11111111001101101111;
    n56[0] = 20'b11111111100110111000;
    end
  always @(posedge clk)
    if (1'b1)
      n58_data <= n56[n50_o];
endmodule

module zector_hs_dds_ip_32_11_20_8
  (input  clk,
   input  [19:0] lut_di_0,
   input  [31:0] m,
   input  [31:0] phase,
   output [7:0] y,
   output [10:0] lut_addr_0);
  reg [31:0] accumulator;
  reg [31:0] phase_word;
  reg [7:0] dac_reg;
  wire [31:0] n26_o;
  wire [31:0] n27_o;
  wire [10:0] n28_o;
  wire [7:0] n29_o;
  wire n35_o;
  wire n36_o;
  wire [6:0] n37_o;
  wire [7:0] n38_o;
  reg [31:0] n39_q;
  reg [31:0] n40_q;
  reg [7:0] n41_q;
  reg [10:0] n42_q;
  assign y = n38_o; //(module output)
  assign lut_addr_0 = n42_q; //(module output)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_HS_DDS_IP.vhdl:31:12  */
  always @*
    accumulator = n39_q; // (isignal)
  initial
    accumulator = 32'b00000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_HS_DDS_IP.vhdl:33:12  */
  always @*
    phase_word = n40_q; // (isignal)
  initial
    phase_word = 32'b00000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_HS_DDS_IP.vhdl:35:12  */
  always @*
    dac_reg = n41_q; // (isignal)
  initial
    dac_reg = 8'b00000000;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_HS_DDS_IP.vhdl:58:39  */
  assign n26_o = accumulator + m;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_HS_DDS_IP.vhdl:61:39  */
  assign n27_o = accumulator + phase;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_HS_DDS_IP.vhdl:64:37  */
  assign n28_o = phase_word[31:21]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_HS_DDS_IP.vhdl:67:33  */
  assign n29_o = lut_di_0[19:12]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_HS_DDS_IP.vhdl:71:21  */
  assign n35_o = dac_reg[7]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_HS_DDS_IP.vhdl:71:10  */
  assign n36_o = ~n35_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_HS_DDS_IP.vhdl:71:64  */
  assign n37_o = dac_reg[6:0]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_HS_DDS_IP.vhdl:71:38  */
  assign n38_o = {n36_o, n37_o};
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_HS_DDS_IP.vhdl:56:9  */
  always @(posedge clk)
    n39_q <= n26_o;
  initial
    n39_q = 32'b00000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_HS_DDS_IP.vhdl:56:9  */
  always @(posedge clk)
    n40_q <= n27_o;
  initial
    n40_q = 32'b00000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_HS_DDS_IP.vhdl:56:9  */
  always @(posedge clk)
    n41_q <= n29_o;
  initial
    n41_q = 8'b00000000;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_HS_DDS_IP.vhdl:56:9  */
  always @(posedge clk)
    n42_q <= n28_o;
endmodule

module SPI_MEM_TOP_HS
  (input  clk_10_MHz,
   input  spi_clk,
   input  spi_mosi,
   input  spi_ncs,
   output spi_miso,
   output [7:0] dac_out);
  wire [10:0] lut_addr_a;
  wire [19:0] lut_data_a;
  wire [31:0] dds_m;
  reg [31:0] dds_phase;
  wire [31:0] dds_m_bus;
  wire [31:0] dds_phase_bus;
  wire spi_rnw;
  wire [6:0] spi_addr;
  wire [31:0] spi_data;
  wire spi_update;
  wire [31:0] cfg_data_o;
  wire [7:0] dds_out;
  wire [7:0] dds_inst_y;
  wire [10:0] dds_inst_lut_addr_0;
  wire [19:0] bram_inst_do;
  localparam n5_o = 1'b0;
  localparam [19:0] n6_o = 20'b00000000000000000000;
  wire spi_slave_o_miso;
  wire spi_slave_o_rnw;
  wire [6:0] spi_slave_o_addr;
  wire [31:0] spi_slave_o_data;
  wire spi_slave_o_update;
  wire [31:0] cfg_reg_o_do;
  wire [31:0] cfg_reg_o_reg_0;
  wire [31:0] cfg_reg_o_reg_1;
  wire [31:0] cfg_reg_o_reg_2;
  wire n13_o;
  wire [4:0] n14_o;
  assign spi_miso = spi_slave_o_miso; //(module output)
  assign dac_out = dds_out; //(module output)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\SPI_MEM_HS_DDS_TOP.vhdl:18:12  */
  assign lut_addr_a = dds_inst_lut_addr_0; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\SPI_MEM_HS_DDS_TOP.vhdl:19:12  */
  assign lut_data_a = bram_inst_do; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\SPI_MEM_HS_DDS_TOP.vhdl:21:12  */
  assign dds_m = dds_m_bus; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\SPI_MEM_HS_DDS_TOP.vhdl:22:12  */
  always @*
    dds_phase = dds_phase_bus; // (isignal)
  initial
    dds_phase = 32'b00000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\SPI_MEM_HS_DDS_TOP.vhdl:24:12  */
  assign dds_m_bus = cfg_reg_o_reg_0; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\SPI_MEM_HS_DDS_TOP.vhdl:26:12  */
  assign dds_phase_bus = cfg_reg_o_reg_2; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\SPI_MEM_HS_DDS_TOP.vhdl:28:12  */
  assign spi_rnw = spi_slave_o_rnw; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\SPI_MEM_HS_DDS_TOP.vhdl:29:12  */
  assign spi_addr = spi_slave_o_addr; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\SPI_MEM_HS_DDS_TOP.vhdl:30:12  */
  assign spi_data = spi_slave_o_data; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\SPI_MEM_HS_DDS_TOP.vhdl:31:12  */
  assign spi_update = spi_slave_o_update; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\SPI_MEM_HS_DDS_TOP.vhdl:33:12  */
  assign cfg_data_o = cfg_reg_o_do; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\SPI_MEM_HS_DDS_TOP.vhdl:35:12  */
  assign dds_out = dds_inst_y; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\SPI_MEM_HS_DDS_TOP.vhdl:41:5  */
  zector_hs_dds_ip_32_11_20_8 dds_inst (
    .clk(clk_10_MHz),
    .lut_di_0(lut_data_a),
    .m(dds_m),
    .phase(dds_phase),
    .y(dds_inst_y),
    .lut_addr_0(dds_inst_lut_addr_0));
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\SPI_MEM_HS_DDS_TOP.vhdl:59:5  */
  bram_sp_sin_lut_20_11 bram_inst (
    .we(n5_o),
    .clk(clk_10_MHz),
    .di(n6_o),
    .addr(lut_addr_a),
    .do(bram_inst_do));
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\SPI_MEM_HS_DDS_TOP.vhdl:73:5  */
  zector_spi_ip_32_7 spi_slave (
    .i_clk(clk_10_MHz),
    .i_spi_clk(spi_clk),
    .i_mosi(spi_mosi),
    .i_ncs(spi_ncs),
    .i_data(cfg_data_o),
    .o_miso(spi_slave_o_miso),
    .o_rnw(spi_slave_o_rnw),
    .o_addr(spi_slave_o_addr),
    .o_data(spi_slave_o_data),
    .o_update(spi_slave_o_update));
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\SPI_MEM_HS_DDS_TOP.vhdl:92:5  */
  cfg_registers_32_5 cfg_reg (
    .i_we(n13_o),
    .i_clk(clk_10_MHz),
    .i_update(spi_update),
    .i_di(spi_data),
    .i_addr(n14_o),
    .o_do(cfg_reg_o_do),
    .o_reg_0(cfg_reg_o_reg_0),
    .o_reg_1(),
    .o_reg_2(cfg_reg_o_reg_2));
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\SPI_MEM_HS_DDS_TOP.vhdl:98:28  */
  assign n13_o = ~spi_rnw;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\SPI_MEM_HS_DDS_TOP.vhdl:102:36  */
  assign n14_o = spi_addr[4:0]; // extract
endmodule

