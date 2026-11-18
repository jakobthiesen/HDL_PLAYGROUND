module Zector_SPI_IP
  (input  i_clk,
   input  i_spi_clk,
   input  i_MOSI,
   input  i_ncs,
   input  [31:0] i_data,
   output o_MISO,
   output o_RnW,
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
  wire n20_o;
  wire n21_o;
  wire n22_o;
  wire n23_o;
  wire n24_o;
  wire n27_o;
  wire n28_o;
  wire n29_o;
  wire n51_o;
  wire [38:0] n52_o;
  wire [39:0] n53_o;
  wire n55_o;
  wire n57_o;
  wire [5:0] n58_o;
  wire [6:0] n59_o;
  wire n60_o;
  wire n61_o;
  wire n63_o;
  wire n65_o;
  wire n66_o;
  wire n67_o;
  wire [30:0] n68_o;
  wire [31:0] n69_o;
  wire n70_o;
  wire [31:0] n71_o;
  wire n72_o;
  wire [6:0] n73_o;
  wire [31:0] n74_o;
  wire n75_o;
  wire n76_o;
  wire [6:0] n78_o;
  wire [31:0] n79_o;
  wire n80_o;
  wire n81_o;
  wire [7:0] n83_o;
  wire n86_o;
  wire n91_o;
  wire n92_o;
  wire n93_o;
  wire n94_o;
  wire n95_o;
  wire n96_o;
  wire n97_o;
  wire n119_o;
  wire n120_o;
  wire [30:0] n121_o;
  wire [31:0] n123_o;
  wire [7:0] n125_o;
  wire n127_o;
  wire n128_o;
  wire [30:0] n129_o;
  wire [31:0] n131_o;
  wire [7:0] n133_o;
  wire n134_o;
  wire [31:0] n135_o;
  wire [7:0] n136_o;
  wire n137_o;
  wire [31:0] n138_o;
  wire [7:0] n139_o;
  wire n143_o;
  wire n144_o;
  wire n145_o;
  wire [39:0] n155_o;
  reg [39:0] n156_q;
  wire [31:0] n157_o;
  reg [31:0] n158_q;
  wire [7:0] n159_o;
  reg [7:0] n160_q;
  wire [7:0] n161_o;
  reg [7:0] n162_q;
  wire n163_o;
  wire n164_o;
  wire n165_o;
  reg n166_q;
  wire n167_o;
  wire n168_o;
  wire [6:0] n169_o;
  reg [6:0] n170_q;
  wire n171_o;
  wire n172_o;
  wire [31:0] n173_o;
  reg [31:0] n174_q;
  wire n175_o;
  wire n176_o;
  wire n177_o;
  reg n178_q;
  wire n179_o;
  reg n180_q;
  wire n181_o;
  reg n182_q;
  wire n183_o;
  reg n184_q;
  wire n185_o;
  reg n186_q;
  reg n187_q;
  reg n188_q;
  reg n189_q;
  reg n190_q;
  reg n191_q;
  wire n192_o;
  wire n193_o;
  wire n194_o;
  reg n195_q;
  assign o_MISO = n195_q; //(module output)
  assign o_RnW = rw_reg; //(module output)
  assign o_addr = addr_reg; //(module output)
  assign o_data = data_reg; //(module output)
  assign o_update = n20_o; //(module output)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:26:12  */
  assign rx_shift = n156_q; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:27:12  */
  assign tx_shift = n158_q; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:29:12  */
  assign bit_counter = n160_q; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:30:12  */
  assign tx_counter = n162_q; // (signal)
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:36:12  */
  always @*
    rw_reg = n166_q; // (isignal)
  initial
    rw_reg = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:37:12  */
  always @*
    addr_reg = n170_q; // (isignal)
  initial
    addr_reg = 7'b0000000;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:38:12  */
  always @*
    data_reg = n174_q; // (isignal)
  initial
    data_reg = 32'b00000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:39:12  */
  always @*
    valid_toggle = n178_q; // (isignal)
  initial
    valid_toggle = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:40:12  */
  always @*
    tx_begin = n180_q; // (isignal)
  initial
    tx_begin = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:42:12  */
  always @*
    valid_meta = n182_q; // (isignal)
  initial
    valid_meta = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:43:12  */
  always @*
    valid_sync = n184_q; // (isignal)
  initial
    valid_sync = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:44:12  */
  always @*
    valid_prev = n186_q; // (isignal)
  initial
    valid_prev = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:46:12  */
  always @*
    spi_clk_meta = n187_q; // (isignal)
  initial
    spi_clk_meta = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:47:12  */
  always @*
    spi_clk_sync = n188_q; // (isignal)
  initial
    spi_clk_sync = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:48:12  */
  always @*
    spi_clk_prev = n189_q; // (isignal)
  initial
    spi_clk_prev = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:50:12  */
  always @*
    spi_ncs_meta = n190_q; // (isignal)
  initial
    spi_ncs_meta = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:51:12  */
  always @*
    spi_ncs_sync = n191_q; // (isignal)
  initial
    spi_ncs_sync = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:53:12  */
  always @*
    spi_pos_edge = n22_o; // (isignal)
  initial
    spi_pos_edge = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:54:12  */
  always @*
    spi_neg_edge = n24_o; // (isignal)
  initial
    spi_neg_edge = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:61:28  */
  assign n20_o = valid_sync ^ valid_prev;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:62:38  */
  assign n21_o = ~spi_clk_prev;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:62:34  */
  assign n22_o = spi_clk_sync & n21_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:63:21  */
  assign n23_o = ~spi_clk_sync;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:63:38  */
  assign n24_o = n23_o & spi_clk_prev;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:69:41  */
  assign n27_o = ~rw_reg;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:69:30  */
  assign n28_o = n27_o & i_ncs;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:69:56  */
  assign n29_o = n28_o | rw_reg;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:107:32  */
  assign n51_o = $unsigned(bit_counter) < $unsigned(8'b00101000);
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:108:41  */
  assign n52_o = rx_shift[38:0]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:108:76  */
  assign n53_o = {n52_o, i_MOSI};
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:109:36  */
  assign n55_o = bit_counter == 8'b00000000;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:111:39  */
  assign n57_o = bit_counter == 8'b00000111;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:112:45  */
  assign n58_o = rx_shift[5:0]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:112:69  */
  assign n59_o = {n58_o, i_MOSI};
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:114:45  */
  assign n60_o = ~valid_toggle;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:113:25  */
  assign n61_o = rw_reg ? n60_o : valid_toggle;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:111:21  */
  assign n63_o = n76_o ? 1'b1 : tx_begin;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:117:40  */
  assign n65_o = bit_counter == 8'b00100111;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:117:108  */
  assign n66_o = ~rw_reg;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:117:96  */
  assign n67_o = n66_o & n65_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:120:45  */
  assign n68_o = rx_shift[30:0]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:120:69  */
  assign n69_o = {n68_o, i_MOSI};
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:121:41  */
  assign n70_o = ~valid_toggle;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:117:21  */
  assign n71_o = n67_o ? n69_o : data_reg;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:117:21  */
  assign n72_o = n67_o ? n70_o : valid_toggle;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:111:21  */
  assign n73_o = n57_o ? n59_o : addr_reg;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:111:21  */
  assign n74_o = n57_o ? data_reg : n71_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:111:21  */
  assign n75_o = n57_o ? n61_o : n72_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:111:21  */
  assign n76_o = rw_reg & n57_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:109:21  */
  assign n78_o = n55_o ? addr_reg : n73_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:109:21  */
  assign n79_o = n55_o ? data_reg : n74_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:109:21  */
  assign n80_o = n55_o ? valid_toggle : n75_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:109:21  */
  assign n81_o = n55_o ? tx_begin : n63_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:123:47  */
  assign n83_o = bit_counter + 8'b00000001;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:107:17  */
  assign n86_o = n55_o & n51_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:105:13  */
  assign n91_o = n51_o & spi_pos_edge;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:105:13  */
  assign n92_o = n51_o & spi_pos_edge;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:105:13  */
  assign n93_o = n86_o & spi_pos_edge;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:105:13  */
  assign n94_o = n51_o & spi_pos_edge;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:105:13  */
  assign n95_o = n51_o & spi_pos_edge;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:105:13  */
  assign n96_o = n51_o & spi_pos_edge;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:105:13  */
  assign n97_o = n51_o & spi_pos_edge;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:137:35  */
  assign n119_o = tx_counter == 8'b00000000;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:138:41  */
  assign n120_o = i_data[31]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:139:43  */
  assign n121_o = i_data[30:0]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:139:67  */
  assign n123_o = {n121_o, 1'b0};
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:140:50  */
  assign n125_o = tx_counter + 8'b00000001;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:141:38  */
  assign n127_o = $unsigned(tx_counter) < $unsigned(8'b00100000);
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:142:43  */
  assign n128_o = tx_shift[31]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:143:45  */
  assign n129_o = tx_shift[30:0]; // extract
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:143:69  */
  assign n131_o = {n129_o, 1'b0};
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:144:50  */
  assign n133_o = tx_counter + 8'b00000001;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:141:21  */
  assign n134_o = n127_o ? n128_o : n195_q;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:141:21  */
  assign n135_o = n127_o ? n131_o : tx_shift;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:141:21  */
  assign n136_o = n127_o ? n133_o : tx_counter;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:137:21  */
  assign n137_o = n119_o ? n120_o : n134_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:137:21  */
  assign n138_o = n119_o ? n123_o : n135_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:137:21  */
  assign n139_o = n119_o ? n125_o : n136_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:135:13  */
  assign n143_o = tx_begin & spi_neg_edge;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:135:13  */
  assign n144_o = tx_begin & spi_neg_edge;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:135:13  */
  assign n145_o = tx_begin & spi_neg_edge;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:104:9  */
  assign n155_o = n91_o ? n53_o : rx_shift;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:104:9  */
  always @(posedge i_clk or posedge spi_ncs_sync)
    if (spi_ncs_sync)
      n156_q <= 40'b0000000000000000000000000000000000000000;
    else
      n156_q <= n155_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:134:9  */
  assign n157_o = n144_o ? n138_o : tx_shift;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:134:9  */
  always @(posedge i_clk or posedge spi_ncs_sync)
    if (spi_ncs_sync)
      n158_q <= 32'b00000000000000000000000000000000;
    else
      n158_q <= n157_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:104:9  */
  assign n159_o = n92_o ? n83_o : bit_counter;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:104:9  */
  always @(posedge i_clk or posedge spi_ncs_sync)
    if (spi_ncs_sync)
      n160_q <= 8'b00000000;
    else
      n160_q <= n159_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:134:9  */
  assign n161_o = n145_o ? n139_o : tx_counter;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:134:9  */
  always @(posedge i_clk or posedge spi_ncs_sync)
    if (spi_ncs_sync)
      n162_q <= 8'b00000000;
    else
      n162_q <= n161_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:96:5  */
  assign n163_o = ~spi_ncs_sync;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:96:5  */
  assign n164_o = n93_o & n163_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:104:9  */
  assign n165_o = n164_o ? i_MOSI : rw_reg;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:104:9  */
  always @(posedge i_clk)
    n166_q <= n165_o;
  initial
    n166_q = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:96:5  */
  assign n167_o = ~spi_ncs_sync;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:96:5  */
  assign n168_o = n94_o & n167_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:104:9  */
  assign n169_o = n168_o ? n78_o : addr_reg;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:104:9  */
  always @(posedge i_clk)
    n170_q <= n169_o;
  initial
    n170_q = 7'b0000000;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:96:5  */
  assign n171_o = ~spi_ncs_sync;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:96:5  */
  assign n172_o = n95_o & n171_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:104:9  */
  assign n173_o = n172_o ? n79_o : data_reg;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:104:9  */
  always @(posedge i_clk)
    n174_q <= n173_o;
  initial
    n174_q = 32'b00000000000000000000000000000000;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:96:5  */
  assign n175_o = ~spi_ncs_sync;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:96:5  */
  assign n176_o = n96_o & n175_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:104:9  */
  assign n177_o = n176_o ? n80_o : valid_toggle;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:104:9  */
  always @(posedge i_clk)
    n178_q <= n177_o;
  initial
    n178_q = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:104:9  */
  assign n179_o = n97_o ? n81_o : tx_begin;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:104:9  */
  always @(posedge i_clk or posedge spi_ncs_sync)
    if (spi_ncs_sync)
      n180_q <= 1'b0;
    else
      n180_q <= n179_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:68:9  */
  assign n181_o = n29_o ? valid_toggle : valid_meta;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:68:9  */
  always @(posedge i_clk)
    n182_q <= n181_o;
  initial
    n182_q = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:68:9  */
  assign n183_o = n29_o ? valid_meta : valid_sync;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:68:9  */
  always @(posedge i_clk)
    n184_q <= n183_o;
  initial
    n184_q = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:68:9  */
  assign n185_o = n29_o ? valid_sync : valid_prev;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:68:9  */
  always @(posedge i_clk)
    n186_q <= n185_o;
  initial
    n186_q = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:80:9  */
  always @(posedge i_clk)
    n187_q <= i_spi_clk;
  initial
    n187_q = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:80:9  */
  always @(posedge i_clk)
    n188_q <= spi_clk_meta;
  initial
    n188_q = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:80:9  */
  always @(posedge i_clk)
    n189_q <= spi_clk_sync;
  initial
    n189_q = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:89:9  */
  always @(posedge i_clk)
    n190_q <= i_ncs;
  initial
    n190_q = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:89:9  */
  always @(posedge i_clk)
    n191_q <= spi_ncs_meta;
  initial
    n191_q = 1'b0;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:129:5  */
  assign n192_o = ~spi_ncs_sync;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:129:5  */
  assign n193_o = n143_o & n192_o;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:134:9  */
  assign n194_o = n193_o ? n137_o : n195_q;
  /* C:\Users\jakob\Desktop\HDL_playground\HDL_playground\src\Zector_SPI_IP.vhdl:134:9  */
  always @(posedge i_clk)
    n195_q <= n194_o;
endmodule

