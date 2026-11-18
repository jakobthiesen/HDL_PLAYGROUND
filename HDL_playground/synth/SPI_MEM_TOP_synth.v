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
  wire [4:0] n355_o;
  wire [4:0] n360_o;
  wire [31:0] n363_o;
  wire n366_o;
  wire [31:0] n367_o;
  wire [31:0] n368_o;
  wire [31:0] n369_o;
  reg [1023:0] n377_q;
  wire [31:0] n378_o;
  reg [31:0] n379_q;
  reg [31:0] n380_q;
  reg [31:0] n381_q;
  reg [31:0] n382_q;
  wire [31:0] n383_o;
  wire [31:0] n384_o;
  wire [31:0] n385_o;
  wire [31:0] n386_o;
  wire [31:0] n387_o;
  wire [31:0] n388_o;
  wire [31:0] n389_o;
  wire [31:0] n390_o;
  wire [31:0] n391_o;
  wire [31:0] n392_o;
  wire [31:0] n393_o;
  wire [31:0] n394_o;
  wire [31:0] n395_o;
  wire [31:0] n396_o;
  wire [31:0] n397_o;
  wire [31:0] n398_o;
  wire [31:0] n399_o;
  wire [31:0] n400_o;
  wire [31:0] n401_o;
  wire [31:0] n402_o;
  wire [31:0] n403_o;
  wire [31:0] n404_o;
  wire [31:0] n405_o;
  wire [31:0] n406_o;
  wire [31:0] n407_o;
  wire [31:0] n408_o;
  wire [31:0] n409_o;
  wire [31:0] n410_o;
  wire [31:0] n411_o;
  wire [31:0] n412_o;
  wire [31:0] n413_o;
  wire [31:0] n414_o;
  wire [1:0] n415_o;
  reg [31:0] n416_o;
  wire [1:0] n417_o;
  reg [31:0] n418_o;
  wire [1:0] n419_o;
  reg [31:0] n420_o;
  wire [1:0] n421_o;
  reg [31:0] n422_o;
  wire [1:0] n423_o;
  reg [31:0] n424_o;
  wire [1:0] n425_o;
  reg [31:0] n426_o;
  wire [1:0] n427_o;
  reg [31:0] n428_o;
  wire [1:0] n429_o;
  reg [31:0] n430_o;
  wire [1:0] n431_o;
  reg [31:0] n432_o;
  wire [1:0] n433_o;
  reg [31:0] n434_o;
  wire n435_o;
  wire [31:0] n436_o;
  wire n437_o;
  wire n438_o;
  wire n439_o;
  wire n440_o;
  wire n441_o;
  wire n442_o;
  wire n443_o;
  wire n444_o;
  wire n445_o;
  wire n446_o;
  wire n447_o;
  wire n448_o;
  wire n449_o;
  wire n450_o;
  wire n451_o;
  wire n452_o;
  wire n453_o;
  wire n454_o;
  wire n455_o;
  wire n456_o;
  wire n457_o;
  wire n458_o;
  wire n459_o;
  wire n460_o;
  wire n461_o;
  wire n462_o;
  wire n463_o;
  wire n464_o;
  wire n465_o;
  wire n466_o;
  wire n467_o;
  wire n468_o;
  wire n469_o;
  wire n470_o;
  wire n471_o;
  wire n472_o;
  wire n473_o;
  wire n474_o;
  wire n475_o;
  wire n476_o;
  wire n477_o;
  wire n478_o;
  wire n479_o;
  wire n480_o;
  wire n481_o;
  wire n482_o;
  wire n483_o;
  wire n484_o;
  wire n485_o;
  wire n486_o;
  wire n487_o;
  wire n488_o;
  wire n489_o;
  wire n490_o;
  wire n491_o;
  wire n492_o;
  wire n493_o;
  wire n494_o;
  wire n495_o;
  wire n496_o;
  wire n497_o;
  wire n498_o;
  wire n499_o;
  wire n500_o;
  wire n501_o;
  wire n502_o;
  wire n503_o;
  wire n504_o;
  wire n505_o;
  wire n506_o;
  wire [31:0] n507_o;
  wire n508_o;
  wire [31:0] n509_o;
  wire [31:0] n510_o;
  wire n511_o;
  wire [31:0] n512_o;
  wire [31:0] n513_o;
  wire n514_o;
  wire [31:0] n515_o;
  wire [31:0] n516_o;
  wire n517_o;
  wire [31:0] n518_o;
  wire [31:0] n519_o;
  wire n520_o;
  wire [31:0] n521_o;
  wire [31:0] n522_o;
  wire n523_o;
  wire [31:0] n524_o;
  wire [31:0] n525_o;
  wire n526_o;
  wire [31:0] n527_o;
  wire [31:0] n528_o;
  wire n529_o;
  wire [31:0] n530_o;
  wire [31:0] n531_o;
  wire n532_o;
  wire [31:0] n533_o;
  wire [31:0] n534_o;
  wire n535_o;
  wire [31:0] n536_o;
  wire [31:0] n537_o;
  wire n538_o;
  wire [31:0] n539_o;
  wire [31:0] n540_o;
  wire n541_o;
  wire [31:0] n542_o;
  wire [31:0] n543_o;
  wire n544_o;
  wire [31:0] n545_o;
  wire [31:0] n546_o;
  wire n547_o;
  wire [31:0] n548_o;
  wire [31:0] n549_o;
  wire n550_o;
  wire [31:0] n551_o;
  wire [31:0] n552_o;
  wire n553_o;
  wire [31:0] n554_o;
  wire [31:0] n555_o;
  wire n556_o;
  wire [31:0] n557_o;
  wire [31:0] n558_o;
  wire n559_o;
  wire [31:0] n560_o;
  wire [31:0] n561_o;
  wire n562_o;
  wire [31:0] n563_o;
  wire [31:0] n564_o;
  wire n565_o;
  wire [31:0] n566_o;
  wire [31:0] n567_o;
  wire n568_o;
  wire [31:0] n569_o;
  wire [31:0] n570_o;
  wire n571_o;
  wire [31:0] n572_o;
  wire [31:0] n573_o;
  wire n574_o;
  wire [31:0] n575_o;
  wire [31:0] n576_o;
  wire n577_o;
  wire [31:0] n578_o;
  wire [31:0] n579_o;
  wire n580_o;
  wire [31:0] n581_o;
  wire [31:0] n582_o;
  wire n583_o;
  wire [31:0] n584_o;
  wire [31:0] n585_o;
  wire n586_o;
  wire [31:0] n587_o;
  wire [31:0] n588_o;
  wire n589_o;
  wire [31:0] n590_o;
  wire [31:0] n591_o;
  wire n592_o;
  wire [31:0] n593_o;
  wire [31:0] n594_o;
  wire n595_o;
  wire [31:0] n596_o;
  wire [31:0] n597_o;
  wire n598_o;
  wire [31:0] n599_o;
  wire [31:0] n600_o;
  wire n601_o;
  wire [31:0] n602_o;
  wire [1023:0] n603_o;
  assign o_do = n379_q; //(module output)
  assign o_reg_0 = n380_q; //(module output)
  assign o_reg_1 = n381_q; //(module output)
  assign o_reg_2 = n382_q; //(module output)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:31:12  */
  always @*
    memory = n377_q; // (isignal)
  initial
    memory = 1024'b0000000001000001100010010011011100000000000000000111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:28  */
  assign n355_o = 5'b11111 - i_addr;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:36  */
  assign n360_o = 5'b11111 - i_addr;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:54:17  */
  assign n363_o = i_we ? n379_q : n436_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:53:13  */
  assign n366_o = i_we & i_update;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:60:26  */
  assign n367_o = memory[1023:992]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:61:26  */
  assign n368_o = memory[991:960]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:62:26  */
  assign n369_o = memory[959:928]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:52:9  */
  always @(posedge i_clk)
    n377_q <= n603_o;
  initial
    n377_q = 1024'b0000000001000001100010010011011100000000000000000111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:52:9  */
  assign n378_o = i_update ? n363_o : n379_q;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:52:9  */
  always @(posedge i_clk)
    n379_q <= n378_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:52:9  */
  always @(posedge i_clk)
    n380_q <= n367_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:52:9  */
  always @(posedge i_clk)
    n381_q <= n368_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:52:9  */
  always @(posedge i_clk)
    n382_q <= n369_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:23:9  */
  assign n383_o = memory[31:0]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:22:9  */
  assign n384_o = memory[63:32]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:21:9  */
  assign n385_o = memory[95:64]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:19:9  */
  assign n386_o = memory[127:96]; // extract
  assign n387_o = memory[159:128]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:52:9  */
  assign n388_o = memory[191:160]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:52:9  */
  assign n389_o = memory[223:192]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:36  */
  assign n390_o = memory[255:224]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:28  */
  assign n391_o = memory[287:256]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:50:5  */
  assign n392_o = memory[319:288]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:52:9  */
  assign n393_o = memory[351:320]; // extract
  assign n394_o = memory[383:352]; // extract
  assign n395_o = memory[415:384]; // extract
  assign n396_o = memory[447:416]; // extract
  assign n397_o = memory[479:448]; // extract
  assign n398_o = memory[511:480]; // extract
  assign n399_o = memory[543:512]; // extract
  assign n400_o = memory[575:544]; // extract
  assign n401_o = memory[607:576]; // extract
  assign n402_o = memory[639:608]; // extract
  assign n403_o = memory[671:640]; // extract
  assign n404_o = memory[703:672]; // extract
  assign n405_o = memory[735:704]; // extract
  assign n406_o = memory[767:736]; // extract
  assign n407_o = memory[799:768]; // extract
  assign n408_o = memory[831:800]; // extract
  assign n409_o = memory[863:832]; // extract
  assign n410_o = memory[895:864]; // extract
  assign n411_o = memory[927:896]; // extract
  assign n412_o = memory[959:928]; // extract
  assign n413_o = memory[991:960]; // extract
  assign n414_o = memory[1023:992]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  assign n415_o = n360_o[1:0]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  always @*
    case (n415_o)
      2'b00: n416_o = n383_o;
      2'b01: n416_o = n384_o;
      2'b10: n416_o = n385_o;
      2'b11: n416_o = n386_o;
    endcase
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  assign n417_o = n360_o[1:0]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  always @*
    case (n417_o)
      2'b00: n418_o = n387_o;
      2'b01: n418_o = n388_o;
      2'b10: n418_o = n389_o;
      2'b11: n418_o = n390_o;
    endcase
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  assign n419_o = n360_o[1:0]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  always @*
    case (n419_o)
      2'b00: n420_o = n391_o;
      2'b01: n420_o = n392_o;
      2'b10: n420_o = n393_o;
      2'b11: n420_o = n394_o;
    endcase
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  assign n421_o = n360_o[1:0]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  always @*
    case (n421_o)
      2'b00: n422_o = n395_o;
      2'b01: n422_o = n396_o;
      2'b10: n422_o = n397_o;
      2'b11: n422_o = n398_o;
    endcase
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  assign n423_o = n360_o[1:0]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  always @*
    case (n423_o)
      2'b00: n424_o = n399_o;
      2'b01: n424_o = n400_o;
      2'b10: n424_o = n401_o;
      2'b11: n424_o = n402_o;
    endcase
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  assign n425_o = n360_o[1:0]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  always @*
    case (n425_o)
      2'b00: n426_o = n403_o;
      2'b01: n426_o = n404_o;
      2'b10: n426_o = n405_o;
      2'b11: n426_o = n406_o;
    endcase
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  assign n427_o = n360_o[1:0]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  always @*
    case (n427_o)
      2'b00: n428_o = n407_o;
      2'b01: n428_o = n408_o;
      2'b10: n428_o = n409_o;
      2'b11: n428_o = n410_o;
    endcase
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  assign n429_o = n360_o[1:0]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  always @*
    case (n429_o)
      2'b00: n430_o = n411_o;
      2'b01: n430_o = n412_o;
      2'b10: n430_o = n413_o;
      2'b11: n430_o = n414_o;
    endcase
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  assign n431_o = n360_o[3:2]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  always @*
    case (n431_o)
      2'b00: n432_o = n416_o;
      2'b01: n432_o = n418_o;
      2'b10: n432_o = n420_o;
      2'b11: n432_o = n422_o;
    endcase
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  assign n433_o = n360_o[3:2]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  always @*
    case (n433_o)
      2'b00: n434_o = n424_o;
      2'b01: n434_o = n426_o;
      2'b10: n434_o = n428_o;
      2'b11: n434_o = n430_o;
    endcase
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  assign n435_o = n360_o[4]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:57:35  */
  assign n436_o = n435_o ? n434_o : n432_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n437_o = n355_o[4]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n438_o = ~n437_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n439_o = n355_o[3]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n440_o = ~n439_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n441_o = n438_o & n440_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n442_o = n438_o & n439_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n443_o = n437_o & n440_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n444_o = n437_o & n439_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n445_o = n355_o[2]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n446_o = ~n445_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n447_o = n441_o & n446_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n448_o = n441_o & n445_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n449_o = n442_o & n446_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n450_o = n442_o & n445_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n451_o = n443_o & n446_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n452_o = n443_o & n445_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n453_o = n444_o & n446_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n454_o = n444_o & n445_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n455_o = n355_o[1]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n456_o = ~n455_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n457_o = n447_o & n456_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n458_o = n447_o & n455_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n459_o = n448_o & n456_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n460_o = n448_o & n455_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n461_o = n449_o & n456_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n462_o = n449_o & n455_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n463_o = n450_o & n456_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n464_o = n450_o & n455_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n465_o = n451_o & n456_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n466_o = n451_o & n455_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n467_o = n452_o & n456_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n468_o = n452_o & n455_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n469_o = n453_o & n456_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n470_o = n453_o & n455_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n471_o = n454_o & n456_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n472_o = n454_o & n455_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n473_o = n355_o[0]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n474_o = ~n473_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n475_o = n457_o & n474_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n476_o = n457_o & n473_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n477_o = n458_o & n474_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n478_o = n458_o & n473_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n479_o = n459_o & n474_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n480_o = n459_o & n473_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n481_o = n460_o & n474_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n482_o = n460_o & n473_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n483_o = n461_o & n474_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n484_o = n461_o & n473_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n485_o = n462_o & n474_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n486_o = n462_o & n473_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n487_o = n463_o & n474_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n488_o = n463_o & n473_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n489_o = n464_o & n474_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n490_o = n464_o & n473_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n491_o = n465_o & n474_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n492_o = n465_o & n473_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n493_o = n466_o & n474_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n494_o = n466_o & n473_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n495_o = n467_o & n474_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n496_o = n467_o & n473_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n497_o = n468_o & n474_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n498_o = n468_o & n473_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n499_o = n469_o & n474_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n500_o = n469_o & n473_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n501_o = n470_o & n474_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n502_o = n470_o & n473_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n503_o = n471_o & n474_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n504_o = n471_o & n473_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n505_o = n472_o & n474_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n506_o = n472_o & n473_o;
  assign n507_o = memory[31:0]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n508_o = n475_o & n366_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n509_o = n508_o ? i_di : n507_o;
  assign n510_o = memory[63:32]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n511_o = n476_o & n366_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n512_o = n511_o ? i_di : n510_o;
  assign n513_o = memory[95:64]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n514_o = n477_o & n366_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n515_o = n514_o ? i_di : n513_o;
  assign n516_o = memory[127:96]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n517_o = n478_o & n366_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n518_o = n517_o ? i_di : n516_o;
  assign n519_o = memory[159:128]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n520_o = n479_o & n366_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n521_o = n520_o ? i_di : n519_o;
  assign n522_o = memory[191:160]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n523_o = n480_o & n366_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n524_o = n523_o ? i_di : n522_o;
  assign n525_o = memory[223:192]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n526_o = n481_o & n366_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n527_o = n526_o ? i_di : n525_o;
  assign n528_o = memory[255:224]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n529_o = n482_o & n366_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n530_o = n529_o ? i_di : n528_o;
  assign n531_o = memory[287:256]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n532_o = n483_o & n366_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n533_o = n532_o ? i_di : n531_o;
  assign n534_o = memory[319:288]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n535_o = n484_o & n366_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n536_o = n535_o ? i_di : n534_o;
  assign n537_o = memory[351:320]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n538_o = n485_o & n366_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n539_o = n538_o ? i_di : n537_o;
  assign n540_o = memory[383:352]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n541_o = n486_o & n366_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n542_o = n541_o ? i_di : n540_o;
  assign n543_o = memory[415:384]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n544_o = n487_o & n366_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n545_o = n544_o ? i_di : n543_o;
  assign n546_o = memory[447:416]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n547_o = n488_o & n366_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n548_o = n547_o ? i_di : n546_o;
  assign n549_o = memory[479:448]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n550_o = n489_o & n366_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n551_o = n550_o ? i_di : n549_o;
  assign n552_o = memory[511:480]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n553_o = n490_o & n366_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n554_o = n553_o ? i_di : n552_o;
  assign n555_o = memory[543:512]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n556_o = n491_o & n366_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n557_o = n556_o ? i_di : n555_o;
  assign n558_o = memory[575:544]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n559_o = n492_o & n366_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n560_o = n559_o ? i_di : n558_o;
  assign n561_o = memory[607:576]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n562_o = n493_o & n366_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n563_o = n562_o ? i_di : n561_o;
  assign n564_o = memory[639:608]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n565_o = n494_o & n366_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n566_o = n565_o ? i_di : n564_o;
  assign n567_o = memory[671:640]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n568_o = n495_o & n366_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n569_o = n568_o ? i_di : n567_o;
  assign n570_o = memory[703:672]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n571_o = n496_o & n366_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n572_o = n571_o ? i_di : n570_o;
  assign n573_o = memory[735:704]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n574_o = n497_o & n366_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n575_o = n574_o ? i_di : n573_o;
  assign n576_o = memory[767:736]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n577_o = n498_o & n366_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n578_o = n577_o ? i_di : n576_o;
  assign n579_o = memory[799:768]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n580_o = n499_o & n366_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n581_o = n580_o ? i_di : n579_o;
  assign n582_o = memory[831:800]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n583_o = n500_o & n366_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n584_o = n583_o ? i_di : n582_o;
  assign n585_o = memory[863:832]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n586_o = n501_o & n366_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n587_o = n586_o ? i_di : n585_o;
  assign n588_o = memory[895:864]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n589_o = n502_o & n366_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n590_o = n589_o ? i_di : n588_o;
  assign n591_o = memory[927:896]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n592_o = n503_o & n366_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n593_o = n592_o ? i_di : n591_o;
  assign n594_o = memory[959:928]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n595_o = n504_o & n366_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n596_o = n595_o ? i_di : n594_o;
  assign n597_o = memory[991:960]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n598_o = n505_o & n366_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n599_o = n598_o ? i_di : n597_o;
  assign n600_o = memory[1023:992]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n601_o = n506_o & n366_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\cfg_registers.vhdl:55:21  */
  assign n602_o = n601_o ? i_di : n600_o;
  assign n603_o = {n602_o, n599_o, n596_o, n593_o, n590_o, n587_o, n584_o, n581_o, n578_o, n575_o, n572_o, n569_o, n566_o, n563_o, n560_o, n557_o, n554_o, n551_o, n548_o, n545_o, n542_o, n539_o, n536_o, n533_o, n530_o, n527_o, n524_o, n521_o, n518_o, n515_o, n512_o, n509_o};
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
  wire n169_o;
  wire n170_o;
  wire n171_o;
  wire n172_o;
  wire n173_o;
  wire n176_o;
  wire n177_o;
  wire n178_o;
  wire n200_o;
  wire [38:0] n201_o;
  wire [39:0] n202_o;
  wire n204_o;
  wire n206_o;
  wire [5:0] n207_o;
  wire [6:0] n208_o;
  wire n209_o;
  wire n210_o;
  wire n212_o;
  wire n214_o;
  wire n215_o;
  wire n216_o;
  wire [30:0] n217_o;
  wire [31:0] n218_o;
  wire n219_o;
  wire [31:0] n220_o;
  wire n221_o;
  wire [6:0] n222_o;
  wire [31:0] n223_o;
  wire n224_o;
  wire n225_o;
  wire [6:0] n227_o;
  wire [31:0] n228_o;
  wire n229_o;
  wire n230_o;
  wire [7:0] n232_o;
  wire n235_o;
  wire n240_o;
  wire n241_o;
  wire n242_o;
  wire n243_o;
  wire n244_o;
  wire n245_o;
  wire n246_o;
  wire n268_o;
  wire n269_o;
  wire [30:0] n270_o;
  wire [31:0] n272_o;
  wire [7:0] n274_o;
  wire n276_o;
  wire n277_o;
  wire [30:0] n278_o;
  wire [31:0] n280_o;
  wire [7:0] n282_o;
  wire n283_o;
  wire [31:0] n284_o;
  wire [7:0] n285_o;
  wire n286_o;
  wire [31:0] n287_o;
  wire [7:0] n288_o;
  wire n292_o;
  wire n293_o;
  wire n294_o;
  wire [39:0] n304_o;
  reg [39:0] n305_q;
  wire [31:0] n306_o;
  reg [31:0] n307_q;
  wire [7:0] n308_o;
  reg [7:0] n309_q;
  wire [7:0] n310_o;
  reg [7:0] n311_q;
  wire n312_o;
  wire n313_o;
  wire n314_o;
  reg n315_q;
  wire n316_o;
  wire n317_o;
  wire [6:0] n318_o;
  reg [6:0] n319_q;
  wire n320_o;
  wire n321_o;
  wire [31:0] n322_o;
  reg [31:0] n323_q;
  wire n324_o;
  wire n325_o;
  wire n326_o;
  reg n327_q;
  wire n328_o;
  reg n329_q;
  wire n330_o;
  reg n331_q;
  wire n332_o;
  reg n333_q;
  wire n334_o;
  reg n335_q;
  reg n336_q;
  reg n337_q;
  reg n338_q;
  reg n339_q;
  reg n340_q;
  wire n341_o;
  wire n342_o;
  wire n343_o;
  reg n344_q;
  assign o_miso = n344_q; //(module output)
  assign o_rnw = rw_reg; //(module output)
  assign o_addr = addr_reg; //(module output)
  assign o_data = data_reg; //(module output)
  assign o_update = n169_o; //(module output)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:26:12  */
  assign rx_shift = n305_q; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:27:12  */
  assign tx_shift = n307_q; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:29:12  */
  assign bit_counter = n309_q; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:30:12  */
  assign tx_counter = n311_q; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:36:12  */
  always @*
    rw_reg = n315_q; // (isignal)
  initial
    rw_reg = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:37:12  */
  always @*
    addr_reg = n319_q; // (isignal)
  initial
    addr_reg = 7'b0000000;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:38:12  */
  always @*
    data_reg = n323_q; // (isignal)
  initial
    data_reg = 32'b00000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:39:12  */
  always @*
    valid_toggle = n327_q; // (isignal)
  initial
    valid_toggle = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:40:12  */
  always @*
    tx_begin = n329_q; // (isignal)
  initial
    tx_begin = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:42:12  */
  always @*
    valid_meta = n331_q; // (isignal)
  initial
    valid_meta = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:43:12  */
  always @*
    valid_sync = n333_q; // (isignal)
  initial
    valid_sync = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:44:12  */
  always @*
    valid_prev = n335_q; // (isignal)
  initial
    valid_prev = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:46:12  */
  always @*
    spi_clk_meta = n336_q; // (isignal)
  initial
    spi_clk_meta = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:47:12  */
  always @*
    spi_clk_sync = n337_q; // (isignal)
  initial
    spi_clk_sync = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:48:12  */
  always @*
    spi_clk_prev = n338_q; // (isignal)
  initial
    spi_clk_prev = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:50:12  */
  always @*
    spi_ncs_meta = n339_q; // (isignal)
  initial
    spi_ncs_meta = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:51:12  */
  always @*
    spi_ncs_sync = n340_q; // (isignal)
  initial
    spi_ncs_sync = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:53:12  */
  always @*
    spi_pos_edge = n171_o; // (isignal)
  initial
    spi_pos_edge = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:54:12  */
  always @*
    spi_neg_edge = n173_o; // (isignal)
  initial
    spi_neg_edge = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:61:28  */
  assign n169_o = valid_sync ^ valid_prev;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:62:38  */
  assign n170_o = ~spi_clk_prev;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:62:34  */
  assign n171_o = spi_clk_sync & n170_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:63:21  */
  assign n172_o = ~spi_clk_sync;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:63:38  */
  assign n173_o = n172_o & spi_clk_prev;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:69:41  */
  assign n176_o = ~rw_reg;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:69:30  */
  assign n177_o = n176_o & i_ncs;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:69:56  */
  assign n178_o = n177_o | rw_reg;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:107:32  */
  assign n200_o = $unsigned(bit_counter) < $unsigned(8'b00101000);
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:108:41  */
  assign n201_o = rx_shift[38:0]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:108:76  */
  assign n202_o = {n201_o, i_mosi};
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:109:36  */
  assign n204_o = bit_counter == 8'b00000000;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:111:39  */
  assign n206_o = bit_counter == 8'b00000111;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:112:45  */
  assign n207_o = rx_shift[5:0]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:112:69  */
  assign n208_o = {n207_o, i_mosi};
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:114:45  */
  assign n209_o = ~valid_toggle;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:113:25  */
  assign n210_o = rw_reg ? n209_o : valid_toggle;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:111:21  */
  assign n212_o = n225_o ? 1'b1 : tx_begin;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:117:40  */
  assign n214_o = bit_counter == 8'b00100111;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:117:108  */
  assign n215_o = ~rw_reg;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:117:96  */
  assign n216_o = n215_o & n214_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:120:45  */
  assign n217_o = rx_shift[30:0]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:120:69  */
  assign n218_o = {n217_o, i_mosi};
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:121:41  */
  assign n219_o = ~valid_toggle;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:117:21  */
  assign n220_o = n216_o ? n218_o : data_reg;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:117:21  */
  assign n221_o = n216_o ? n219_o : valid_toggle;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:111:21  */
  assign n222_o = n206_o ? n208_o : addr_reg;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:111:21  */
  assign n223_o = n206_o ? data_reg : n220_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:111:21  */
  assign n224_o = n206_o ? n210_o : n221_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:111:21  */
  assign n225_o = rw_reg & n206_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:109:21  */
  assign n227_o = n204_o ? addr_reg : n222_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:109:21  */
  assign n228_o = n204_o ? data_reg : n223_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:109:21  */
  assign n229_o = n204_o ? valid_toggle : n224_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:109:21  */
  assign n230_o = n204_o ? tx_begin : n212_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:123:47  */
  assign n232_o = bit_counter + 8'b00000001;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:107:17  */
  assign n235_o = n204_o & n200_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:105:13  */
  assign n240_o = n200_o & spi_pos_edge;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:105:13  */
  assign n241_o = n200_o & spi_pos_edge;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:105:13  */
  assign n242_o = n235_o & spi_pos_edge;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:105:13  */
  assign n243_o = n200_o & spi_pos_edge;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:105:13  */
  assign n244_o = n200_o & spi_pos_edge;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:105:13  */
  assign n245_o = n200_o & spi_pos_edge;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:105:13  */
  assign n246_o = n200_o & spi_pos_edge;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:137:35  */
  assign n268_o = tx_counter == 8'b00000000;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:138:41  */
  assign n269_o = i_data[31]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:139:43  */
  assign n270_o = i_data[30:0]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:139:67  */
  assign n272_o = {n270_o, 1'b0};
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:140:50  */
  assign n274_o = tx_counter + 8'b00000001;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:141:38  */
  assign n276_o = $unsigned(tx_counter) < $unsigned(8'b00100000);
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:142:43  */
  assign n277_o = tx_shift[31]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:143:45  */
  assign n278_o = tx_shift[30:0]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:143:69  */
  assign n280_o = {n278_o, 1'b0};
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:144:50  */
  assign n282_o = tx_counter + 8'b00000001;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:141:21  */
  assign n283_o = n276_o ? n277_o : n344_q;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:141:21  */
  assign n284_o = n276_o ? n280_o : tx_shift;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:141:21  */
  assign n285_o = n276_o ? n282_o : tx_counter;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:137:21  */
  assign n286_o = n268_o ? n269_o : n283_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:137:21  */
  assign n287_o = n268_o ? n272_o : n284_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:137:21  */
  assign n288_o = n268_o ? n274_o : n285_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:135:13  */
  assign n292_o = tx_begin & spi_neg_edge;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:135:13  */
  assign n293_o = tx_begin & spi_neg_edge;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:135:13  */
  assign n294_o = tx_begin & spi_neg_edge;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:104:9  */
  assign n304_o = n240_o ? n202_o : rx_shift;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:104:9  */
  always @(posedge i_clk or posedge spi_ncs_sync)
    if (spi_ncs_sync)
      n305_q <= 40'b0000000000000000000000000000000000000000;
    else
      n305_q <= n304_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:134:9  */
  assign n306_o = n293_o ? n287_o : tx_shift;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:134:9  */
  always @(posedge i_clk or posedge spi_ncs_sync)
    if (spi_ncs_sync)
      n307_q <= 32'b00000000000000000000000000000000;
    else
      n307_q <= n306_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:104:9  */
  assign n308_o = n241_o ? n232_o : bit_counter;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:104:9  */
  always @(posedge i_clk or posedge spi_ncs_sync)
    if (spi_ncs_sync)
      n309_q <= 8'b00000000;
    else
      n309_q <= n308_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:134:9  */
  assign n310_o = n294_o ? n288_o : tx_counter;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:134:9  */
  always @(posedge i_clk or posedge spi_ncs_sync)
    if (spi_ncs_sync)
      n311_q <= 8'b00000000;
    else
      n311_q <= n310_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:96:5  */
  assign n312_o = ~spi_ncs_sync;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:96:5  */
  assign n313_o = n242_o & n312_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:104:9  */
  assign n314_o = n313_o ? i_mosi : rw_reg;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:104:9  */
  always @(posedge i_clk)
    n315_q <= n314_o;
  initial
    n315_q = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:96:5  */
  assign n316_o = ~spi_ncs_sync;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:96:5  */
  assign n317_o = n243_o & n316_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:104:9  */
  assign n318_o = n317_o ? n227_o : addr_reg;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:104:9  */
  always @(posedge i_clk)
    n319_q <= n318_o;
  initial
    n319_q = 7'b0000000;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:96:5  */
  assign n320_o = ~spi_ncs_sync;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:96:5  */
  assign n321_o = n244_o & n320_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:104:9  */
  assign n322_o = n321_o ? n228_o : data_reg;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:104:9  */
  always @(posedge i_clk)
    n323_q <= n322_o;
  initial
    n323_q = 32'b00000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:96:5  */
  assign n324_o = ~spi_ncs_sync;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:96:5  */
  assign n325_o = n245_o & n324_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:104:9  */
  assign n326_o = n325_o ? n229_o : valid_toggle;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:104:9  */
  always @(posedge i_clk)
    n327_q <= n326_o;
  initial
    n327_q = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:104:9  */
  assign n328_o = n246_o ? n230_o : tx_begin;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:104:9  */
  always @(posedge i_clk or posedge spi_ncs_sync)
    if (spi_ncs_sync)
      n329_q <= 1'b0;
    else
      n329_q <= n328_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:68:9  */
  assign n330_o = n178_o ? valid_toggle : valid_meta;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:68:9  */
  always @(posedge i_clk)
    n331_q <= n330_o;
  initial
    n331_q = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:68:9  */
  assign n332_o = n178_o ? valid_meta : valid_sync;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:68:9  */
  always @(posedge i_clk)
    n333_q <= n332_o;
  initial
    n333_q = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:68:9  */
  assign n334_o = n178_o ? valid_sync : valid_prev;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:68:9  */
  always @(posedge i_clk)
    n335_q <= n334_o;
  initial
    n335_q = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:80:9  */
  always @(posedge i_clk)
    n336_q <= i_spi_clk;
  initial
    n336_q = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:80:9  */
  always @(posedge i_clk)
    n337_q <= spi_clk_meta;
  initial
    n337_q = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:80:9  */
  always @(posedge i_clk)
    n338_q <= spi_clk_sync;
  initial
    n338_q = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:89:9  */
  always @(posedge i_clk)
    n339_q <= i_ncs;
  initial
    n339_q = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:89:9  */
  always @(posedge i_clk)
    n340_q <= spi_ncs_meta;
  initial
    n340_q = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:129:5  */
  assign n341_o = ~spi_ncs_sync;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:129:5  */
  assign n342_o = n292_o & n341_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:134:9  */
  assign n343_o = n342_o ? n286_o : n344_q;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:134:9  */
  always @(posedge i_clk)
    n344_q <= n343_o;
endmodule

module bram_dp_sin_lut_20_10
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
  wire [9:0] n128_o;
  wire [9:0] n137_o;
  reg [19:0] n146_data; // mem_rd
  reg [19:0] n148_data; // mem_rd
  assign do_a = n148_data; //(module output)
  assign do_b = n146_data; //(module output)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\bram_dp_sin_lut.vhdl:30:12  */
  always @*
    memory = 20480'b00000000000000000000000000001100100100010000000110010010001000000010010110110010000000110010010000110000001111101101001000000100101101100010000001010111111100000000011001000111111000000111000100001010000001111101100101100000100010100010000000001001011010101001000010100011001100000000101011111011011000001011110000111011000011001000101111010000110101010011111000001110000110111100000011101110001110000000111110101011001000010000011100101010000100010011100111110001001000000001000100010010110010000001000100111000111011100001010001010101011100010101000110111110000101011110001000010001011010101000000100010111011011011101000110000011001101100001100011111000101100011001101111011101000110101000001010100001101101000111001100011100000010111000000111001100111110010001110110010011010100011110010101101100000111110001100111110001111111011100111000100000100111110111001000010110000110110010001000100011101000100010111001010100001000111010011010000010010001100111011100100101001010000000001001011110100001000010011010101000001000100111011001111010001010000010011010110010100011100101011100101001101000111100001010100110000110110010101100011111001100101011110111000101001011001001100011110010110101010101001100101110000100010000001011101100110001100010111110000111010100110000010000011100001100001111101111000011000110110101010000110010011011100101001100110010011011100011001111011110111100110100100101101000001101010100110110010011011000000100000100110110101110100010001101110110111110010011100000100100100100111000110110001111001110011000110011010011101001000000001000111010111100101110001110111010010100010011110001010110101100111101000001111100001111011011100000110011111001101000000000111111000101110100001111111100010111100100000001110011111101000001001000010101010000011100111000010100001001111010010001000011001001011100010000111101000010010100010001111010110001000101001001000101010001011100110100110100011001110101011001000111000111001110010001111100001111000100100001101001111001001001000011110101010010011011010000010100101001011000000101001010111110110110010010111001111000000100110000111111110101001100111000001111010011011000000101100100111000100001000001001110101111111110010011110101111000000100111111111011011001010000100101111111010100010011001111000101000111001110110101010010011010010001010100110000001010000101001110011011001001010100001100101111010101001100101000000101010101100000001101010101111101011010010101101000101000110101011100011101111001010111101100001100010110000100001011010101100011010100000001011001011001000110010110011111001111010101101010000010011101011011000100000011010110111001110100000101110000101001000001011100101101000001010111010011111001000101110111000111100101011110010011111111010111101101011101110101111101011110000001011111111000111010011000000110100001100110000011101100001101100001011011110001011000011111000011110110001001110001111101100010111100011111011000110111000100010110001111101111001001100100011011000101011001001110100010000110010101100011101101100101110111011111011001100101011100110110011011001111011101100111010001101100011001111011110100000110100000110010010101101000101001101001011010010001100111010110100110001100000101101001111111010101011010100110110110010110101011011100110001101011010010101110011010111011100000000110110000100100001001101100100011110010011011001111100100100110110101100010001001101101110010100000011011100011000011010110111010010110101001101110111110110101011011110101111011110110111111000001100001110000001000110000011100001000001101110111000011100010110001110001010000010000011100011001111000100111000111111010001101110010010101010010011100101010111011110111001100000111101101110011010111110101011100111011010111100111010000001011010001110100010111111001011101001011001011000111010100000100110001110101010101011011011101011010010101110111010111110100001001110110010000011010011101101000111000000111011011011001010001110111001000110101011101110110110001000111011110110100000101110111111110101011011110000100000000100111100010000100011101111000110001111010011110010000100110100111100101001010011101111001100010100001011110011100100010010111101000000101111001111010010000100000011110100111110011110111101010110110110001111010111011110101011110110010011011000111101101011100111101111011100100100000011110111100010111010111101111111000100001111100001010011111011111000101101000110111110010001001010001111100101101110001011111001110001111000111110100001111001101111101001110010111011111010110001010000111110110001010010101111101101100001111011111011101011001010111110111111010100101111110000111011000011111100011111101010111111001011111110101111110011111110011011111101001110101000111111010111010001101111110110101011101011111101111000001010111111100001001100001111111001000011000011111110011100001010111111101001101110101111111011000100010011111110111010101000111111110000111001001111111100101111100011111111010011100100111111110110101010101111111110000100100011111111100111000000111111111011000011101111111111000011011011111111110100111000111111111110000100001111111111101100001011111111111101001100111111111111101100001111111111111110101011111111111111111110111111111111111010101111111111111011000011111111111101001100111111111110110000101111111111100001000011111111110100111000111111111100001101101111111110110000111011111111100111000000111111111000010010001111111101101010101011111111010011100100111111110010111110001111111100001110010011111110111010101000111111101100010001001111111010011011101011111110011100001010111111100100001100001111111000010011000011111101111000001010111111011010101110101111110101110100011011111101001110101000111111001111111001101111110010111111101011111100011111101010111111000011101100001111101111110101001011111011101011001010111110110110000111101111101100010100101011111010110001010000111110100111001011101111101000011110011011111001110001111000111110010110111000101111100100010010100011111000101101000110111110000101001111101111011111110001000011110111100010111010111101110010010000001111011010111001111011110110010011011000111101011101111010101111010101101101100011110100111110011110111101001000010000001111010000001011110011110011100100010010111100110001010000101111001010010100111011110010000100110100111100011000111101001111000100001000111011110000100000000100111011111111010101101110111101101000001011101110110110001000111011100100011010101110110110110010100011101101000111000000111011001000001101001110101111101000010011101011010010101110111010101010101101101110101000001001100011101001011001011000111010001011111100101110100000010110100011100111011010111100111001101011111010101110011000001111011011100101010111011110111001001010101001001110001111110100011011100011001111000100111000101000001000001110000111000101100011100001000001101110111000000100011000001101111110000011000011011110101111011110110111011111011010101101110100101101010011011100011000011010110110111001010000001101101011000100010011011001111100100100110110010001111001001101100001001000010011010111011100000000110101101001010111001101010110111001100011010100110110110010110100111111101010101101001100011000001011010010001100111010110100010100110100101101000001100100101011001111011110100000110011101000110110001100110110011110111011001100101011100110110010111011101111101100101011000111011011001001110100010000110010001101100010101100011111011110010011000110111000100010110001011110001111101100010011100011111011000011111000011110110000101101111000101100000111011000011011000000110100001100101111111100011101001011111010111100000010111101101011101110101111001001111111101011101110001111001010111010011111001000101110010110100000101011100001010010000010110111001110100000101101100010000001101011010100000100111010110011111001111010101100101100100011001011000110101000000010110000100001011010101011110110000110001010111000111011110010101101000101000110101010111110101101001010101011000000011010101001100101000000101010000110010111101010011100110110010010100110000001010000101001001101001000101010001110011101101010100010011001111000101000010010111111101001111111110110110010011110101111000000100111010111111111001001110001000010000010011011000000101100100110011100000111101001100001111111101010010111001111000000100101011111011011001001010010110000001010010011011010000010100100100001111010101001000011010011110010001111100001111000100011100011100111001000110011101010110010001011100110100110100010100100100010101000100011110101100010000111101000010010100001100100101110001000010011110100100010000011100111000010100000100100001010101000000011100111111001111111100010111100011111100010111010000111110011010000000001111011011100000110011110100000111110000111100010101101011001110111010010100010011101011110010111000111010010000000010001110011000110011010011100011011000111100111000001001001001001101110110111110010011011010111010001000110110000001000001001101010100110110010011010010010110100000110011110111101111001100110010011011100011001001101110010100110001101101010100001100001111101111000011000001000001110000101111100001110101001011101100110001100010111000010001000000101101010101010011001011001001100011110010101111011100010100101011000111110011001010100110000110110010100110100011110000101000111001010111001010000010011010110010011101100111101000100110101010000010001001011110100001000010010100101000000000100100011001110111001000111010011010000010001011100101010000100010001000111010001000010110000110110010000010011111011100011111110111001110000111110001100111110001111001010110110000011101100100110101000111001100111110010001110000001011100000011011010001110011000110101000001010100001100110111101110100011000111110001011000110000011001101100001011101101101110100010110101010000001000101011110001000010001010100011011111000010100010101010111000100111000111011100001001011001000000100010010000000010001000100010011100111110001000001110010101000001111101010110010000011101110001110000000111000011011110000001101010100111110000011001000101111010000101111000011101100001010111110110110000010100011001100000000100101101010100100001000101000100000000001111101100101100000011100010000101000000110010001111110000001010111111100000000010010110110001000000011111011010010000000110010010000110000001001011011001000000001100100100010000000001100100100010000000000000000000011111111001101101111111111100110110111101111110110100100111011111100110110111101111111000001001011101111101101001001111011111010100000010000111110011011100000101111100011101111011011111000001001101010111101110101111000001111011010010101011111110101110011010000111101010000010010101111010000111100010111110011011101000011111100101010110000101111000111100100010011110001000111001000111100000101010011101110111110001101011011101110110001100001111011011111111011111110110100110111111111101100011100010010111010111010101010011110101011100100001011101010000111011111111010010101011111111110100010010010001111100111110011001010111001110000011101011110011001000010001111100101011111010110111001001011100011011110001111110100100011100011001100000111111000100110110010111110000110101001010011100000111001100001111000000010001100101101111101100000100111011110100111100101110111011101110001101101110100011010110011011100010110011000110110111001100010011101101011011000000011011010000101111100110110010101011111101101100010011000011011010111110110010101110101110001101010011101011001011100010011010101100111100101110101001110000011011101010000100011101111010011011001110001110100101010101011011101000111101111000011010001001100111010110100000111100010111100111110111110010011001111000001000100110011100100101011001100110110010001101111001100110110010010110011000010000100011100101101101001100011001010101100100111110010011111101111111100100101000101111011001000100100000111110001111101101101111100011100100111000111000110011100110011110001011011111111101100010100001101001011000100010110101111110000111010100101011100001011111000010011000010010001111101110000011001100000001100000011101000110011000000001110100010101111111000110000011011111011011110101110111110001100011111101111011000010111001011110011011010010010111100001011110111101110111000010101001011101011011011101110111010001100101101101110011000101010101011100011100011001010111000001111000100101101111001011000101011011011110000101110110110010010111111101101011010011111111011010100000100101010110100011000100000101100111100000000111011001100011111000110110010011111101010101100011101111100001011000101000000001010110000101000100000101100000000010010101010111101101000000110101110110011000100101011100011000100111010110110010110111110101100111111011000101011000110010011101010101111001101000110101011001101100000101010101001111111011010101000001010011010101001011101011101101010001110001000101010100001001111010010100111101111010011101001110010110000001010011010011011101010100110000011000011101001010111110110011010010011101111110110100100011000110000101000111101011100001010001101001011111110100010110000011100101000100011100001111010000110110000000110100001001010001001101000001010001000001010000000011100011010011111100101111010100111110001001111011001111010010000111110011110000011110001100111011000111000011001110100001110000110011100100011101111100111000001000011101001101110010011101110011011000101111000100110101001110001011001101000100010000110011001101010001101100110010011000010011001100010111001010010011000010000110000100101111100110110111001011101011001011110010110111001100011100101100111001111111001011000000010101110010101100100100111100101010010001101001001010010110101001010010100010010000000100100111101101111101001001101110000111010010011000001101110100100101001110111101001001000110110000010010001110011110011100100010110100101101001000100000100101110010000101000010001100100000011111010001000111111011101000010001111011111001001100011110001110101001000111010111111000010001110011000011110100011100000010111011000110110101010111010001101010100010001100011001111100001011000110010100000101110001100010010100010100010111111010011001000101110100000011110001011010011010100100010101111101101001000101010101010010110001010010110101001100010100000101111101000100110111110011010001001011100100000100010010010011011001000100011011100101110001000100100111100100010000100101111111000100000000101010110000111101111111110100001110111101110011000011100111000011010000110111101100110100001101011010110011000011001110101111110000110001101110111100001011111101000101000010110111110000010000101100000110001100001010100100101001000010100010000101110000100110110010100100001001010001100011000010001101110000010000100001110100011100001000000011110001000001111010110000110000011101001011101100000110111011011001000001101001000111110000011000111000100100000101111000011011000001011000110100110000010100111011000100000100111010110111000001001001111000110000010001010011011100000100000010101111000000111100010100010000001110000001011100000011010000000111000000110000000110110000001011000101100100000010100010111011000000100101010001110000001000011111011100000001111011010001000000011011110100010000000110001111011100000001011001000111000000010011101111010000000100010101100100000000111100011101000000001101000010010000000010110001110100000000100101010111000000000111101110010000000001100100000100000000010011110011000000000011110010110000000000101100100100000000000111110001000000000001001111110000000000001011010100000000000001010001000000000000000101110000000000000000001100000000000000010111000000000000010100010000000000001011010100000000000100111111000000000001111100010000000000101100100100000000001111001011000000000100111100110000000001100100000100000000011110111001000000001001010101110000000010110001110100000000110100001001000000001111000111010000000100010101100100000001001110111101000000010110010001110000000110001111011100000001101111010001000000011110110100010000001000011111011100000010010101000111000000101000101110110000001011000101100100000011000000011011000000110100000001110000001110000001011100000011110001010001000001000000101011110000010001010011011100000100100111100011000001001110101101110000010100111011000100000101100011010011000001011110000110110000011000111000100100000110100100011111000001101110110110010000011101001011101100000111101011000011000010000000111100010000100001110100011100001000110111000001000010010100011000110000100110110010100100001010001000010111000010101001001010010000101100000110001100001011011111000001000010111111010001010000110001101110111100001100111010111111000011010110101100110000110111101100110100001110011100001101000011101111011100110000111101111111110100010000000010101011000100001001011111110001000100100111100100010001101110010111000100100100110110010001001011100100000100010011011111001101000101000001011111010001010010110101001100010101010101001011000101011111011010010001011010011010100100010111010000001111000101111110100110010001100010010100010100011001010000010111000110011111000010110001101010100010001100011011010101011101000111000000101110110001110011000011110100011101011111100001000111100011101010010001111011111001001100011111101110100001001000000111110100010010000101000010001100100010000010010111001000101101001011010010001110011110011100100100011011000001001001010011101111010010011000001101110100100110111000011101001001111011011111010010100010010000000100101001011010100101001010100100011010010010101100100100111100101100000001010111001011001110011111110010110111001100011100101110101100101111001011111001101101110011000010000110000100110001011100101001001100100110000100110011001101010001101100110100010001000011001101010011100010110011011000101111000100110111001001110111001110000010000111010011100100011101111100111010000111000011001110110001110000110011110000011110001100111101001000011111001111100010011110110011111100101111010101000000001110001101010000010100010000010100001001010001001101000011011000000011010001000111000011110100010110000011100101000110100101111111010001111010111000010100100011000110000101001001110111111011010010101111101100110100110000011000011101001101001101110101010011100101100000010100111101111010011101010000100111101001010100011100010001010101001011101011101101010100000101001101010101010011111110110101011001101100000101010111100110100011010110001100100111010101100111111011000101011011001011011111010111000110001001110101110110011000100101011110110100000011011000000000100101010110000101000100000101100010100000000101011000111011111000010110010011111101010101100110001111100011011001111000000001110110100011000100000101101010000010010101011010110100111111110110110010010111111101101101111000010111011011110010110001010111000001111000100101110001110001100101011100110001010101010111010001100101101101110101101101110111011101110000101010010111100001011110111101111001101101001001011110110000101110010111110001100011111101111101101111010111011111110001100000111000000001110100010110000001110100011001100000110011000000011000010010001111101110000101111100001001100001110101001010111000100010110101111110001010000110100101100010110111111111011000110011100110011110001110010011100011100011111011011011111001000100100000111110010010100010111101100100111111011111111001010101100100111110010110110100110001100110000100001000111001100110110010010110011011001000110111100111001001010110011001111000001000100110011111011111001001101000001111000101111010001001100111010110100011110111100001101001010101010110111010011011001110001110101000010001110111101010011100000110111010101100111100101110101100101110001001101011100011010100111010111110110010101110110001001100001101101100101010111111011011010000101111100110110101101100000001101101110011000100111011100010110011000110111010001101011001101110111011100011011011110100111100101110111110110000010011110000000100011001011100000111001100001111000011010100101001110001001101100101111100011001100000111111000111111010010001110010010111000110111100101011111010110111001100100001000111110011100000111010111100111110011001010111010001001001000111110100101010111111111101010000111011111111010101110010000101110101110101010100111101100011100010010111011010011011111111110110111111110111111101110110001100001111011111000110101101111000001010100111011110001000111001000111100011110010001001111001010101100001011110011011101000011111101000011110001011111010100000100101011110101110011010000111101101001010101111111011101011110000011111000001001101010111110001110111101101111100110111000001011111010100000010000111110110100100111101111110000010010111011111100110110111101111111011010010011101111111001101101111011111111001101101111; // (isignal)
  initial
    memory = 20480'b00000000000000000000000000001100100100010000000110010010001000000010010110110010000000110010010000110000001111101101001000000100101101100010000001010111111100000000011001000111111000000111000100001010000001111101100101100000100010100010000000001001011010101001000010100011001100000000101011111011011000001011110000111011000011001000101111010000110101010011111000001110000110111100000011101110001110000000111110101011001000010000011100101010000100010011100111110001001000000001000100010010110010000001000100111000111011100001010001010101011100010101000110111110000101011110001000010001011010101000000100010111011011011101000110000011001101100001100011111000101100011001101111011101000110101000001010100001101101000111001100011100000010111000000111001100111110010001110110010011010100011110010101101100000111110001100111110001111111011100111000100000100111110111001000010110000110110010001000100011101000100010111001010100001000111010011010000010010001100111011100100101001010000000001001011110100001000010011010101000001000100111011001111010001010000010011010110010100011100101011100101001101000111100001010100110000110110010101100011111001100101011110111000101001011001001100011110010110101010101001100101110000100010000001011101100110001100010111110000111010100110000010000011100001100001111101111000011000110110101010000110010011011100101001100110010011011100011001111011110111100110100100101101000001101010100110110010011011000000100000100110110101110100010001101110110111110010011100000100100100100111000110110001111001110011000110011010011101001000000001000111010111100101110001110111010010100010011110001010110101100111101000001111100001111011011100000110011111001101000000000111111000101110100001111111100010111100100000001110011111101000001001000010101010000011100111000010100001001111010010001000011001001011100010000111101000010010100010001111010110001000101001001000101010001011100110100110100011001110101011001000111000111001110010001111100001111000100100001101001111001001001000011110101010010011011010000010100101001011000000101001010111110110110010010111001111000000100110000111111110101001100111000001111010011011000000101100100111000100001000001001110101111111110010011110101111000000100111111111011011001010000100101111111010100010011001111000101000111001110110101010010011010010001010100110000001010000101001110011011001001010100001100101111010101001100101000000101010101100000001101010101111101011010010101101000101000110101011100011101111001010111101100001100010110000100001011010101100011010100000001011001011001000110010110011111001111010101101010000010011101011011000100000011010110111001110100000101110000101001000001011100101101000001010111010011111001000101110111000111100101011110010011111111010111101101011101110101111101011110000001011111111000111010011000000110100001100110000011101100001101100001011011110001011000011111000011110110001001110001111101100010111100011111011000110111000100010110001111101111001001100100011011000101011001001110100010000110010101100011101101100101110111011111011001100101011100110110011011001111011101100111010001101100011001111011110100000110100000110010010101101000101001101001011010010001100111010110100110001100000101101001111111010101011010100110110110010110101011011100110001101011010010101110011010111011100000000110110000100100001001101100100011110010011011001111100100100110110101100010001001101101110010100000011011100011000011010110111010010110101001101110111110110101011011110101111011110110111111000001100001110000001000110000011100001000001101110111000011100010110001110001010000010000011100011001111000100111000111111010001101110010010101010010011100101010111011110111001100000111101101110011010111110101011100111011010111100111010000001011010001110100010111111001011101001011001011000111010100000100110001110101010101011011011101011010010101110111010111110100001001110110010000011010011101101000111000000111011011011001010001110111001000110101011101110110110001000111011110110100000101110111111110101011011110000100000000100111100010000100011101111000110001111010011110010000100110100111100101001010011101111001100010100001011110011100100010010111101000000101111001111010010000100000011110100111110011110111101010110110110001111010111011110101011110110010011011000111101101011100111101111011100100100000011110111100010111010111101111111000100001111100001010011111011111000101101000110111110010001001010001111100101101110001011111001110001111000111110100001111001101111101001110010111011111010110001010000111110110001010010101111101101100001111011111011101011001010111110111111010100101111110000111011000011111100011111101010111111001011111110101111110011111110011011111101001110101000111111010111010001101111110110101011101011111101111000001010111111100001001100001111111001000011000011111110011100001010111111101001101110101111111011000100010011111110111010101000111111110000111001001111111100101111100011111111010011100100111111110110101010101111111110000100100011111111100111000000111111111011000011101111111111000011011011111111110100111000111111111110000100001111111111101100001011111111111101001100111111111111101100001111111111111110101011111111111111111110111111111111111010101111111111111011000011111111111101001100111111111110110000101111111111100001000011111111110100111000111111111100001101101111111110110000111011111111100111000000111111111000010010001111111101101010101011111111010011100100111111110010111110001111111100001110010011111110111010101000111111101100010001001111111010011011101011111110011100001010111111100100001100001111111000010011000011111101111000001010111111011010101110101111110101110100011011111101001110101000111111001111111001101111110010111111101011111100011111101010111111000011101100001111101111110101001011111011101011001010111110110110000111101111101100010100101011111010110001010000111110100111001011101111101000011110011011111001110001111000111110010110111000101111100100010010100011111000101101000110111110000101001111101111011111110001000011110111100010111010111101110010010000001111011010111001111011110110010011011000111101011101111010101111010101101101100011110100111110011110111101001000010000001111010000001011110011110011100100010010111100110001010000101111001010010100111011110010000100110100111100011000111101001111000100001000111011110000100000000100111011111111010101101110111101101000001011101110110110001000111011100100011010101110110110110010100011101101000111000000111011001000001101001110101111101000010011101011010010101110111010101010101101101110101000001001100011101001011001011000111010001011111100101110100000010110100011100111011010111100111001101011111010101110011000001111011011100101010111011110111001001010101001001110001111110100011011100011001111000100111000101000001000001110000111000101100011100001000001101110111000000100011000001101111110000011000011011110101111011110110111011111011010101101110100101101010011011100011000011010110110111001010000001101101011000100010011011001111100100100110110010001111001001101100001001000010011010111011100000000110101101001010111001101010110111001100011010100110110110010110100111111101010101101001100011000001011010010001100111010110100010100110100101101000001100100101011001111011110100000110011101000110110001100110110011110111011001100101011100110110010111011101111101100101011000111011011001001110100010000110010001101100010101100011111011110010011000110111000100010110001011110001111101100010011100011111011000011111000011110110000101101111000101100000111011000011011000000110100001100101111111100011101001011111010111100000010111101101011101110101111001001111111101011101110001111001010111010011111001000101110010110100000101011100001010010000010110111001110100000101101100010000001101011010100000100111010110011111001111010101100101100100011001011000110101000000010110000100001011010101011110110000110001010111000111011110010101101000101000110101010111110101101001010101011000000011010101001100101000000101010000110010111101010011100110110010010100110000001010000101001001101001000101010001110011101101010100010011001111000101000010010111111101001111111110110110010011110101111000000100111010111111111001001110001000010000010011011000000101100100110011100000111101001100001111111101010010111001111000000100101011111011011001001010010110000001010010011011010000010100100100001111010101001000011010011110010001111100001111000100011100011100111001000110011101010110010001011100110100110100010100100100010101000100011110101100010000111101000010010100001100100101110001000010011110100100010000011100111000010100000100100001010101000000011100111111001111111100010111100011111100010111010000111110011010000000001111011011100000110011110100000111110000111100010101101011001110111010010100010011101011110010111000111010010000000010001110011000110011010011100011011000111100111000001001001001001101110110111110010011011010111010001000110110000001000001001101010100110110010011010010010110100000110011110111101111001100110010011011100011001001101110010100110001101101010100001100001111101111000011000001000001110000101111100001110101001011101100110001100010111000010001000000101101010101010011001011001001100011110010101111011100010100101011000111110011001010100110000110110010100110100011110000101000111001010111001010000010011010110010011101100111101000100110101010000010001001011110100001000010010100101000000000100100011001110111001000111010011010000010001011100101010000100010001000111010001000010110000110110010000010011111011100011111110111001110000111110001100111110001111001010110110000011101100100110101000111001100111110010001110000001011100000011011010001110011000110101000001010100001100110111101110100011000111110001011000110000011001101100001011101101101110100010110101010000001000101011110001000010001010100011011111000010100010101010111000100111000111011100001001011001000000100010010000000010001000100010011100111110001000001110010101000001111101010110010000011101110001110000000111000011011110000001101010100111110000011001000101111010000101111000011101100001010111110110110000010100011001100000000100101101010100100001000101000100000000001111101100101100000011100010000101000000110010001111110000001010111111100000000010010110110001000000011111011010010000000110010010000110000001001011011001000000001100100100010000000001100100100010000000000000000000011111111001101101111111111100110110111101111110110100100111011111100110110111101111111000001001011101111101101001001111011111010100000010000111110011011100000101111100011101111011011111000001001101010111101110101111000001111011010010101011111110101110011010000111101010000010010101111010000111100010111110011011101000011111100101010110000101111000111100100010011110001000111001000111100000101010011101110111110001101011011101110110001100001111011011111111011111110110100110111111111101100011100010010111010111010101010011110101011100100001011101010000111011111111010010101011111111110100010010010001111100111110011001010111001110000011101011110011001000010001111100101011111010110111001001011100011011110001111110100100011100011001100000111111000100110110010111110000110101001010011100000111001100001111000000010001100101101111101100000100111011110100111100101110111011101110001101101110100011010110011011100010110011000110110111001100010011101101011011000000011011010000101111100110110010101011111101101100010011000011011010111110110010101110101110001101010011101011001011100010011010101100111100101110101001110000011011101010000100011101111010011011001110001110100101010101011011101000111101111000011010001001100111010110100000111100010111100111110111110010011001111000001000100110011100100101011001100110110010001101111001100110110010010110011000010000100011100101101101001100011001010101100100111110010011111101111111100100101000101111011001000100100000111110001111101101101111100011100100111000111000110011100110011110001011011111111101100010100001101001011000100010110101111110000111010100101011100001011111000010011000010010001111101110000011001100000001100000011101000110011000000001110100010101111111000110000011011111011011110101110111110001100011111101111011000010111001011110011011010010010111100001011110111101110111000010101001011101011011011101110111010001100101101101110011000101010101011100011100011001010111000001111000100101101111001011000101011011011110000101110110110010010111111101101011010011111111011010100000100101010110100011000100000101100111100000000111011001100011111000110110010011111101010101100011101111100001011000101000000001010110000101000100000101100000000010010101010111101101000000110101110110011000100101011100011000100111010110110010110111110101100111111011000101011000110010011101010101111001101000110101011001101100000101010101001111111011010101000001010011010101001011101011101101010001110001000101010100001001111010010100111101111010011101001110010110000001010011010011011101010100110000011000011101001010111110110011010010011101111110110100100011000110000101000111101011100001010001101001011111110100010110000011100101000100011100001111010000110110000000110100001001010001001101000001010001000001010000000011100011010011111100101111010100111110001001111011001111010010000111110011110000011110001100111011000111000011001110100001110000110011100100011101111100111000001000011101001101110010011101110011011000101111000100110101001110001011001101000100010000110011001101010001101100110010011000010011001100010111001010010011000010000110000100101111100110110111001011101011001011110010110111001100011100101100111001111111001011000000010101110010101100100100111100101010010001101001001010010110101001010010100010010000000100100111101101111101001001101110000111010010011000001101110100100101001110111101001001000110110000010010001110011110011100100010110100101101001000100000100101110010000101000010001100100000011111010001000111111011101000010001111011111001001100011110001110101001000111010111111000010001110011000011110100011100000010111011000110110101010111010001101010100010001100011001111100001011000110010100000101110001100010010100010100010111111010011001000101110100000011110001011010011010100100010101111101101001000101010101010010110001010010110101001100010100000101111101000100110111110011010001001011100100000100010010010011011001000100011011100101110001000100100111100100010000100101111111000100000000101010110000111101111111110100001110111101110011000011100111000011010000110111101100110100001101011010110011000011001110101111110000110001101110111100001011111101000101000010110111110000010000101100000110001100001010100100101001000010100010000101110000100110110010100100001001010001100011000010001101110000010000100001110100011100001000000011110001000001111010110000110000011101001011101100000110111011011001000001101001000111110000011000111000100100000101111000011011000001011000110100110000010100111011000100000100111010110111000001001001111000110000010001010011011100000100000010101111000000111100010100010000001110000001011100000011010000000111000000110000000110110000001011000101100100000010100010111011000000100101010001110000001000011111011100000001111011010001000000011011110100010000000110001111011100000001011001000111000000010011101111010000000100010101100100000000111100011101000000001101000010010000000010110001110100000000100101010111000000000111101110010000000001100100000100000000010011110011000000000011110010110000000000101100100100000000000111110001000000000001001111110000000000001011010100000000000001010001000000000000000101110000000000000000001100000000000000010111000000000000010100010000000000001011010100000000000100111111000000000001111100010000000000101100100100000000001111001011000000000100111100110000000001100100000100000000011110111001000000001001010101110000000010110001110100000000110100001001000000001111000111010000000100010101100100000001001110111101000000010110010001110000000110001111011100000001101111010001000000011110110100010000001000011111011100000010010101000111000000101000101110110000001011000101100100000011000000011011000000110100000001110000001110000001011100000011110001010001000001000000101011110000010001010011011100000100100111100011000001001110101101110000010100111011000100000101100011010011000001011110000110110000011000111000100100000110100100011111000001101110110110010000011101001011101100000111101011000011000010000000111100010000100001110100011100001000110111000001000010010100011000110000100110110010100100001010001000010111000010101001001010010000101100000110001100001011011111000001000010111111010001010000110001101110111100001100111010111111000011010110101100110000110111101100110100001110011100001101000011101111011100110000111101111111110100010000000010101011000100001001011111110001000100100111100100010001101110010111000100100100110110010001001011100100000100010011011111001101000101000001011111010001010010110101001100010101010101001011000101011111011010010001011010011010100100010111010000001111000101111110100110010001100010010100010100011001010000010111000110011111000010110001101010100010001100011011010101011101000111000000101110110001110011000011110100011101011111100001000111100011101010010001111011111001001100011111101110100001001000000111110100010010000101000010001100100010000010010111001000101101001011010010001110011110011100100100011011000001001001010011101111010010011000001101110100100110111000011101001001111011011111010010100010010000000100101001011010100101001010100100011010010010101100100100111100101100000001010111001011001110011111110010110111001100011100101110101100101111001011111001101101110011000010000110000100110001011100101001001100100110000100110011001101010001101100110100010001000011001101010011100010110011011000101111000100110111001001110111001110000010000111010011100100011101111100111010000111000011001110110001110000110011110000011110001100111101001000011111001111100010011110110011111100101111010101000000001110001101010000010100010000010100001001010001001101000011011000000011010001000111000011110100010110000011100101000110100101111111010001111010111000010100100011000110000101001001110111111011010010101111101100110100110000011000011101001101001101110101010011100101100000010100111101111010011101010000100111101001010100011100010001010101001011101011101101010100000101001101010101010011111110110101011001101100000101010111100110100011010110001100100111010101100111111011000101011011001011011111010111000110001001110101110110011000100101011110110100000011011000000000100101010110000101000100000101100010100000000101011000111011111000010110010011111101010101100110001111100011011001111000000001110110100011000100000101101010000010010101011010110100111111110110110010010111111101101101111000010111011011110010110001010111000001111000100101110001110001100101011100110001010101010111010001100101101101110101101101110111011101110000101010010111100001011110111101111001101101001001011110110000101110010111110001100011111101111101101111010111011111110001100000111000000001110100010110000001110100011001100000110011000000011000010010001111101110000101111100001001100001110101001010111000100010110101111110001010000110100101100010110111111111011000110011100110011110001110010011100011100011111011011011111001000100100000111110010010100010111101100100111111011111111001010101100100111110010110110100110001100110000100001000111001100110110010010110011011001000110111100111001001010110011001111000001000100110011111011111001001101000001111000101111010001001100111010110100011110111100001101001010101010110111010011011001110001110101000010001110111101010011100000110111010101100111100101110101100101110001001101011100011010100111010111110110010101110110001001100001101101100101010111111011011010000101111100110110101101100000001101101110011000100111011100010110011000110111010001101011001101110111011100011011011110100111100101110111110110000010011110000000100011001011100000111001100001111000011010100101001110001001101100101111100011001100000111111000111111010010001110010010111000110111100101011111010110111001100100001000111110011100000111010111100111110011001010111010001001001000111110100101010111111111101010000111011111111010101110010000101110101110101010100111101100011100010010111011010011011111111110110111111110111111101110110001100001111011111000110101101111000001010100111011110001000111001000111100011110010001001111001010101100001011110011011101000011111101000011110001011111010100000100101011110101110011010000111101101001010101111111011101011110000011111000001001101010111110001110111101101111100110111000001011111010100000010000111110110100100111101111110000010010111011111100110110111101111111011010010011101111111001101101111011111111001101101111;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\bram_dp_sin_lut.vhdl:1063:28  */
  assign n128_o = 10'b1111111111 - addr_a;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\bram_dp_sin_lut.vhdl:1070:28  */
  assign n137_o = 10'b1111111111 - addr_b;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\bram_dp_sin_lut.vhdl:21:9  */
  reg [19:0] n144[1023:0] ; // memory
  initial begin
    n144[1023] = 20'b00000000000000000000;
    n144[1022] = 20'b00000000110010010001;
    n144[1021] = 20'b00000001100100100010;
    n144[1020] = 20'b00000010010110110010;
    n144[1019] = 20'b00000011001001000011;
    n144[1018] = 20'b00000011111011010010;
    n144[1017] = 20'b00000100101101100010;
    n144[1016] = 20'b00000101011111110000;
    n144[1015] = 20'b00000110010001111110;
    n144[1014] = 20'b00000111000100001010;
    n144[1013] = 20'b00000111110110010110;
    n144[1012] = 20'b00001000101000100000;
    n144[1011] = 20'b00001001011010101001;
    n144[1010] = 20'b00001010001100110000;
    n144[1009] = 20'b00001010111110110110;
    n144[1008] = 20'b00001011110000111011;
    n144[1007] = 20'b00001100100010111101;
    n144[1006] = 20'b00001101010100111110;
    n144[1005] = 20'b00001110000110111100;
    n144[1004] = 20'b00001110111000111000;
    n144[1003] = 20'b00001111101010110010;
    n144[1002] = 20'b00010000011100101010;
    n144[1001] = 20'b00010001001110011111;
    n144[1000] = 20'b00010010000000010001;
    n144[999] = 20'b00010010110010000001;
    n144[998] = 20'b00010011100011101110;
    n144[997] = 20'b00010100010101010111;
    n144[996] = 20'b00010101000110111110;
    n144[995] = 20'b00010101111000100001;
    n144[994] = 20'b00010110101010000001;
    n144[993] = 20'b00010111011011011101;
    n144[992] = 20'b00011000001100110110;
    n144[991] = 20'b00011000111110001011;
    n144[990] = 20'b00011001101111011101;
    n144[989] = 20'b00011010100000101010;
    n144[988] = 20'b00011011010001110011;
    n144[987] = 20'b00011100000010111000;
    n144[986] = 20'b00011100110011111001;
    n144[985] = 20'b00011101100100110101;
    n144[984] = 20'b00011110010101101100;
    n144[983] = 20'b00011111000110011111;
    n144[982] = 20'b00011111110111001110;
    n144[981] = 20'b00100000100111110111;
    n144[980] = 20'b00100001011000011011;
    n144[979] = 20'b00100010001000111010;
    n144[978] = 20'b00100010111001010100;
    n144[977] = 20'b00100011101001101000;
    n144[976] = 20'b00100100011001110111;
    n144[975] = 20'b00100101001010000000;
    n144[974] = 20'b00100101111010000100;
    n144[973] = 20'b00100110101010000010;
    n144[972] = 20'b00100111011001111010;
    n144[971] = 20'b00101000001001101011;
    n144[970] = 20'b00101000111001010111;
    n144[969] = 20'b00101001101000111100;
    n144[968] = 20'b00101010011000011011;
    n144[967] = 20'b00101011000111110011;
    n144[966] = 20'b00101011110111000101;
    n144[965] = 20'b00101100100110001111;
    n144[964] = 20'b00101101010101010011;
    n144[963] = 20'b00101110000100010000;
    n144[962] = 20'b00101110110011000110;
    n144[961] = 20'b00101111100001110101;
    n144[960] = 20'b00110000010000011100;
    n144[959] = 20'b00110000111110111100;
    n144[958] = 20'b00110001101101010100;
    n144[957] = 20'b00110010011011100101;
    n144[956] = 20'b00110011001001101110;
    n144[955] = 20'b00110011110111101111;
    n144[954] = 20'b00110100100101101000;
    n144[953] = 20'b00110101010011011001;
    n144[952] = 20'b00110110000001000001;
    n144[951] = 20'b00110110101110100010;
    n144[950] = 20'b00110111011011111001;
    n144[949] = 20'b00111000001001001001;
    n144[948] = 20'b00111000110110001111;
    n144[947] = 20'b00111001100011001101;
    n144[946] = 20'b00111010010000000010;
    n144[945] = 20'b00111010111100101110;
    n144[944] = 20'b00111011101001010001;
    n144[943] = 20'b00111100010101101011;
    n144[942] = 20'b00111101000001111100;
    n144[941] = 20'b00111101101110000011;
    n144[940] = 20'b00111110011010000000;
    n144[939] = 20'b00111111000101110100;
    n144[938] = 20'b00111111110001011110;
    n144[937] = 20'b01000000011100111111;
    n144[936] = 20'b01000001001000010101;
    n144[935] = 20'b01000001110011100001;
    n144[934] = 20'b01000010011110100100;
    n144[933] = 20'b01000011001001011100;
    n144[932] = 20'b01000011110100001001;
    n144[931] = 20'b01000100011110101100;
    n144[930] = 20'b01000101001001000101;
    n144[929] = 20'b01000101110011010011;
    n144[928] = 20'b01000110011101010110;
    n144[927] = 20'b01000111000111001110;
    n144[926] = 20'b01000111110000111100;
    n144[925] = 20'b01001000011010011110;
    n144[924] = 20'b01001001000011110101;
    n144[923] = 20'b01001001101101000001;
    n144[922] = 20'b01001010010110000001;
    n144[921] = 20'b01001010111110110110;
    n144[920] = 20'b01001011100111100000;
    n144[919] = 20'b01001100001111111101;
    n144[918] = 20'b01001100111000001111;
    n144[917] = 20'b01001101100000010110;
    n144[916] = 20'b01001110001000010000;
    n144[915] = 20'b01001110101111111110;
    n144[914] = 20'b01001111010111100000;
    n144[913] = 20'b01001111111110110110;
    n144[912] = 20'b01010000100101111111;
    n144[911] = 20'b01010001001100111100;
    n144[910] = 20'b01010001110011101101;
    n144[909] = 20'b01010010011010010001;
    n144[908] = 20'b01010011000000101000;
    n144[907] = 20'b01010011100110110010;
    n144[906] = 20'b01010100001100101111;
    n144[905] = 20'b01010100110010100000;
    n144[904] = 20'b01010101011000000011;
    n144[903] = 20'b01010101111101011010;
    n144[902] = 20'b01010110100010100011;
    n144[901] = 20'b01010111000111011110;
    n144[900] = 20'b01010111101100001100;
    n144[899] = 20'b01011000010000101101;
    n144[898] = 20'b01011000110101000000;
    n144[897] = 20'b01011001011001000110;
    n144[896] = 20'b01011001111100111101;
    n144[895] = 20'b01011010100000100111;
    n144[894] = 20'b01011011000100000011;
    n144[893] = 20'b01011011100111010000;
    n144[892] = 20'b01011100001010010000;
    n144[891] = 20'b01011100101101000001;
    n144[890] = 20'b01011101001111100100;
    n144[889] = 20'b01011101110001111001;
    n144[888] = 20'b01011110010011111111;
    n144[887] = 20'b01011110110101110111;
    n144[886] = 20'b01011111010111100000;
    n144[885] = 20'b01011111111000111010;
    n144[884] = 20'b01100000011010000110;
    n144[883] = 20'b01100000111011000011;
    n144[882] = 20'b01100001011011110001;
    n144[881] = 20'b01100001111100001111;
    n144[880] = 20'b01100010011100011111;
    n144[879] = 20'b01100010111100011111;
    n144[878] = 20'b01100011011100010001;
    n144[877] = 20'b01100011111011110010;
    n144[876] = 20'b01100100011011000101;
    n144[875] = 20'b01100100111010001000;
    n144[874] = 20'b01100101011000111011;
    n144[873] = 20'b01100101110111011111;
    n144[872] = 20'b01100110010101110011;
    n144[871] = 20'b01100110110011110111;
    n144[870] = 20'b01100111010001101100;
    n144[869] = 20'b01100111101111010000;
    n144[868] = 20'b01101000001100100101;
    n144[867] = 20'b01101000101001101001;
    n144[866] = 20'b01101001000110011101;
    n144[865] = 20'b01101001100011000001;
    n144[864] = 20'b01101001111111010101;
    n144[863] = 20'b01101010011011011001;
    n144[862] = 20'b01101010110111001100;
    n144[861] = 20'b01101011010010101110;
    n144[860] = 20'b01101011101110000000;
    n144[859] = 20'b01101100001001000010;
    n144[858] = 20'b01101100100011110010;
    n144[857] = 20'b01101100111110010010;
    n144[856] = 20'b01101101011000100010;
    n144[855] = 20'b01101101110010100000;
    n144[854] = 20'b01101110001100001101;
    n144[853] = 20'b01101110100101101010;
    n144[852] = 20'b01101110111110110101;
    n144[851] = 20'b01101111010111101111;
    n144[850] = 20'b01101111110000011000;
    n144[849] = 20'b01110000001000110000;
    n144[848] = 20'b01110000100000110111;
    n144[847] = 20'b01110000111000101100;
    n144[846] = 20'b01110001010000010000;
    n144[845] = 20'b01110001100111100010;
    n144[844] = 20'b01110001111110100011;
    n144[843] = 20'b01110010010101010010;
    n144[842] = 20'b01110010101011101111;
    n144[841] = 20'b01110011000001111011;
    n144[840] = 20'b01110011010111110101;
    n144[839] = 20'b01110011101101011110;
    n144[838] = 20'b01110100000010110100;
    n144[837] = 20'b01110100010111111001;
    n144[836] = 20'b01110100101100101100;
    n144[835] = 20'b01110101000001001100;
    n144[834] = 20'b01110101010101011011;
    n144[833] = 20'b01110101101001010111;
    n144[832] = 20'b01110101111101000010;
    n144[831] = 20'b01110110010000011010;
    n144[830] = 20'b01110110100011100000;
    n144[829] = 20'b01110110110110010100;
    n144[828] = 20'b01110111001000110101;
    n144[827] = 20'b01110111011011000100;
    n144[826] = 20'b01110111101101000001;
    n144[825] = 20'b01110111111110101011;
    n144[824] = 20'b01111000010000000010;
    n144[823] = 20'b01111000100001000111;
    n144[822] = 20'b01111000110001111010;
    n144[821] = 20'b01111001000010011010;
    n144[820] = 20'b01111001010010100111;
    n144[819] = 20'b01111001100010100001;
    n144[818] = 20'b01111001110010001001;
    n144[817] = 20'b01111010000001011110;
    n144[816] = 20'b01111010010000100000;
    n144[815] = 20'b01111010011111001111;
    n144[814] = 20'b01111010101101101100;
    n144[813] = 20'b01111010111011110101;
    n144[812] = 20'b01111011001001101100;
    n144[811] = 20'b01111011010111001111;
    n144[810] = 20'b01111011100100100000;
    n144[809] = 20'b01111011110001011101;
    n144[808] = 20'b01111011111110001000;
    n144[807] = 20'b01111100001010011111;
    n144[806] = 20'b01111100010110100011;
    n144[805] = 20'b01111100100010010100;
    n144[804] = 20'b01111100101101110001;
    n144[803] = 20'b01111100111000111100;
    n144[802] = 20'b01111101000011110011;
    n144[801] = 20'b01111101001110010111;
    n144[800] = 20'b01111101011000101000;
    n144[799] = 20'b01111101100010100101;
    n144[798] = 20'b01111101101100001111;
    n144[797] = 20'b01111101110101100101;
    n144[796] = 20'b01111101111110101001;
    n144[795] = 20'b01111110000111011000;
    n144[794] = 20'b01111110001111110101;
    n144[793] = 20'b01111110010111111101;
    n144[792] = 20'b01111110011111110011;
    n144[791] = 20'b01111110100111010100;
    n144[790] = 20'b01111110101110100011;
    n144[789] = 20'b01111110110101011101;
    n144[788] = 20'b01111110111100000101;
    n144[787] = 20'b01111111000010011000;
    n144[786] = 20'b01111111001000011000;
    n144[785] = 20'b01111111001110000101;
    n144[784] = 20'b01111111010011011101;
    n144[783] = 20'b01111111011000100010;
    n144[782] = 20'b01111111011101010100;
    n144[781] = 20'b01111111100001110010;
    n144[780] = 20'b01111111100101111100;
    n144[779] = 20'b01111111101001110010;
    n144[778] = 20'b01111111101101010101;
    n144[777] = 20'b01111111110000100100;
    n144[776] = 20'b01111111110011100000;
    n144[775] = 20'b01111111110110000111;
    n144[774] = 20'b01111111111000011011;
    n144[773] = 20'b01111111111010011100;
    n144[772] = 20'b01111111111100001000;
    n144[771] = 20'b01111111111101100001;
    n144[770] = 20'b01111111111110100110;
    n144[769] = 20'b01111111111111011000;
    n144[768] = 20'b01111111111111110101;
    n144[767] = 20'b01111111111111111111;
    n144[766] = 20'b01111111111111110101;
    n144[765] = 20'b01111111111111011000;
    n144[764] = 20'b01111111111110100110;
    n144[763] = 20'b01111111111101100001;
    n144[762] = 20'b01111111111100001000;
    n144[761] = 20'b01111111111010011100;
    n144[760] = 20'b01111111111000011011;
    n144[759] = 20'b01111111110110000111;
    n144[758] = 20'b01111111110011100000;
    n144[757] = 20'b01111111110000100100;
    n144[756] = 20'b01111111101101010101;
    n144[755] = 20'b01111111101001110010;
    n144[754] = 20'b01111111100101111100;
    n144[753] = 20'b01111111100001110010;
    n144[752] = 20'b01111111011101010100;
    n144[751] = 20'b01111111011000100010;
    n144[750] = 20'b01111111010011011101;
    n144[749] = 20'b01111111001110000101;
    n144[748] = 20'b01111111001000011000;
    n144[747] = 20'b01111111000010011000;
    n144[746] = 20'b01111110111100000101;
    n144[745] = 20'b01111110110101011101;
    n144[744] = 20'b01111110101110100011;
    n144[743] = 20'b01111110100111010100;
    n144[742] = 20'b01111110011111110011;
    n144[741] = 20'b01111110010111111101;
    n144[740] = 20'b01111110001111110101;
    n144[739] = 20'b01111110000111011000;
    n144[738] = 20'b01111101111110101001;
    n144[737] = 20'b01111101110101100101;
    n144[736] = 20'b01111101101100001111;
    n144[735] = 20'b01111101100010100101;
    n144[734] = 20'b01111101011000101000;
    n144[733] = 20'b01111101001110010111;
    n144[732] = 20'b01111101000011110011;
    n144[731] = 20'b01111100111000111100;
    n144[730] = 20'b01111100101101110001;
    n144[729] = 20'b01111100100010010100;
    n144[728] = 20'b01111100010110100011;
    n144[727] = 20'b01111100001010011111;
    n144[726] = 20'b01111011111110001000;
    n144[725] = 20'b01111011110001011101;
    n144[724] = 20'b01111011100100100000;
    n144[723] = 20'b01111011010111001111;
    n144[722] = 20'b01111011001001101100;
    n144[721] = 20'b01111010111011110101;
    n144[720] = 20'b01111010101101101100;
    n144[719] = 20'b01111010011111001111;
    n144[718] = 20'b01111010010000100000;
    n144[717] = 20'b01111010000001011110;
    n144[716] = 20'b01111001110010001001;
    n144[715] = 20'b01111001100010100001;
    n144[714] = 20'b01111001010010100111;
    n144[713] = 20'b01111001000010011010;
    n144[712] = 20'b01111000110001111010;
    n144[711] = 20'b01111000100001000111;
    n144[710] = 20'b01111000010000000010;
    n144[709] = 20'b01110111111110101011;
    n144[708] = 20'b01110111101101000001;
    n144[707] = 20'b01110111011011000100;
    n144[706] = 20'b01110111001000110101;
    n144[705] = 20'b01110110110110010100;
    n144[704] = 20'b01110110100011100000;
    n144[703] = 20'b01110110010000011010;
    n144[702] = 20'b01110101111101000010;
    n144[701] = 20'b01110101101001010111;
    n144[700] = 20'b01110101010101011011;
    n144[699] = 20'b01110101000001001100;
    n144[698] = 20'b01110100101100101100;
    n144[697] = 20'b01110100010111111001;
    n144[696] = 20'b01110100000010110100;
    n144[695] = 20'b01110011101101011110;
    n144[694] = 20'b01110011010111110101;
    n144[693] = 20'b01110011000001111011;
    n144[692] = 20'b01110010101011101111;
    n144[691] = 20'b01110010010101010010;
    n144[690] = 20'b01110001111110100011;
    n144[689] = 20'b01110001100111100010;
    n144[688] = 20'b01110001010000010000;
    n144[687] = 20'b01110000111000101100;
    n144[686] = 20'b01110000100000110111;
    n144[685] = 20'b01110000001000110000;
    n144[684] = 20'b01101111110000011000;
    n144[683] = 20'b01101111010111101111;
    n144[682] = 20'b01101110111110110101;
    n144[681] = 20'b01101110100101101010;
    n144[680] = 20'b01101110001100001101;
    n144[679] = 20'b01101101110010100000;
    n144[678] = 20'b01101101011000100010;
    n144[677] = 20'b01101100111110010010;
    n144[676] = 20'b01101100100011110010;
    n144[675] = 20'b01101100001001000010;
    n144[674] = 20'b01101011101110000000;
    n144[673] = 20'b01101011010010101110;
    n144[672] = 20'b01101010110111001100;
    n144[671] = 20'b01101010011011011001;
    n144[670] = 20'b01101001111111010101;
    n144[669] = 20'b01101001100011000001;
    n144[668] = 20'b01101001000110011101;
    n144[667] = 20'b01101000101001101001;
    n144[666] = 20'b01101000001100100101;
    n144[665] = 20'b01100111101111010000;
    n144[664] = 20'b01100111010001101100;
    n144[663] = 20'b01100110110011110111;
    n144[662] = 20'b01100110010101110011;
    n144[661] = 20'b01100101110111011111;
    n144[660] = 20'b01100101011000111011;
    n144[659] = 20'b01100100111010001000;
    n144[658] = 20'b01100100011011000101;
    n144[657] = 20'b01100011111011110010;
    n144[656] = 20'b01100011011100010001;
    n144[655] = 20'b01100010111100011111;
    n144[654] = 20'b01100010011100011111;
    n144[653] = 20'b01100001111100001111;
    n144[652] = 20'b01100001011011110001;
    n144[651] = 20'b01100000111011000011;
    n144[650] = 20'b01100000011010000110;
    n144[649] = 20'b01011111111000111010;
    n144[648] = 20'b01011111010111100000;
    n144[647] = 20'b01011110110101110111;
    n144[646] = 20'b01011110010011111111;
    n144[645] = 20'b01011101110001111001;
    n144[644] = 20'b01011101001111100100;
    n144[643] = 20'b01011100101101000001;
    n144[642] = 20'b01011100001010010000;
    n144[641] = 20'b01011011100111010000;
    n144[640] = 20'b01011011000100000011;
    n144[639] = 20'b01011010100000100111;
    n144[638] = 20'b01011001111100111101;
    n144[637] = 20'b01011001011001000110;
    n144[636] = 20'b01011000110101000000;
    n144[635] = 20'b01011000010000101101;
    n144[634] = 20'b01010111101100001100;
    n144[633] = 20'b01010111000111011110;
    n144[632] = 20'b01010110100010100011;
    n144[631] = 20'b01010101111101011010;
    n144[630] = 20'b01010101011000000011;
    n144[629] = 20'b01010100110010100000;
    n144[628] = 20'b01010100001100101111;
    n144[627] = 20'b01010011100110110010;
    n144[626] = 20'b01010011000000101000;
    n144[625] = 20'b01010010011010010001;
    n144[624] = 20'b01010001110011101101;
    n144[623] = 20'b01010001001100111100;
    n144[622] = 20'b01010000100101111111;
    n144[621] = 20'b01001111111110110110;
    n144[620] = 20'b01001111010111100000;
    n144[619] = 20'b01001110101111111110;
    n144[618] = 20'b01001110001000010000;
    n144[617] = 20'b01001101100000010110;
    n144[616] = 20'b01001100111000001111;
    n144[615] = 20'b01001100001111111101;
    n144[614] = 20'b01001011100111100000;
    n144[613] = 20'b01001010111110110110;
    n144[612] = 20'b01001010010110000001;
    n144[611] = 20'b01001001101101000001;
    n144[610] = 20'b01001001000011110101;
    n144[609] = 20'b01001000011010011110;
    n144[608] = 20'b01000111110000111100;
    n144[607] = 20'b01000111000111001110;
    n144[606] = 20'b01000110011101010110;
    n144[605] = 20'b01000101110011010011;
    n144[604] = 20'b01000101001001000101;
    n144[603] = 20'b01000100011110101100;
    n144[602] = 20'b01000011110100001001;
    n144[601] = 20'b01000011001001011100;
    n144[600] = 20'b01000010011110100100;
    n144[599] = 20'b01000001110011100001;
    n144[598] = 20'b01000001001000010101;
    n144[597] = 20'b01000000011100111111;
    n144[596] = 20'b00111111110001011110;
    n144[595] = 20'b00111111000101110100;
    n144[594] = 20'b00111110011010000000;
    n144[593] = 20'b00111101101110000011;
    n144[592] = 20'b00111101000001111100;
    n144[591] = 20'b00111100010101101011;
    n144[590] = 20'b00111011101001010001;
    n144[589] = 20'b00111010111100101110;
    n144[588] = 20'b00111010010000000010;
    n144[587] = 20'b00111001100011001101;
    n144[586] = 20'b00111000110110001111;
    n144[585] = 20'b00111000001001001001;
    n144[584] = 20'b00110111011011111001;
    n144[583] = 20'b00110110101110100010;
    n144[582] = 20'b00110110000001000001;
    n144[581] = 20'b00110101010011011001;
    n144[580] = 20'b00110100100101101000;
    n144[579] = 20'b00110011110111101111;
    n144[578] = 20'b00110011001001101110;
    n144[577] = 20'b00110010011011100101;
    n144[576] = 20'b00110001101101010100;
    n144[575] = 20'b00110000111110111100;
    n144[574] = 20'b00110000010000011100;
    n144[573] = 20'b00101111100001110101;
    n144[572] = 20'b00101110110011000110;
    n144[571] = 20'b00101110000100010000;
    n144[570] = 20'b00101101010101010011;
    n144[569] = 20'b00101100100110001111;
    n144[568] = 20'b00101011110111000101;
    n144[567] = 20'b00101011000111110011;
    n144[566] = 20'b00101010011000011011;
    n144[565] = 20'b00101001101000111100;
    n144[564] = 20'b00101000111001010111;
    n144[563] = 20'b00101000001001101011;
    n144[562] = 20'b00100111011001111010;
    n144[561] = 20'b00100110101010000010;
    n144[560] = 20'b00100101111010000100;
    n144[559] = 20'b00100101001010000000;
    n144[558] = 20'b00100100011001110111;
    n144[557] = 20'b00100011101001101000;
    n144[556] = 20'b00100010111001010100;
    n144[555] = 20'b00100010001000111010;
    n144[554] = 20'b00100001011000011011;
    n144[553] = 20'b00100000100111110111;
    n144[552] = 20'b00011111110111001110;
    n144[551] = 20'b00011111000110011111;
    n144[550] = 20'b00011110010101101100;
    n144[549] = 20'b00011101100100110101;
    n144[548] = 20'b00011100110011111001;
    n144[547] = 20'b00011100000010111000;
    n144[546] = 20'b00011011010001110011;
    n144[545] = 20'b00011010100000101010;
    n144[544] = 20'b00011001101111011101;
    n144[543] = 20'b00011000111110001011;
    n144[542] = 20'b00011000001100110110;
    n144[541] = 20'b00010111011011011101;
    n144[540] = 20'b00010110101010000001;
    n144[539] = 20'b00010101111000100001;
    n144[538] = 20'b00010101000110111110;
    n144[537] = 20'b00010100010101010111;
    n144[536] = 20'b00010011100011101110;
    n144[535] = 20'b00010010110010000001;
    n144[534] = 20'b00010010000000010001;
    n144[533] = 20'b00010001001110011111;
    n144[532] = 20'b00010000011100101010;
    n144[531] = 20'b00001111101010110010;
    n144[530] = 20'b00001110111000111000;
    n144[529] = 20'b00001110000110111100;
    n144[528] = 20'b00001101010100111110;
    n144[527] = 20'b00001100100010111101;
    n144[526] = 20'b00001011110000111011;
    n144[525] = 20'b00001010111110110110;
    n144[524] = 20'b00001010001100110000;
    n144[523] = 20'b00001001011010101001;
    n144[522] = 20'b00001000101000100000;
    n144[521] = 20'b00000111110110010110;
    n144[520] = 20'b00000111000100001010;
    n144[519] = 20'b00000110010001111110;
    n144[518] = 20'b00000101011111110000;
    n144[517] = 20'b00000100101101100010;
    n144[516] = 20'b00000011111011010010;
    n144[515] = 20'b00000011001001000011;
    n144[514] = 20'b00000010010110110010;
    n144[513] = 20'b00000001100100100010;
    n144[512] = 20'b00000000110010010001;
    n144[511] = 20'b00000000000000000000;
    n144[510] = 20'b11111111001101101111;
    n144[509] = 20'b11111110011011011110;
    n144[508] = 20'b11111101101001001110;
    n144[507] = 20'b11111100110110111101;
    n144[506] = 20'b11111100000100101110;
    n144[505] = 20'b11111011010010011110;
    n144[504] = 20'b11111010100000010000;
    n144[503] = 20'b11111001101110000010;
    n144[502] = 20'b11111000111011110110;
    n144[501] = 20'b11111000001001101010;
    n144[500] = 20'b11110111010111100000;
    n144[499] = 20'b11110110100101010111;
    n144[498] = 20'b11110101110011010000;
    n144[497] = 20'b11110101000001001010;
    n144[496] = 20'b11110100001111000101;
    n144[495] = 20'b11110011011101000011;
    n144[494] = 20'b11110010101011000010;
    n144[493] = 20'b11110001111001000100;
    n144[492] = 20'b11110001000111001000;
    n144[491] = 20'b11110000010101001110;
    n144[490] = 20'b11101111100011010110;
    n144[489] = 20'b11101110110001100001;
    n144[488] = 20'b11101101111111101111;
    n144[487] = 20'b11101101001101111111;
    n144[486] = 20'b11101100011100010010;
    n144[485] = 20'b11101011101010101001;
    n144[484] = 20'b11101010111001000010;
    n144[483] = 20'b11101010000111011111;
    n144[482] = 20'b11101001010101111111;
    n144[481] = 20'b11101000100100100011;
    n144[480] = 20'b11100111110011001010;
    n144[479] = 20'b11100111000001110101;
    n144[478] = 20'b11100110010000100011;
    n144[477] = 20'b11100101011111010110;
    n144[476] = 20'b11100100101110001101;
    n144[475] = 20'b11100011111101001000;
    n144[474] = 20'b11100011001100000111;
    n144[473] = 20'b11100010011011001011;
    n144[472] = 20'b11100001101010010100;
    n144[471] = 20'b11100000111001100001;
    n144[470] = 20'b11100000001000110010;
    n144[469] = 20'b11011111011000001001;
    n144[468] = 20'b11011110100111100101;
    n144[467] = 20'b11011101110111000110;
    n144[466] = 20'b11011101000110101100;
    n144[465] = 20'b11011100010110011000;
    n144[464] = 20'b11011011100110001001;
    n144[463] = 20'b11011010110110000000;
    n144[462] = 20'b11011010000101111100;
    n144[461] = 20'b11011001010101111110;
    n144[460] = 20'b11011000100110000110;
    n144[459] = 20'b11010111110110010101;
    n144[458] = 20'b11010111000110101001;
    n144[457] = 20'b11010110010111000100;
    n144[456] = 20'b11010101100111100101;
    n144[455] = 20'b11010100111000001101;
    n144[454] = 20'b11010100001000111011;
    n144[453] = 20'b11010011011001110001;
    n144[452] = 20'b11010010101010101101;
    n144[451] = 20'b11010001111011110000;
    n144[450] = 20'b11010001001100111010;
    n144[449] = 20'b11010000011110001011;
    n144[448] = 20'b11001111101111100100;
    n144[447] = 20'b11001111000001000100;
    n144[446] = 20'b11001110010010101100;
    n144[445] = 20'b11001101100100011011;
    n144[444] = 20'b11001100110110010010;
    n144[443] = 20'b11001100001000010001;
    n144[442] = 20'b11001011011010011000;
    n144[441] = 20'b11001010101100100111;
    n144[440] = 20'b11001001111110111111;
    n144[439] = 20'b11001001010001011110;
    n144[438] = 20'b11001000100100000111;
    n144[437] = 20'b11000111110110110111;
    n144[436] = 20'b11000111001001110001;
    n144[435] = 20'b11000110011100110011;
    n144[434] = 20'b11000101101111111110;
    n144[433] = 20'b11000101000011010010;
    n144[432] = 20'b11000100010110101111;
    n144[431] = 20'b11000011101010010101;
    n144[430] = 20'b11000010111110000100;
    n144[429] = 20'b11000010010001111101;
    n144[428] = 20'b11000001100110000000;
    n144[427] = 20'b11000000111010001100;
    n144[426] = 20'b11000000001110100010;
    n144[425] = 20'b10111111100011000001;
    n144[424] = 20'b10111110110111101011;
    n144[423] = 20'b10111110001100011111;
    n144[422] = 20'b10111101100001011100;
    n144[421] = 20'b10111100110110100100;
    n144[420] = 20'b10111100001011110111;
    n144[419] = 20'b10111011100001010100;
    n144[418] = 20'b10111010110110111011;
    n144[417] = 20'b10111010001100101101;
    n144[416] = 20'b10111001100010101010;
    n144[415] = 20'b10111000111000110010;
    n144[414] = 20'b10111000001111000100;
    n144[413] = 20'b10110111100101100010;
    n144[412] = 20'b10110110111100001011;
    n144[411] = 20'b10110110010010111111;
    n144[410] = 20'b10110101101001111111;
    n144[409] = 20'b10110101000001001010;
    n144[408] = 20'b10110100011000100000;
    n144[407] = 20'b10110011110000000011;
    n144[406] = 20'b10110011000111110001;
    n144[405] = 20'b10110010011111101010;
    n144[404] = 20'b10110001110111110000;
    n144[403] = 20'b10110001010000000010;
    n144[402] = 20'b10110000101000100000;
    n144[401] = 20'b10110000000001001010;
    n144[400] = 20'b10101111011010000001;
    n144[399] = 20'b10101110110011000100;
    n144[398] = 20'b10101110001100010011;
    n144[397] = 20'b10101101100101101111;
    n144[396] = 20'b10101100111111011000;
    n144[395] = 20'b10101100011001001110;
    n144[394] = 20'b10101011110011010001;
    n144[393] = 20'b10101011001101100000;
    n144[392] = 20'b10101010100111111101;
    n144[391] = 20'b10101010000010100110;
    n144[390] = 20'b10101001011101011101;
    n144[389] = 20'b10101000111000100010;
    n144[388] = 20'b10101000010011110100;
    n144[387] = 20'b10100111101111010011;
    n144[386] = 20'b10100111001011000000;
    n144[385] = 20'b10100110100110111010;
    n144[384] = 20'b10100110000011000011;
    n144[383] = 20'b10100101011111011001;
    n144[382] = 20'b10100100111011111101;
    n144[381] = 20'b10100100011000110000;
    n144[380] = 20'b10100011110101110000;
    n144[379] = 20'b10100011010010111111;
    n144[378] = 20'b10100010110000011100;
    n144[377] = 20'b10100010001110000111;
    n144[376] = 20'b10100001101100000001;
    n144[375] = 20'b10100001001010001001;
    n144[374] = 20'b10100000101000100000;
    n144[373] = 20'b10100000000111000110;
    n144[372] = 20'b10011111100101111010;
    n144[371] = 20'b10011111000100111101;
    n144[370] = 20'b10011110100100001111;
    n144[369] = 20'b10011110000011110001;
    n144[368] = 20'b10011101100011100001;
    n144[367] = 20'b10011101000011100001;
    n144[366] = 20'b10011100100011101111;
    n144[365] = 20'b10011100000100001110;
    n144[364] = 20'b10011011100100111011;
    n144[363] = 20'b10011011000101111000;
    n144[362] = 20'b10011010100111000101;
    n144[361] = 20'b10011010001000100001;
    n144[360] = 20'b10011001101010001101;
    n144[359] = 20'b10011001001100001001;
    n144[358] = 20'b10011000101110010100;
    n144[357] = 20'b10011000010000110000;
    n144[356] = 20'b10010111110011011011;
    n144[355] = 20'b10010111010110010111;
    n144[354] = 20'b10010110111001100011;
    n144[353] = 20'b10010110011100111111;
    n144[352] = 20'b10010110000000101011;
    n144[351] = 20'b10010101100100100111;
    n144[350] = 20'b10010101001000110100;
    n144[349] = 20'b10010100101101010010;
    n144[348] = 20'b10010100010010000000;
    n144[347] = 20'b10010011110110111110;
    n144[346] = 20'b10010011011100001110;
    n144[345] = 20'b10010011000001101110;
    n144[344] = 20'b10010010100111011110;
    n144[343] = 20'b10010010001101100000;
    n144[342] = 20'b10010001110011110011;
    n144[341] = 20'b10010001011010010110;
    n144[340] = 20'b10010001000001001011;
    n144[339] = 20'b10010000101000010001;
    n144[338] = 20'b10010000001111101000;
    n144[337] = 20'b10001111110111010000;
    n144[336] = 20'b10001111011111001001;
    n144[335] = 20'b10001111000111010100;
    n144[334] = 20'b10001110101111110000;
    n144[333] = 20'b10001110011000011110;
    n144[332] = 20'b10001110000001011101;
    n144[331] = 20'b10001101101010101110;
    n144[330] = 20'b10001101010100010001;
    n144[329] = 20'b10001100111110000101;
    n144[328] = 20'b10001100101000001011;
    n144[327] = 20'b10001100010010100010;
    n144[326] = 20'b10001011111101001100;
    n144[325] = 20'b10001011101000000111;
    n144[324] = 20'b10001011010011010100;
    n144[323] = 20'b10001010111110110100;
    n144[322] = 20'b10001010101010100101;
    n144[321] = 20'b10001010010110101001;
    n144[320] = 20'b10001010000010111110;
    n144[319] = 20'b10001001101111100110;
    n144[318] = 20'b10001001011100100000;
    n144[317] = 20'b10001001001001101100;
    n144[316] = 20'b10001000110111001011;
    n144[315] = 20'b10001000100100111100;
    n144[314] = 20'b10001000010010111111;
    n144[313] = 20'b10001000000001010101;
    n144[312] = 20'b10000111101111111110;
    n144[311] = 20'b10000111011110111001;
    n144[310] = 20'b10000111001110000110;
    n144[309] = 20'b10000110111101100110;
    n144[308] = 20'b10000110101101011001;
    n144[307] = 20'b10000110011101011111;
    n144[306] = 20'b10000110001101110111;
    n144[305] = 20'b10000101111110100010;
    n144[304] = 20'b10000101101111100000;
    n144[303] = 20'b10000101100000110001;
    n144[302] = 20'b10000101010010010100;
    n144[301] = 20'b10000101000100001011;
    n144[300] = 20'b10000100110110010100;
    n144[299] = 20'b10000100101000110001;
    n144[298] = 20'b10000100011011100000;
    n144[297] = 20'b10000100001110100011;
    n144[296] = 20'b10000100000001111000;
    n144[295] = 20'b10000011110101100001;
    n144[294] = 20'b10000011101001011101;
    n144[293] = 20'b10000011011101101100;
    n144[292] = 20'b10000011010010001111;
    n144[291] = 20'b10000011000111000100;
    n144[290] = 20'b10000010111100001101;
    n144[289] = 20'b10000010110001101001;
    n144[288] = 20'b10000010100111011000;
    n144[287] = 20'b10000010011101011011;
    n144[286] = 20'b10000010010011110001;
    n144[285] = 20'b10000010001010011011;
    n144[284] = 20'b10000010000001010111;
    n144[283] = 20'b10000001111000101000;
    n144[282] = 20'b10000001110000001011;
    n144[281] = 20'b10000001101000000011;
    n144[280] = 20'b10000001100000001101;
    n144[279] = 20'b10000001011000101100;
    n144[278] = 20'b10000001010001011101;
    n144[277] = 20'b10000001001010100011;
    n144[276] = 20'b10000001000011111011;
    n144[275] = 20'b10000000111101101000;
    n144[274] = 20'b10000000110111101000;
    n144[273] = 20'b10000000110001111011;
    n144[272] = 20'b10000000101100100011;
    n144[271] = 20'b10000000100111011110;
    n144[270] = 20'b10000000100010101100;
    n144[269] = 20'b10000000011110001110;
    n144[268] = 20'b10000000011010000100;
    n144[267] = 20'b10000000010110001110;
    n144[266] = 20'b10000000010010101011;
    n144[265] = 20'b10000000001111011100;
    n144[264] = 20'b10000000001100100000;
    n144[263] = 20'b10000000001001111001;
    n144[262] = 20'b10000000000111100101;
    n144[261] = 20'b10000000000101100100;
    n144[260] = 20'b10000000000011111000;
    n144[259] = 20'b10000000000010011111;
    n144[258] = 20'b10000000000001011010;
    n144[257] = 20'b10000000000000101000;
    n144[256] = 20'b10000000000000001011;
    n144[255] = 20'b10000000000000000001;
    n144[254] = 20'b10000000000000001011;
    n144[253] = 20'b10000000000000101000;
    n144[252] = 20'b10000000000001011010;
    n144[251] = 20'b10000000000010011111;
    n144[250] = 20'b10000000000011111000;
    n144[249] = 20'b10000000000101100100;
    n144[248] = 20'b10000000000111100101;
    n144[247] = 20'b10000000001001111001;
    n144[246] = 20'b10000000001100100000;
    n144[245] = 20'b10000000001111011100;
    n144[244] = 20'b10000000010010101011;
    n144[243] = 20'b10000000010110001110;
    n144[242] = 20'b10000000011010000100;
    n144[241] = 20'b10000000011110001110;
    n144[240] = 20'b10000000100010101100;
    n144[239] = 20'b10000000100111011110;
    n144[238] = 20'b10000000101100100011;
    n144[237] = 20'b10000000110001111011;
    n144[236] = 20'b10000000110111101000;
    n144[235] = 20'b10000000111101101000;
    n144[234] = 20'b10000001000011111011;
    n144[233] = 20'b10000001001010100011;
    n144[232] = 20'b10000001010001011101;
    n144[231] = 20'b10000001011000101100;
    n144[230] = 20'b10000001100000001101;
    n144[229] = 20'b10000001101000000011;
    n144[228] = 20'b10000001110000001011;
    n144[227] = 20'b10000001111000101000;
    n144[226] = 20'b10000010000001010111;
    n144[225] = 20'b10000010001010011011;
    n144[224] = 20'b10000010010011110001;
    n144[223] = 20'b10000010011101011011;
    n144[222] = 20'b10000010100111011000;
    n144[221] = 20'b10000010110001101001;
    n144[220] = 20'b10000010111100001101;
    n144[219] = 20'b10000011000111000100;
    n144[218] = 20'b10000011010010001111;
    n144[217] = 20'b10000011011101101100;
    n144[216] = 20'b10000011101001011101;
    n144[215] = 20'b10000011110101100001;
    n144[214] = 20'b10000100000001111000;
    n144[213] = 20'b10000100001110100011;
    n144[212] = 20'b10000100011011100000;
    n144[211] = 20'b10000100101000110001;
    n144[210] = 20'b10000100110110010100;
    n144[209] = 20'b10000101000100001011;
    n144[208] = 20'b10000101010010010100;
    n144[207] = 20'b10000101100000110001;
    n144[206] = 20'b10000101101111100000;
    n144[205] = 20'b10000101111110100010;
    n144[204] = 20'b10000110001101110111;
    n144[203] = 20'b10000110011101011111;
    n144[202] = 20'b10000110101101011001;
    n144[201] = 20'b10000110111101100110;
    n144[200] = 20'b10000111001110000110;
    n144[199] = 20'b10000111011110111001;
    n144[198] = 20'b10000111101111111110;
    n144[197] = 20'b10001000000001010101;
    n144[196] = 20'b10001000010010111111;
    n144[195] = 20'b10001000100100111100;
    n144[194] = 20'b10001000110111001011;
    n144[193] = 20'b10001001001001101100;
    n144[192] = 20'b10001001011100100000;
    n144[191] = 20'b10001001101111100110;
    n144[190] = 20'b10001010000010111110;
    n144[189] = 20'b10001010010110101001;
    n144[188] = 20'b10001010101010100101;
    n144[187] = 20'b10001010111110110100;
    n144[186] = 20'b10001011010011010100;
    n144[185] = 20'b10001011101000000111;
    n144[184] = 20'b10001011111101001100;
    n144[183] = 20'b10001100010010100010;
    n144[182] = 20'b10001100101000001011;
    n144[181] = 20'b10001100111110000101;
    n144[180] = 20'b10001101010100010001;
    n144[179] = 20'b10001101101010101110;
    n144[178] = 20'b10001110000001011101;
    n144[177] = 20'b10001110011000011110;
    n144[176] = 20'b10001110101111110000;
    n144[175] = 20'b10001111000111010100;
    n144[174] = 20'b10001111011111001001;
    n144[173] = 20'b10001111110111010000;
    n144[172] = 20'b10010000001111101000;
    n144[171] = 20'b10010000101000010001;
    n144[170] = 20'b10010001000001001011;
    n144[169] = 20'b10010001011010010110;
    n144[168] = 20'b10010001110011110011;
    n144[167] = 20'b10010010001101100000;
    n144[166] = 20'b10010010100111011110;
    n144[165] = 20'b10010011000001101110;
    n144[164] = 20'b10010011011100001110;
    n144[163] = 20'b10010011110110111110;
    n144[162] = 20'b10010100010010000000;
    n144[161] = 20'b10010100101101010010;
    n144[160] = 20'b10010101001000110100;
    n144[159] = 20'b10010101100100100111;
    n144[158] = 20'b10010110000000101011;
    n144[157] = 20'b10010110011100111111;
    n144[156] = 20'b10010110111001100011;
    n144[155] = 20'b10010111010110010111;
    n144[154] = 20'b10010111110011011011;
    n144[153] = 20'b10011000010000110000;
    n144[152] = 20'b10011000101110010100;
    n144[151] = 20'b10011001001100001001;
    n144[150] = 20'b10011001101010001101;
    n144[149] = 20'b10011010001000100001;
    n144[148] = 20'b10011010100111000101;
    n144[147] = 20'b10011011000101111000;
    n144[146] = 20'b10011011100100111011;
    n144[145] = 20'b10011100000100001110;
    n144[144] = 20'b10011100100011101111;
    n144[143] = 20'b10011101000011100001;
    n144[142] = 20'b10011101100011100001;
    n144[141] = 20'b10011110000011110001;
    n144[140] = 20'b10011110100100001111;
    n144[139] = 20'b10011111000100111101;
    n144[138] = 20'b10011111100101111010;
    n144[137] = 20'b10100000000111000110;
    n144[136] = 20'b10100000101000100000;
    n144[135] = 20'b10100001001010001001;
    n144[134] = 20'b10100001101100000001;
    n144[133] = 20'b10100010001110000111;
    n144[132] = 20'b10100010110000011100;
    n144[131] = 20'b10100011010010111111;
    n144[130] = 20'b10100011110101110000;
    n144[129] = 20'b10100100011000110000;
    n144[128] = 20'b10100100111011111101;
    n144[127] = 20'b10100101011111011001;
    n144[126] = 20'b10100110000011000011;
    n144[125] = 20'b10100110100110111010;
    n144[124] = 20'b10100111001011000000;
    n144[123] = 20'b10100111101111010011;
    n144[122] = 20'b10101000010011110100;
    n144[121] = 20'b10101000111000100010;
    n144[120] = 20'b10101001011101011101;
    n144[119] = 20'b10101010000010100110;
    n144[118] = 20'b10101010100111111101;
    n144[117] = 20'b10101011001101100000;
    n144[116] = 20'b10101011110011010001;
    n144[115] = 20'b10101100011001001110;
    n144[114] = 20'b10101100111111011000;
    n144[113] = 20'b10101101100101101111;
    n144[112] = 20'b10101110001100010011;
    n144[111] = 20'b10101110110011000100;
    n144[110] = 20'b10101111011010000001;
    n144[109] = 20'b10110000000001001010;
    n144[108] = 20'b10110000101000100000;
    n144[107] = 20'b10110001010000000010;
    n144[106] = 20'b10110001110111110000;
    n144[105] = 20'b10110010011111101010;
    n144[104] = 20'b10110011000111110001;
    n144[103] = 20'b10110011110000000011;
    n144[102] = 20'b10110100011000100000;
    n144[101] = 20'b10110101000001001010;
    n144[100] = 20'b10110101101001111111;
    n144[99] = 20'b10110110010010111111;
    n144[98] = 20'b10110110111100001011;
    n144[97] = 20'b10110111100101100010;
    n144[96] = 20'b10111000001111000100;
    n144[95] = 20'b10111000111000110010;
    n144[94] = 20'b10111001100010101010;
    n144[93] = 20'b10111010001100101101;
    n144[92] = 20'b10111010110110111011;
    n144[91] = 20'b10111011100001010100;
    n144[90] = 20'b10111100001011110111;
    n144[89] = 20'b10111100110110100100;
    n144[88] = 20'b10111101100001011100;
    n144[87] = 20'b10111110001100011111;
    n144[86] = 20'b10111110110111101011;
    n144[85] = 20'b10111111100011000001;
    n144[84] = 20'b11000000001110100010;
    n144[83] = 20'b11000000111010001100;
    n144[82] = 20'b11000001100110000000;
    n144[81] = 20'b11000010010001111101;
    n144[80] = 20'b11000010111110000100;
    n144[79] = 20'b11000011101010010101;
    n144[78] = 20'b11000100010110101111;
    n144[77] = 20'b11000101000011010010;
    n144[76] = 20'b11000101101111111110;
    n144[75] = 20'b11000110011100110011;
    n144[74] = 20'b11000111001001110001;
    n144[73] = 20'b11000111110110110111;
    n144[72] = 20'b11001000100100000111;
    n144[71] = 20'b11001001010001011110;
    n144[70] = 20'b11001001111110111111;
    n144[69] = 20'b11001010101100100111;
    n144[68] = 20'b11001011011010011000;
    n144[67] = 20'b11001100001000010001;
    n144[66] = 20'b11001100110110010010;
    n144[65] = 20'b11001101100100011011;
    n144[64] = 20'b11001110010010101100;
    n144[63] = 20'b11001111000001000100;
    n144[62] = 20'b11001111101111100100;
    n144[61] = 20'b11010000011110001011;
    n144[60] = 20'b11010001001100111010;
    n144[59] = 20'b11010001111011110000;
    n144[58] = 20'b11010010101010101101;
    n144[57] = 20'b11010011011001110001;
    n144[56] = 20'b11010100001000111011;
    n144[55] = 20'b11010100111000001101;
    n144[54] = 20'b11010101100111100101;
    n144[53] = 20'b11010110010111000100;
    n144[52] = 20'b11010111000110101001;
    n144[51] = 20'b11010111110110010101;
    n144[50] = 20'b11011000100110000110;
    n144[49] = 20'b11011001010101111110;
    n144[48] = 20'b11011010000101111100;
    n144[47] = 20'b11011010110110000000;
    n144[46] = 20'b11011011100110001001;
    n144[45] = 20'b11011100010110011000;
    n144[44] = 20'b11011101000110101100;
    n144[43] = 20'b11011101110111000110;
    n144[42] = 20'b11011110100111100101;
    n144[41] = 20'b11011111011000001001;
    n144[40] = 20'b11100000001000110010;
    n144[39] = 20'b11100000111001100001;
    n144[38] = 20'b11100001101010010100;
    n144[37] = 20'b11100010011011001011;
    n144[36] = 20'b11100011001100000111;
    n144[35] = 20'b11100011111101001000;
    n144[34] = 20'b11100100101110001101;
    n144[33] = 20'b11100101011111010110;
    n144[32] = 20'b11100110010000100011;
    n144[31] = 20'b11100111000001110101;
    n144[30] = 20'b11100111110011001010;
    n144[29] = 20'b11101000100100100011;
    n144[28] = 20'b11101001010101111111;
    n144[27] = 20'b11101010000111011111;
    n144[26] = 20'b11101010111001000010;
    n144[25] = 20'b11101011101010101001;
    n144[24] = 20'b11101100011100010010;
    n144[23] = 20'b11101101001101111111;
    n144[22] = 20'b11101101111111101111;
    n144[21] = 20'b11101110110001100001;
    n144[20] = 20'b11101111100011010110;
    n144[19] = 20'b11110000010101001110;
    n144[18] = 20'b11110001000111001000;
    n144[17] = 20'b11110001111001000100;
    n144[16] = 20'b11110010101011000010;
    n144[15] = 20'b11110011011101000011;
    n144[14] = 20'b11110100001111000101;
    n144[13] = 20'b11110101000001001010;
    n144[12] = 20'b11110101110011010000;
    n144[11] = 20'b11110110100101010111;
    n144[10] = 20'b11110111010111100000;
    n144[9] = 20'b11111000001001101010;
    n144[8] = 20'b11111000111011110110;
    n144[7] = 20'b11111001101110000010;
    n144[6] = 20'b11111010100000010000;
    n144[5] = 20'b11111011010010011110;
    n144[4] = 20'b11111100000100101110;
    n144[3] = 20'b11111100110110111101;
    n144[2] = 20'b11111101101001001110;
    n144[1] = 20'b11111110011011011110;
    n144[0] = 20'b11111111001101101111;
    end
  always @(posedge clk_b)
    if (1'b1)
      n146_data <= n144[n137_o];
  always @(posedge clk_a)
    if (1'b1)
      n148_data <= n144[n128_o];
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\bram_dp_sin_lut.vhdl:20:9  */
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\bram_dp_sin_lut.vhdl:1070:27  */
endmodule

module zector_dds_ip_32_10_20_16_8
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
  wire [31:0] n34_o;
  wire [9:0] n35_o;
  wire [9:0] n36_o;
  wire [9:0] n38_o;
  wire [29:0] n39_o;
  wire [29:0] n41_o;
  wire [29:0] n42_o;
  wire [36:0] n43_o;
  wire [36:0] n45_o;
  wire [36:0] n46_o;
  wire [36:0] n47_o;
  wire [31:0] n51_o;
  wire [7:0] n52_o;
  wire [20:0] n53_o;
  wire [20:0] n54_o;
  wire [20:0] n55_o;
  wire [20:0] n56_o;
  wire [9:0] n57_o;
  wire [10:0] n59_o;
  wire [8:0] n61_o;
  wire [19:0] n62_o;
  wire [19:0] n63_o;
  wire [19:0] n64_o;
  wire [10:0] n65_o;
  wire [8:0] n67_o;
  wire [19:0] n68_o;
  wire [19:0] n69_o;
  wire [19:0] n70_o;
  wire [29:0] n71_o;
  wire [29:0] n72_o;
  wire [29:0] n74_o;
  wire [29:0] n75_o;
  wire [20:0] n76_o;
  wire [29:0] n77_o;
  wire [29:0] n80_o;
  wire [28:0] n81_o;
  wire [28:0] n84_o;
  wire [7:0] n85_o;
  wire n101_o;
  wire n102_o;
  wire [6:0] n103_o;
  wire [7:0] n104_o;
  reg [31:0] n105_q;
  reg [7:0] n106_q;
  reg [20:0] n107_q;
  reg [20:0] n108_q;
  reg [7:0] n109_q;
  reg [29:0] n110_q;
  reg [20:0] n111_q;
  reg [20:0] n112_q;
  reg [20:0] n114_q;
  reg [7:0] n116_q;
  reg [19:0] n117_q;
  reg [19:0] n118_q;
  reg [29:0] n119_q;
  reg [28:0] n120_q;
  assign y = n104_o; //(module output)
  assign lut_addr_0 = n35_o; //(module output)
  assign lut_addr_1 = n38_o; //(module output)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:39:12  */
  always @*
    accumulator = n105_q; // (isignal)
  initial
    accumulator = 32'b00000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:41:12  */
  always @*
    phase_word = n34_o; // (isignal)
  initial
    phase_word = 32'b00000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:44:12  */
  assign fraction_reg = n106_q; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:47:12  */
  assign diff_reg = n107_q; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:48:12  */
  assign y0_d1 = n108_q; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:49:12  */
  assign fraction_d1 = n109_q; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:52:12  */
  assign product_reg = n110_q; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:53:12  */
  assign y0_d2 = n111_q; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:55:12  */
  assign y0_d3 = n112_q; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:59:12  */
  assign interp_sum = n42_o; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:60:12  */
  assign interp_reg = n114_q; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:65:12  */
  always @*
    dac_reg = n116_q; // (isignal)
  initial
    dac_reg = 8'b00000000;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:71:12  */
  assign interp_lo_prod = n117_q; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:72:12  */
  assign interp_hi_prod = n118_q; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:75:12  */
  assign scale_lo_product = n119_q; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:76:12  */
  assign scale_hi_product = n120_q; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:79:12  */
  assign scale_combined = n47_o; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:106:31  */
  assign n34_o = accumulator + 32'b00000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:109:29  */
  assign n35_o = phase_word[31:22]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:110:29  */
  assign n36_o = phase_word[31:22]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:110:90  */
  assign n38_o = n36_o + 10'b0000000001;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:113:30  */
  assign n39_o = {{9{y0_d3[20]}}, y0_d3}; // sext
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:113:19  */
  assign n41_o = n39_o << 31'b0000000000000000000000000001000;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:113:92  */
  assign n42_o = n41_o + product_reg;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:119:20  */
  assign n43_o = {{8{scale_hi_product[28]}}, scale_hi_product}; // sext
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:119:9  */
  assign n45_o = n43_o << 31'b0000000000000000000000000001000;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:120:11  */
  assign n46_o = {{7{scale_lo_product[29]}}, scale_lo_product}; // sext
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:120:9  */
  assign n47_o = n45_o + n46_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:126:39  */
  assign n51_o = accumulator + 32'b00000000000001101000110110111001;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:129:39  */
  assign n52_o = phase_word[21:14]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:132:25  */
  assign n53_o = {{1{lut_di_1[19]}}, lut_di_1}; // sext
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:132:62  */
  assign n54_o = {{1{lut_di_0[19]}}, lut_di_0}; // sext
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:132:60  */
  assign n55_o = n53_o - n54_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:133:22  */
  assign n56_o = {{1{lut_di_0[19]}}, lut_di_0}; // sext
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:144:52  */
  assign n57_o = diff_reg[9:0]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:144:42  */
  assign n59_o = {1'b0, n57_o};
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:144:79  */
  assign n61_o = {1'b0, fraction_d1};
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:144:66  */
  assign n62_o = {{9{n59_o[10]}}, n59_o}; // sext
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:144:66  */
  assign n63_o = {{11{n61_o[8]}}, n61_o}; // sext
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:144:66  */
  assign n64_o = $signed(n62_o) * $signed(n63_o); // smul
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:145:39  */
  assign n65_o = diff_reg[20:10]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:145:66  */
  assign n67_o = {1'b0, fraction_d1};
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:145:54  */
  assign n68_o = {{9{n65_o[10]}}, n65_o}; // sext
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:145:54  */
  assign n69_o = {{11{n67_o[8]}}, n67_o}; // sext
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:145:54  */
  assign n70_o = $signed(n68_o) * $signed(n69_o); // smul
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:148:28  */
  assign n71_o = {{10{interp_lo_prod[19]}}, interp_lo_prod}; // sext
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:148:68  */
  assign n72_o = {{10{interp_hi_prod[19]}}, interp_hi_prod}; // sext
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:148:57  */
  assign n74_o = n72_o << 31'b0000000000000000000000000001010;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:148:55  */
  assign n75_o = n71_o + n74_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:156:44  */
  assign n76_o = interp_sum[28:8]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:160:28  */
  assign n77_o = {{9{interp_reg[20]}}, interp_reg}; // sext
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:160:28  */
  assign n80_o = $signed(n77_o) * $signed(30'b000000000000000000000011111111); // smul
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:163:28  */
  assign n81_o = {{8{interp_reg[20]}}, interp_reg}; // sext
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:163:28  */
  assign n84_o = $signed(n81_o) * $signed(29'b00000000000000000000001111111); // smul
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:167:38  */
  assign n85_o = scale_combined[34:27]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:171:21  */
  assign n101_o = dac_reg[7]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:171:10  */
  assign n102_o = ~n101_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:171:64  */
  assign n103_o = dac_reg[6:0]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:171:38  */
  assign n104_o = {n102_o, n103_o};
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:124:9  */
  always @(posedge clk)
    n105_q <= n51_o;
  initial
    n105_q = 32'b00000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:124:9  */
  always @(posedge clk)
    n106_q <= n52_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:124:9  */
  always @(posedge clk)
    n107_q <= n55_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:124:9  */
  always @(posedge clk)
    n108_q <= n56_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:124:9  */
  always @(posedge clk)
    n109_q <= fraction_reg;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:124:9  */
  always @(posedge clk)
    n110_q <= n75_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:124:9  */
  always @(posedge clk)
    n111_q <= y0_d1;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:124:9  */
  always @(posedge clk)
    n112_q <= y0_d2;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:124:9  */
  always @(posedge clk)
    n114_q <= n76_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:124:9  */
  always @(posedge clk)
    n116_q <= n85_o;
  initial
    n116_q = 8'b00000000;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:124:9  */
  always @(posedge clk)
    n117_q <= n64_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:124:9  */
  always @(posedge clk)
    n118_q <= n70_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:124:9  */
  always @(posedge clk)
    n119_q <= n80_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_DDS_IP.vhdl:124:9  */
  always @(posedge clk)
    n120_q <= n84_o;
endmodule

module SPI_MEM_TOP
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
  reg [15:0] dds_scale;
  wire [31:0] dds_m;
  reg [31:0] dds_phase;
  wire [31:0] dds_m_bus;
  wire [31:0] dds_scale_bus;
  wire [31:0] dds_phase_bus;
  wire spi_rnw;
  wire [6:0] spi_addr;
  wire [31:0] spi_data;
  wire spi_update;
  wire [31:0] cfg_data_o;
  wire [7:0] dds_out;
  wire [7:0] dds_inst_y;
  wire [9:0] dds_inst_lut_addr_0;
  wire [9:0] dds_inst_lut_addr_1;
  wire [19:0] bram_inst_do_a;
  wire [19:0] bram_inst_do_b;
  localparam n7_o = 1'b0;
  localparam n8_o = 1'b0;
  localparam [19:0] n9_o = 20'b00000000000000000000;
  localparam [19:0] n10_o = 20'b00000000000000000000;
  wire spi_slave_o_miso;
  wire spi_slave_o_rnw;
  wire [6:0] spi_slave_o_addr;
  wire [31:0] spi_slave_o_data;
  wire spi_slave_o_update;
  wire [31:0] cfg_reg_o_do;
  wire [31:0] cfg_reg_o_reg_0;
  wire [31:0] cfg_reg_o_reg_1;
  wire [31:0] cfg_reg_o_reg_2;
  wire n18_o;
  wire [4:0] n19_o;
  wire [15:0] n24_o;
  assign spi_miso = spi_slave_o_miso; //(module output)
  assign dac_out = dds_out; //(module output)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\SPI_MEM_TOP.vhdl:18:12  */
  assign lut_addr_a = dds_inst_lut_addr_0; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\SPI_MEM_TOP.vhdl:19:12  */
  assign lut_addr_b = dds_inst_lut_addr_1; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\SPI_MEM_TOP.vhdl:20:12  */
  assign lut_data_a = bram_inst_do_a; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\SPI_MEM_TOP.vhdl:21:12  */
  assign lut_data_b = bram_inst_do_b; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\SPI_MEM_TOP.vhdl:23:12  */
  always @*
    dds_scale = n24_o; // (isignal)
  initial
    dds_scale = 16'b0111111111111111;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\SPI_MEM_TOP.vhdl:24:12  */
  assign dds_m = dds_m_bus; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\SPI_MEM_TOP.vhdl:25:12  */
  always @*
    dds_phase = dds_phase_bus; // (isignal)
  initial
    dds_phase = 32'b00000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\SPI_MEM_TOP.vhdl:27:12  */
  assign dds_m_bus = cfg_reg_o_reg_0; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\SPI_MEM_TOP.vhdl:28:12  */
  assign dds_scale_bus = cfg_reg_o_reg_1; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\SPI_MEM_TOP.vhdl:29:12  */
  assign dds_phase_bus = cfg_reg_o_reg_2; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\SPI_MEM_TOP.vhdl:31:12  */
  assign spi_rnw = spi_slave_o_rnw; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\SPI_MEM_TOP.vhdl:32:12  */
  assign spi_addr = spi_slave_o_addr; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\SPI_MEM_TOP.vhdl:33:12  */
  assign spi_data = spi_slave_o_data; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\SPI_MEM_TOP.vhdl:34:12  */
  assign spi_update = spi_slave_o_update; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\SPI_MEM_TOP.vhdl:38:12  */
  assign cfg_data_o = cfg_reg_o_do; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\SPI_MEM_TOP.vhdl:40:12  */
  assign dds_out = dds_inst_y; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\SPI_MEM_TOP.vhdl:46:5  */
  zector_dds_ip_32_10_20_16_8 dds_inst (
    .clk(clk_10_MHz),
    .lut_di_0(lut_data_a),
    .lut_di_1(lut_data_b),
    .m(dds_m),
    .phase(dds_phase),
    .scale(dds_scale),
    .y(dds_inst_y),
    .lut_addr_0(dds_inst_lut_addr_0),
    .lut_addr_1(dds_inst_lut_addr_1));
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\SPI_MEM_TOP.vhdl:68:5  */
  bram_dp_sin_lut_20_10 bram_inst (
    .we_a(n7_o),
    .we_b(n8_o),
    .clk_a(clk_10_MHz),
    .clk_b(clk_10_MHz),
    .di_a(n9_o),
    .di_b(n10_o),
    .addr_a(lut_addr_a),
    .addr_b(lut_addr_b),
    .do_a(bram_inst_do_a),
    .do_b(bram_inst_do_b));
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\SPI_MEM_TOP.vhdl:87:5  */
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
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\SPI_MEM_TOP.vhdl:106:5  */
  cfg_registers_32_5 cfg_reg (
    .i_we(n18_o),
    .i_clk(clk_10_MHz),
    .i_update(spi_update),
    .i_di(spi_data),
    .i_addr(n19_o),
    .o_do(cfg_reg_o_do),
    .o_reg_0(cfg_reg_o_reg_0),
    .o_reg_1(cfg_reg_o_reg_1),
    .o_reg_2(cfg_reg_o_reg_2));
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\SPI_MEM_TOP.vhdl:112:28  */
  assign n18_o = ~spi_rnw;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\SPI_MEM_TOP.vhdl:116:36  */
  assign n19_o = spi_addr[4:0]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\SPI_MEM_TOP.vhdl:124:38  */
  assign n24_o = dds_scale_bus[15:0]; // extract
endmodule

