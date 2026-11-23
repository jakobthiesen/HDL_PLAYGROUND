module carry_save_16x16
  (input  clk,
   input  [15:0] a,
   input  [15:0] b,
   output [31:0] p);
  reg [511:0] pp;
  reg [351:0] r1;
  reg [255:0] r2;
  reg [191:0] r3;
  reg [127:0] r4;
  reg [95:0] r5;
  reg [63:0] r6;
  wire n27_o;
  wire [31:0] n28_o;
  wire [31:0] n30_o;
  wire [31:0] n32_o;
  wire n33_o;
  wire [31:0] n34_o;
  wire [31:0] n36_o;
  wire [31:0] n38_o;
  wire n39_o;
  wire [31:0] n40_o;
  wire [31:0] n42_o;
  wire [31:0] n44_o;
  wire n45_o;
  wire [31:0] n46_o;
  wire [31:0] n48_o;
  wire [31:0] n50_o;
  wire n51_o;
  wire [31:0] n52_o;
  wire [31:0] n54_o;
  wire [31:0] n56_o;
  wire n57_o;
  wire [31:0] n58_o;
  wire [31:0] n60_o;
  wire [31:0] n62_o;
  wire n63_o;
  wire [31:0] n64_o;
  wire [31:0] n66_o;
  wire [31:0] n68_o;
  wire n69_o;
  wire [31:0] n70_o;
  wire [31:0] n72_o;
  wire [31:0] n74_o;
  wire n75_o;
  wire [31:0] n76_o;
  wire [31:0] n78_o;
  wire [31:0] n80_o;
  wire n81_o;
  wire [31:0] n82_o;
  wire [31:0] n84_o;
  wire [31:0] n86_o;
  wire n87_o;
  wire [31:0] n88_o;
  wire [31:0] n90_o;
  wire [31:0] n92_o;
  wire n93_o;
  wire [31:0] n94_o;
  wire [31:0] n96_o;
  wire [31:0] n98_o;
  wire n99_o;
  wire [31:0] n100_o;
  wire [31:0] n102_o;
  wire [31:0] n104_o;
  wire n105_o;
  wire [31:0] n106_o;
  wire [31:0] n108_o;
  wire [31:0] n110_o;
  wire n111_o;
  wire [31:0] n112_o;
  wire [31:0] n114_o;
  wire [31:0] n116_o;
  wire n117_o;
  wire [31:0] n118_o;
  wire [31:0] n120_o;
  wire [31:0] n122_o;
  wire [31:0] n124_o;
  wire [31:0] n125_o;
  wire [31:0] n126_o;
  wire [31:0] n131_o;
  wire [31:0] n132_o;
  wire [31:0] n134_o;
  wire [31:0] n135_o;
  wire [31:0] n136_o;
  wire [31:0] n141_o;
  wire [31:0] n142_o;
  wire [31:0] n143_o;
  wire [31:0] n144_o;
  wire [31:0] n145_o;
  wire [31:0] n147_o;
  wire [31:0] n149_o;
  wire [31:0] n150_o;
  wire [31:0] n151_o;
  wire [31:0] n156_o;
  wire [31:0] n157_o;
  wire [31:0] n159_o;
  wire [31:0] n160_o;
  wire [31:0] n161_o;
  wire [31:0] n166_o;
  wire [31:0] n167_o;
  wire [31:0] n168_o;
  wire [31:0] n169_o;
  wire [31:0] n170_o;
  wire [31:0] n172_o;
  wire [31:0] n174_o;
  wire [31:0] n175_o;
  wire [31:0] n176_o;
  wire [31:0] n181_o;
  wire [31:0] n182_o;
  wire [31:0] n184_o;
  wire [31:0] n185_o;
  wire [31:0] n186_o;
  wire [31:0] n191_o;
  wire [31:0] n192_o;
  wire [31:0] n193_o;
  wire [31:0] n194_o;
  wire [31:0] n195_o;
  wire [31:0] n197_o;
  wire [31:0] n199_o;
  wire [31:0] n200_o;
  wire [31:0] n201_o;
  wire [31:0] n206_o;
  wire [31:0] n207_o;
  wire [31:0] n209_o;
  wire [31:0] n210_o;
  wire [31:0] n211_o;
  wire [31:0] n216_o;
  wire [31:0] n217_o;
  wire [31:0] n218_o;
  wire [31:0] n219_o;
  wire [31:0] n220_o;
  wire [31:0] n222_o;
  wire [31:0] n224_o;
  wire [31:0] n225_o;
  wire [31:0] n226_o;
  wire [31:0] n231_o;
  wire [31:0] n232_o;
  wire [31:0] n234_o;
  wire [31:0] n235_o;
  wire [31:0] n236_o;
  wire [31:0] n241_o;
  wire [31:0] n242_o;
  wire [31:0] n243_o;
  wire [31:0] n244_o;
  wire [31:0] n245_o;
  wire [31:0] n247_o;
  wire [31:0] n248_o;
  wire [31:0] n250_o;
  wire [31:0] n251_o;
  wire [31:0] n252_o;
  wire [31:0] n257_o;
  wire [31:0] n258_o;
  wire [31:0] n260_o;
  wire [31:0] n261_o;
  wire [31:0] n262_o;
  wire [31:0] n267_o;
  wire [31:0] n268_o;
  wire [31:0] n269_o;
  wire [31:0] n270_o;
  wire [31:0] n271_o;
  wire [31:0] n273_o;
  wire [31:0] n275_o;
  wire [31:0] n276_o;
  wire [31:0] n277_o;
  wire [31:0] n282_o;
  wire [31:0] n283_o;
  wire [31:0] n285_o;
  wire [31:0] n286_o;
  wire [31:0] n287_o;
  wire [31:0] n292_o;
  wire [31:0] n293_o;
  wire [31:0] n294_o;
  wire [31:0] n295_o;
  wire [31:0] n296_o;
  wire [31:0] n298_o;
  wire [31:0] n300_o;
  wire [31:0] n301_o;
  wire [31:0] n302_o;
  wire [31:0] n307_o;
  wire [31:0] n308_o;
  wire [31:0] n310_o;
  wire [31:0] n311_o;
  wire [31:0] n312_o;
  wire [31:0] n317_o;
  wire [31:0] n318_o;
  wire [31:0] n319_o;
  wire [31:0] n320_o;
  wire [31:0] n321_o;
  wire [31:0] n323_o;
  wire [31:0] n324_o;
  wire [31:0] n325_o;
  wire [31:0] n327_o;
  wire [31:0] n328_o;
  wire [31:0] n329_o;
  wire [31:0] n334_o;
  wire [31:0] n335_o;
  wire [31:0] n337_o;
  wire [31:0] n338_o;
  wire [31:0] n339_o;
  wire [31:0] n344_o;
  wire [31:0] n345_o;
  wire [31:0] n346_o;
  wire [31:0] n347_o;
  wire [31:0] n348_o;
  wire [31:0] n350_o;
  wire [31:0] n352_o;
  wire [31:0] n353_o;
  wire [31:0] n354_o;
  wire [31:0] n359_o;
  wire [31:0] n360_o;
  wire [31:0] n362_o;
  wire [31:0] n363_o;
  wire [31:0] n364_o;
  wire [31:0] n369_o;
  wire [31:0] n370_o;
  wire [31:0] n371_o;
  wire [31:0] n372_o;
  wire [31:0] n373_o;
  wire [31:0] n375_o;
  wire [31:0] n376_o;
  wire [31:0] n377_o;
  wire [31:0] n379_o;
  wire [31:0] n380_o;
  wire [31:0] n381_o;
  wire [31:0] n386_o;
  wire [31:0] n387_o;
  wire [31:0] n389_o;
  wire [31:0] n390_o;
  wire [31:0] n391_o;
  wire [31:0] n396_o;
  wire [31:0] n397_o;
  wire [31:0] n398_o;
  wire [31:0] n399_o;
  wire [31:0] n400_o;
  wire [31:0] n402_o;
  wire [31:0] n404_o;
  wire [31:0] n405_o;
  wire [31:0] n406_o;
  wire [31:0] n411_o;
  wire [31:0] n412_o;
  wire [31:0] n414_o;
  wire [31:0] n415_o;
  wire [31:0] n416_o;
  wire [31:0] n421_o;
  wire [31:0] n422_o;
  wire [31:0] n423_o;
  wire [31:0] n424_o;
  wire [31:0] n425_o;
  wire [31:0] n427_o;
  wire [31:0] n429_o;
  wire [31:0] n430_o;
  wire [31:0] n431_o;
  wire [31:0] n436_o;
  wire [31:0] n437_o;
  wire [31:0] n439_o;
  wire [31:0] n440_o;
  wire [31:0] n441_o;
  wire [31:0] n446_o;
  wire [31:0] n447_o;
  wire [31:0] n448_o;
  wire [31:0] n449_o;
  wire [31:0] n450_o;
  wire [31:0] n452_o;
  wire [31:0] n453_o;
  wire [31:0] n455_o;
  wire [31:0] n456_o;
  wire [31:0] n457_o;
  wire [31:0] n462_o;
  wire [31:0] n463_o;
  wire [31:0] n465_o;
  wire [31:0] n466_o;
  wire [31:0] n467_o;
  wire [31:0] n472_o;
  wire [31:0] n473_o;
  wire [31:0] n474_o;
  wire [31:0] n475_o;
  wire [31:0] n476_o;
  wire [31:0] n478_o;
  wire [31:0] n479_o;
  wire [31:0] n480_o;
  wire [31:0] n481_o;
  wire [511:0] n483_o;
  wire [351:0] n485_o;
  wire [255:0] n487_o;
  wire [191:0] n489_o;
  wire [127:0] n491_o;
  wire [95:0] n493_o;
  wire [63:0] n495_o;
  reg [511:0] n498_q;
  reg [351:0] n499_q;
  reg [255:0] n500_q;
  reg [191:0] n501_q;
  reg [127:0] n502_q;
  reg [95:0] n503_q;
  reg [63:0] n504_q;
  reg [31:0] n505_q;
  assign p = n505_q; //(module output)
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:47:12  */
  always @*
    pp = n498_q; // (isignal)
  initial
    pp = 512'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:49:12  */
  always @*
    r1 = n499_q; // (isignal)
  initial
    r1 = 352'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:50:12  */
  always @*
    r2 = n500_q; // (isignal)
  initial
    r2 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:51:12  */
  always @*
    r3 = n501_q; // (isignal)
  initial
    r3 = 192'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:52:12  */
  always @*
    r4 = n502_q; // (isignal)
  initial
    r4 = 128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:53:12  */
  always @*
    r5 = n503_q; // (isignal)
  initial
    r5 = 96'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:54:12  */
  always @*
    r6 = n504_q; // (isignal)
  initial
    r6 = 64'b0000000000000000000000000000000000000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:67:21  */
  assign n27_o = b[0]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:68:41  */
  assign n28_o = {16'b0, a};  //  uext
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:68:30  */
  assign n30_o = n28_o << 31'b0000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:67:17  */
  assign n32_o = n27_o ? n30_o : 32'b00000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:67:21  */
  assign n33_o = b[1]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:68:41  */
  assign n34_o = {16'b0, a};  //  uext
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:68:30  */
  assign n36_o = n34_o << 31'b0000000000000000000000000000001;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:67:17  */
  assign n38_o = n33_o ? n36_o : 32'b00000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:67:21  */
  assign n39_o = b[2]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:68:41  */
  assign n40_o = {16'b0, a};  //  uext
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:68:30  */
  assign n42_o = n40_o << 31'b0000000000000000000000000000010;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:67:17  */
  assign n44_o = n39_o ? n42_o : 32'b00000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:67:21  */
  assign n45_o = b[3]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:68:41  */
  assign n46_o = {16'b0, a};  //  uext
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:68:30  */
  assign n48_o = n46_o << 31'b0000000000000000000000000000011;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:67:17  */
  assign n50_o = n45_o ? n48_o : 32'b00000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:67:21  */
  assign n51_o = b[4]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:68:41  */
  assign n52_o = {16'b0, a};  //  uext
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:68:30  */
  assign n54_o = n52_o << 31'b0000000000000000000000000000100;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:67:17  */
  assign n56_o = n51_o ? n54_o : 32'b00000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:67:21  */
  assign n57_o = b[5]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:68:41  */
  assign n58_o = {16'b0, a};  //  uext
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:68:30  */
  assign n60_o = n58_o << 31'b0000000000000000000000000000101;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:67:17  */
  assign n62_o = n57_o ? n60_o : 32'b00000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:67:21  */
  assign n63_o = b[6]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:68:41  */
  assign n64_o = {16'b0, a};  //  uext
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:68:30  */
  assign n66_o = n64_o << 31'b0000000000000000000000000000110;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:67:17  */
  assign n68_o = n63_o ? n66_o : 32'b00000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:67:21  */
  assign n69_o = b[7]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:68:41  */
  assign n70_o = {16'b0, a};  //  uext
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:68:30  */
  assign n72_o = n70_o << 31'b0000000000000000000000000000111;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:67:17  */
  assign n74_o = n69_o ? n72_o : 32'b00000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:67:21  */
  assign n75_o = b[8]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:68:41  */
  assign n76_o = {16'b0, a};  //  uext
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:68:30  */
  assign n78_o = n76_o << 31'b0000000000000000000000000001000;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:67:17  */
  assign n80_o = n75_o ? n78_o : 32'b00000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:67:21  */
  assign n81_o = b[9]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:68:41  */
  assign n82_o = {16'b0, a};  //  uext
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:68:30  */
  assign n84_o = n82_o << 31'b0000000000000000000000000001001;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:67:17  */
  assign n86_o = n81_o ? n84_o : 32'b00000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:67:21  */
  assign n87_o = b[10]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:68:41  */
  assign n88_o = {16'b0, a};  //  uext
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:68:30  */
  assign n90_o = n88_o << 31'b0000000000000000000000000001010;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:67:17  */
  assign n92_o = n87_o ? n90_o : 32'b00000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:67:21  */
  assign n93_o = b[11]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:68:41  */
  assign n94_o = {16'b0, a};  //  uext
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:68:30  */
  assign n96_o = n94_o << 31'b0000000000000000000000000001011;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:67:17  */
  assign n98_o = n93_o ? n96_o : 32'b00000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:67:21  */
  assign n99_o = b[12]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:68:41  */
  assign n100_o = {16'b0, a};  //  uext
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:68:30  */
  assign n102_o = n100_o << 31'b0000000000000000000000000001100;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:67:17  */
  assign n104_o = n99_o ? n102_o : 32'b00000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:67:21  */
  assign n105_o = b[13]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:68:41  */
  assign n106_o = {16'b0, a};  //  uext
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:68:30  */
  assign n108_o = n106_o << 31'b0000000000000000000000000001101;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:67:17  */
  assign n110_o = n105_o ? n108_o : 32'b00000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:67:21  */
  assign n111_o = b[14]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:68:41  */
  assign n112_o = {16'b0, a};  //  uext
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:68:30  */
  assign n114_o = n112_o << 31'b0000000000000000000000000001110;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:67:17  */
  assign n116_o = n111_o ? n114_o : 32'b00000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:67:21  */
  assign n117_o = b[15]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:68:41  */
  assign n118_o = {16'b0, a};  //  uext
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:68:30  */
  assign n120_o = n118_o << 31'b0000000000000000000000000001111;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:67:17  */
  assign n122_o = n117_o ? n120_o : 32'b00000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:81:23  */
  assign n124_o = pp[511:480]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:81:32  */
  assign n125_o = pp[479:448]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:81:43  */
  assign n126_o = pp[447:416]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:24:18  */
  assign n131_o = n124_o ^ n125_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:24:24  */
  assign n132_o = n131_o ^ n126_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:85:23  */
  assign n134_o = pp[511:480]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:85:32  */
  assign n135_o = pp[479:448]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:85:43  */
  assign n136_o = pp[447:416]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:32:16  */
  assign n141_o = n134_o & n135_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:33:16  */
  assign n142_o = n134_o & n136_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:32:23  */
  assign n143_o = n141_o | n142_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:34:16  */
  assign n144_o = n135_o & n136_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:33:23  */
  assign n145_o = n143_o | n144_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:31:16  */
  assign n147_o = n145_o << 31'b0000000000000000000000000000001;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:81:23  */
  assign n149_o = pp[415:384]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:81:32  */
  assign n150_o = pp[383:352]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:81:43  */
  assign n151_o = pp[351:320]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:24:18  */
  assign n156_o = n149_o ^ n150_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:24:24  */
  assign n157_o = n156_o ^ n151_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:85:23  */
  assign n159_o = pp[415:384]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:85:32  */
  assign n160_o = pp[383:352]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:85:43  */
  assign n161_o = pp[351:320]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:32:16  */
  assign n166_o = n159_o & n160_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:33:16  */
  assign n167_o = n159_o & n161_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:32:23  */
  assign n168_o = n166_o | n167_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:34:16  */
  assign n169_o = n160_o & n161_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:33:23  */
  assign n170_o = n168_o | n169_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:31:16  */
  assign n172_o = n170_o << 31'b0000000000000000000000000000001;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:81:23  */
  assign n174_o = pp[319:288]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:81:32  */
  assign n175_o = pp[287:256]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:81:43  */
  assign n176_o = pp[255:224]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:24:18  */
  assign n181_o = n174_o ^ n175_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:24:24  */
  assign n182_o = n181_o ^ n176_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:85:23  */
  assign n184_o = pp[319:288]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:85:32  */
  assign n185_o = pp[287:256]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:85:43  */
  assign n186_o = pp[255:224]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:32:16  */
  assign n191_o = n184_o & n185_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:33:16  */
  assign n192_o = n184_o & n186_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:32:23  */
  assign n193_o = n191_o | n192_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:34:16  */
  assign n194_o = n185_o & n186_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:33:23  */
  assign n195_o = n193_o | n194_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:31:16  */
  assign n197_o = n195_o << 31'b0000000000000000000000000000001;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:81:23  */
  assign n199_o = pp[223:192]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:81:32  */
  assign n200_o = pp[191:160]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:81:43  */
  assign n201_o = pp[159:128]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:24:18  */
  assign n206_o = n199_o ^ n200_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:24:24  */
  assign n207_o = n206_o ^ n201_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:85:23  */
  assign n209_o = pp[223:192]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:85:32  */
  assign n210_o = pp[191:160]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:85:43  */
  assign n211_o = pp[159:128]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:32:16  */
  assign n216_o = n209_o & n210_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:33:16  */
  assign n217_o = n209_o & n211_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:32:23  */
  assign n218_o = n216_o | n217_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:34:16  */
  assign n219_o = n210_o & n211_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:33:23  */
  assign n220_o = n218_o | n219_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:31:16  */
  assign n222_o = n220_o << 31'b0000000000000000000000000000001;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:81:23  */
  assign n224_o = pp[127:96]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:81:32  */
  assign n225_o = pp[95:64]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:81:43  */
  assign n226_o = pp[63:32]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:24:18  */
  assign n231_o = n224_o ^ n225_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:24:24  */
  assign n232_o = n231_o ^ n226_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:85:23  */
  assign n234_o = pp[127:96]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:85:32  */
  assign n235_o = pp[95:64]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:85:43  */
  assign n236_o = pp[63:32]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:32:16  */
  assign n241_o = n234_o & n235_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:33:16  */
  assign n242_o = n234_o & n236_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:32:23  */
  assign n243_o = n241_o | n242_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:34:16  */
  assign n244_o = n235_o & n236_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:33:23  */
  assign n245_o = n243_o | n244_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:31:16  */
  assign n247_o = n245_o << 31'b0000000000000000000000000000001;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:89:25  */
  assign n248_o = pp[31:0]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:98:23  */
  assign n250_o = r1[351:320]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:98:32  */
  assign n251_o = r1[319:288]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:98:43  */
  assign n252_o = r1[287:256]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:24:18  */
  assign n257_o = n250_o ^ n251_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:24:24  */
  assign n258_o = n257_o ^ n252_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:102:23  */
  assign n260_o = r1[351:320]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:102:32  */
  assign n261_o = r1[319:288]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:102:43  */
  assign n262_o = r1[287:256]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:32:16  */
  assign n267_o = n260_o & n261_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:33:16  */
  assign n268_o = n260_o & n262_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:32:23  */
  assign n269_o = n267_o | n268_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:34:16  */
  assign n270_o = n261_o & n262_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:33:23  */
  assign n271_o = n269_o | n270_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:31:16  */
  assign n273_o = n271_o << 31'b0000000000000000000000000000001;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:98:23  */
  assign n275_o = r1[255:224]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:98:32  */
  assign n276_o = r1[223:192]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:98:43  */
  assign n277_o = r1[191:160]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:24:18  */
  assign n282_o = n275_o ^ n276_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:24:24  */
  assign n283_o = n282_o ^ n277_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:102:23  */
  assign n285_o = r1[255:224]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:102:32  */
  assign n286_o = r1[223:192]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:102:43  */
  assign n287_o = r1[191:160]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:32:16  */
  assign n292_o = n285_o & n286_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:33:16  */
  assign n293_o = n285_o & n287_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:32:23  */
  assign n294_o = n292_o | n293_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:34:16  */
  assign n295_o = n286_o & n287_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:33:23  */
  assign n296_o = n294_o | n295_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:31:16  */
  assign n298_o = n296_o << 31'b0000000000000000000000000000001;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:98:23  */
  assign n300_o = r1[159:128]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:98:32  */
  assign n301_o = r1[127:96]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:98:43  */
  assign n302_o = r1[95:64]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:24:18  */
  assign n307_o = n300_o ^ n301_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:24:24  */
  assign n308_o = n307_o ^ n302_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:102:23  */
  assign n310_o = r1[159:128]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:102:32  */
  assign n311_o = r1[127:96]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:102:43  */
  assign n312_o = r1[95:64]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:32:16  */
  assign n317_o = n310_o & n311_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:33:16  */
  assign n318_o = n310_o & n312_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:32:23  */
  assign n319_o = n317_o | n318_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:34:16  */
  assign n320_o = n311_o & n312_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:33:23  */
  assign n321_o = n319_o | n320_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:31:16  */
  assign n323_o = n321_o << 31'b0000000000000000000000000000001;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:106:24  */
  assign n324_o = r1[63:32]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:107:24  */
  assign n325_o = r1[31:0]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:116:23  */
  assign n327_o = r2[255:224]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:116:32  */
  assign n328_o = r2[223:192]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:116:43  */
  assign n329_o = r2[191:160]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:24:18  */
  assign n334_o = n327_o ^ n328_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:24:24  */
  assign n335_o = n334_o ^ n329_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:120:23  */
  assign n337_o = r2[255:224]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:120:32  */
  assign n338_o = r2[223:192]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:120:43  */
  assign n339_o = r2[191:160]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:32:16  */
  assign n344_o = n337_o & n338_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:33:16  */
  assign n345_o = n337_o & n339_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:32:23  */
  assign n346_o = n344_o | n345_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:34:16  */
  assign n347_o = n338_o & n339_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:33:23  */
  assign n348_o = n346_o | n347_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:31:16  */
  assign n350_o = n348_o << 31'b0000000000000000000000000000001;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:116:23  */
  assign n352_o = r2[159:128]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:116:32  */
  assign n353_o = r2[127:96]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:116:43  */
  assign n354_o = r2[95:64]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:24:18  */
  assign n359_o = n352_o ^ n353_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:24:24  */
  assign n360_o = n359_o ^ n354_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:120:23  */
  assign n362_o = r2[159:128]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:120:32  */
  assign n363_o = r2[127:96]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:120:43  */
  assign n364_o = r2[95:64]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:32:16  */
  assign n369_o = n362_o & n363_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:33:16  */
  assign n370_o = n362_o & n364_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:32:23  */
  assign n371_o = n369_o | n370_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:34:16  */
  assign n372_o = n363_o & n364_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:33:23  */
  assign n373_o = n371_o | n372_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:31:16  */
  assign n375_o = n373_o << 31'b0000000000000000000000000000001;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:124:24  */
  assign n376_o = r2[63:32]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:125:24  */
  assign n377_o = r2[31:0]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:134:23  */
  assign n379_o = r3[191:160]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:134:32  */
  assign n380_o = r3[159:128]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:134:43  */
  assign n381_o = r3[127:96]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:24:18  */
  assign n386_o = n379_o ^ n380_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:24:24  */
  assign n387_o = n386_o ^ n381_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:138:23  */
  assign n389_o = r3[191:160]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:138:32  */
  assign n390_o = r3[159:128]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:138:43  */
  assign n391_o = r3[127:96]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:32:16  */
  assign n396_o = n389_o & n390_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:33:16  */
  assign n397_o = n389_o & n391_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:32:23  */
  assign n398_o = n396_o | n397_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:34:16  */
  assign n399_o = n390_o & n391_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:33:23  */
  assign n400_o = n398_o | n399_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:31:16  */
  assign n402_o = n400_o << 31'b0000000000000000000000000000001;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:134:23  */
  assign n404_o = r3[95:64]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:134:32  */
  assign n405_o = r3[63:32]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:134:43  */
  assign n406_o = r3[31:0]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:24:18  */
  assign n411_o = n404_o ^ n405_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:24:24  */
  assign n412_o = n411_o ^ n406_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:138:23  */
  assign n414_o = r3[95:64]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:138:32  */
  assign n415_o = r3[63:32]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:138:43  */
  assign n416_o = r3[31:0]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:32:16  */
  assign n421_o = n414_o & n415_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:33:16  */
  assign n422_o = n414_o & n416_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:32:23  */
  assign n423_o = n421_o | n422_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:34:16  */
  assign n424_o = n415_o & n416_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:33:23  */
  assign n425_o = n423_o | n424_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:31:16  */
  assign n427_o = n425_o << 31'b0000000000000000000000000000001;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:147:32  */
  assign n429_o = r4[127:96]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:147:39  */
  assign n430_o = r4[95:64]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:147:46  */
  assign n431_o = r4[63:32]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:24:18  */
  assign n436_o = n429_o ^ n430_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:24:24  */
  assign n437_o = n436_o ^ n431_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:148:34  */
  assign n439_o = r4[127:96]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:148:41  */
  assign n440_o = r4[95:64]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:148:48  */
  assign n441_o = r4[63:32]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:32:16  */
  assign n446_o = n439_o & n440_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:33:16  */
  assign n447_o = n439_o & n441_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:32:23  */
  assign n448_o = n446_o | n447_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:34:16  */
  assign n449_o = n440_o & n441_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:33:23  */
  assign n450_o = n448_o | n449_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:31:16  */
  assign n452_o = n450_o << 31'b0000000000000000000000000000001;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:150:24  */
  assign n453_o = r4[31:0]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:157:32  */
  assign n455_o = r5[95:64]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:157:39  */
  assign n456_o = r5[63:32]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:157:46  */
  assign n457_o = r5[31:0]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:24:18  */
  assign n462_o = n455_o ^ n456_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:24:24  */
  assign n463_o = n462_o ^ n457_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:158:34  */
  assign n465_o = r5[95:64]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:158:41  */
  assign n466_o = r5[63:32]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:158:48  */
  assign n467_o = r5[31:0]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:32:16  */
  assign n472_o = n465_o & n466_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:33:16  */
  assign n473_o = n465_o & n467_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:32:23  */
  assign n474_o = n472_o | n473_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:34:16  */
  assign n475_o = n466_o & n467_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:33:23  */
  assign n476_o = n474_o | n475_o;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:31:16  */
  assign n478_o = n476_o << 31'b0000000000000000000000000000001;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:164:20  */
  assign n479_o = r6[63:32]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:164:28  */
  assign n480_o = r6[31:0]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:164:24  */
  assign n481_o = n479_o + n480_o;
  assign n483_o = {n32_o, n38_o, n44_o, n50_o, n56_o, n62_o, n68_o, n74_o, n80_o, n86_o, n92_o, n98_o, n104_o, n110_o, n116_o, n122_o};
  assign n485_o = {n132_o, n147_o, n157_o, n172_o, n182_o, n197_o, n207_o, n222_o, n232_o, n247_o, n248_o};
  assign n487_o = {n258_o, n273_o, n283_o, n298_o, n308_o, n323_o, n324_o, n325_o};
  assign n489_o = {n335_o, n350_o, n360_o, n375_o, n376_o, n377_o};
  assign n491_o = {n387_o, n402_o, n412_o, n427_o};
  assign n493_o = {n437_o, n452_o, n453_o};
  assign n495_o = {n463_o, n478_o};
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:60:9  */
  always @(posedge clk)
    n498_q <= n483_o;
  initial
    n498_q = 512'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:60:9  */
  always @(posedge clk)
    n499_q <= n485_o;
  initial
    n499_q = 352'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:60:9  */
  always @(posedge clk)
    n500_q <= n487_o;
  initial
    n500_q = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:60:9  */
  always @(posedge clk)
    n501_q <= n489_o;
  initial
    n501_q = 192'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:60:9  */
  always @(posedge clk)
    n502_q <= n491_o;
  initial
    n502_q = 128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:60:9  */
  always @(posedge clk)
    n503_q <= n493_o;
  initial
    n503_q = 96'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:60:9  */
  always @(posedge clk)
    n504_q <= n495_o;
  initial
    n504_q = 64'b0000000000000000000000000000000000000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\carry_save_16x16.vhdl:60:9  */
  always @(posedge clk)
    n505_q <= n481_o;
endmodule

module multiplier_top
  (input  clk_10_MHz,
   input  spi_clk,
   input  spi_mosi,
   input  spi_ncs,
   output spi_miso,
   output [7:0] dac_out);
  wire [15:0] a;
  wire [15:0] b;
  wire [31:0] p;
  reg [31:0] counter;
  wire [31:0] n7_o;
  wire [15:0] n10_o;
  wire [15:0] n11_o;
  wire [31:0] carry_save_p;
  wire [7:0] n13_o;
  reg [31:0] n14_q;
  localparam n15_o = 1'bZ;
  assign spi_miso = n15_o; //(module output)
  assign dac_out = n13_o; //(module output)
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\multiplier_top.vhdl:18:12  */
  assign a = n10_o; // (signal)
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\multiplier_top.vhdl:19:12  */
  assign b = n11_o; // (signal)
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\multiplier_top.vhdl:20:12  */
  assign p = carry_save_p; // (signal)
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\multiplier_top.vhdl:22:12  */
  always @*
    counter = n14_q; // (isignal)
  initial
    counter = 32'b00000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\multiplier_top.vhdl:29:32  */
  assign n7_o = counter + 32'b00000000000000000000000000000001;
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\multiplier_top.vhdl:32:17  */
  assign n10_o = counter[15:0]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\multiplier_top.vhdl:33:17  */
  assign n11_o = counter[31:16]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\multiplier_top.vhdl:37:5  */
  carry_save_16x16 carry_save (
    .clk(clk_10_MHz),
    .a(a),
    .b(b),
    .p(carry_save_p));
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\multiplier_top.vhdl:53:30  */
  assign n13_o = p[31:24]; // extract
  /* C:\Users\jakob\Desktop\GIT_FOLDER\HDL_PLAYGROUND\HDL_playground\src\multiplier_top.vhdl:28:9  */
  always @(posedge clk_10_MHz)
    n14_q <= n7_o;
  initial
    n14_q = 32'b00000000000000000000000000000000;
endmodule

