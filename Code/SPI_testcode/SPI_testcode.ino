#define SPI_CLK 2
#define MOSI 3
#define MISO 4
#define FPGA_nCS 5


int8_t rx_spi(uint8_t addr, uint32_t *data) {
  if(addr > 127) return -1;
  uint8_t tx_addr = addr | 0x80;
  uint32_t rx_data = 0;
  digitalWrite(FPGA_nCS, LOW);
  for(int8_t i = 7; i >= 0; i--) {
    digitalWrite(MOSI, (tx_addr>>i) & 0x01);
    digitalWrite(SPI_CLK, HIGH);
    digitalWrite(SPI_CLK, LOW);
  }
  for(int8_t i = 0; i < 32; i++) {
    rx_data = (rx_data << 1) | !digitalRead(MISO);
    digitalWrite(SPI_CLK, HIGH);
    digitalWrite(SPI_CLK, LOW);
  }
  
  digitalWrite(SPI_CLK, LOW);
  digitalWrite(MOSI, LOW);
  digitalWrite(FPGA_nCS, HIGH);
  
  *data = rx_data;
  return 1;
}

int8_t tx_spi(uint8_t addr, uint32_t data) {
  if(addr > 127) return -1;
  uint64_t tx_word = (uint64_t(addr)<<32) | data;  //Set ADDR bit 8 high, SPI protocol for write mode.
  uint32_t tx_low = 0xFFFFFFFF & tx_word;
  uint32_t tx_high = (0xFFFFFFFF00000000 & tx_word)>> 32;
  
  digitalWrite(FPGA_nCS, LOW);
  for(int8_t i = 39; i>=0; i--){
    digitalWrite(MOSI, (tx_word>>i) & 0x01);
    digitalWrite(SPI_CLK, HIGH);
    digitalWrite(SPI_CLK, LOW);
  }

  digitalWrite(SPI_CLK, LOW);
  digitalWrite(MOSI, LOW);
  digitalWrite(FPGA_nCS, HIGH);
  return 1;
}

void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);
  pinMode(SPI_CLK, OUTPUT);
  pinMode(MOSI, OUTPUT);
  pinMode(MISO, INPUT);
  pinMode(FPGA_nCS, OUTPUT);

  digitalWrite(SPI_CLK, LOW);
  digitalWrite(MOSI, LOW);
  digitalWrite(FPGA_nCS, HIGH);
  delay(100);
  tx_spi(0, 429497);
  tx_spi(1, 0);
  tx_spi(2, 15000);
  tx_spi(3, 0);
  uint32_t rx_data = 0;

  rx_spi(0,&rx_data);
  Serial.print("Data Read: ");
  Serial.println(rx_data);

  rx_spi(1,&rx_data);
  Serial.print("Data Read: ");
  Serial.println(rx_data);

  rx_spi(2,&rx_data);
  Serial.print("Data Read: ");
  Serial.println(rx_data);

  rx_spi(3,&rx_data);
  Serial.print("Data Read: ");
  Serial.println(rx_data);
}

void loop() {
  // put your main code here, to run repeatedly:
  // tx_spi(1, 2147483648);
  // delay(1);
  // tx_spi(1, 0);
  // delay(1);
}
