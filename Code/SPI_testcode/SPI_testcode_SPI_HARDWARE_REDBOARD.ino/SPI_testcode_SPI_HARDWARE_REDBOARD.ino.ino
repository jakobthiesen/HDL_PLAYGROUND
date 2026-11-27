
#include "SPI.h"
#include "turboSPOT.h"

// Apollo3 SPI0 pin assignments
#define SPI_MISO_PIN D6
#define SPI_MOSI_PIN D7
#define SPI_CLK_PIN  D5

// Software-controlled chip select
#define FPGA_nCS     5

// SPI configuration
#define SPI_FREQ     10000000
#define SPI_MODE     SPI_MODE0
#define SPI_ORDER    MSBFIRST

// Set true to preserve inversion from your old
// !digitalRead(MISO_PIN) implementation.
#define INVERT_MISO  false

// Custom hardware SPI interface
// Constructor order: MISO, MOSI, CLK
MbedSPI fpgaSPI(
    D12,
    D11,
    D13
);

// -------------------------------------------------
// Write 32-bit data to FPGA register
// Protocol: [R/W = 0][ADDR 7-bit][DATA 32-bit]
// -------------------------------------------------
int8_t tx_spi(uint8_t addr, uint32_t data)
{
    if (addr > 127)
        return -1;

    uint8_t header = addr & 0x7F;

    fpgaSPI.beginTransaction(
        SPISettings(SPI_FREQ, SPI_ORDER, SPI_MODE)
    );

    digitalWrite(FPGA_nCS, LOW);

    // 8-bit header, MSB first
    fpgaSPI.transfer(header);

    // 32-bit data, MSB first
    fpgaSPI.transfer((uint8_t)(data >> 24));
    fpgaSPI.transfer((uint8_t)(data >> 16));
    fpgaSPI.transfer((uint8_t)(data >> 8));
    fpgaSPI.transfer((uint8_t)data);

    digitalWrite(FPGA_nCS, HIGH);

    fpgaSPI.endTransaction();

    return 1;
}

// -------------------------------------------------
// Read 32-bit data from FPGA register
// Protocol: [R/W = 1][ADDR 7-bit][DATA 32-bit]
// -------------------------------------------------
int8_t rx_spi(uint8_t addr, uint32_t *data)
{
    if (addr > 127 || data == nullptr)
        return -1;

    uint8_t header = addr | 0x80;
    uint32_t rx_data = 0;

    fpgaSPI.beginTransaction(
        SPISettings(SPI_FREQ, SPI_ORDER, SPI_MODE)
    );

    digitalWrite(FPGA_nCS, LOW);

    // Transmit read header
    fpgaSPI.transfer(header);

    // Receive 32-bit response
    // Dummy bytes generate the required SPI clocks
    for (uint8_t i = 0; i < 4; i++)
    {
        uint8_t received = fpgaSPI.transfer(0x00);

        if (INVERT_MISO)
            received = (uint8_t)~received;
            // received = (uint8_t)received;

        rx_data = (rx_data << 8) | received;
    }

    digitalWrite(FPGA_nCS, HIGH);

    fpgaSPI.endTransaction();
    // rx_data = ~rx_data;
    *data = rx_data;  

    return 1;
}

void setup()
{
    Serial.begin(500000);

    pinMode(FPGA_nCS, OUTPUT);
    digitalWrite(FPGA_nCS, HIGH);

    // Initialize hardware SPI
    fpgaSPI.begin();
    uint32_t rx_data = 0;
    REQUEST_TURBO_SPOT();

    delay(100);

    // Configure FPGA registers
    // tx_spi(0, 429496);

    tx_spi(0, 4294960);
    tx_spi(1, 0);
    tx_spi(2, 5000);
  
  // for(uint8_t i = 0; i <= 127; i++) {
  //   tx_spi(i,32767-3*i);
  // }
  // for(uint8_t i = 0; i<= 127; i++) {
  //   rx_spi(i, &rx_data);
  //   Serial.print("Register ");
  //   Serial.print(i);
  //   Serial.print(" | TX_DATA: ");
  //   Serial.print(32767-3*i);
  //   Serial.print(" | RX_DATA: ");
  //   Serial.print(rx_data);
  //   Serial.print(" | Error: ");
  //   Serial.println(32767-3*i-rx_data);
  // }


    





    // Read back FPGA registers
    for (uint8_t addr = 0; addr < 4; addr++)
    {
        if (rx_spi(addr, &rx_data) == 1)
        {
            Serial.print("Register ");
            Serial.print(addr);
            Serial.print(": ");
            Serial.println(rx_data);
        }
    }

    STOP_TURBO_SPOT();
}

void loop()
{
    // Empty for now
}
