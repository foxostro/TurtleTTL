void setup() {
  DDRD &= 0b00000011; // Set pins 2 through 7 to input.
  DDRB &= 0b11000000; // Set pins 8-13 for input.
  DDRC &= 0b11111110; // Set analog pin 0 for input.
  
  Serial.begin(57600);
  while (!Serial);
  Serial.println("Arduino ready.");
}

void loop() {
  bool clk, sel, pi, po;

  // Wait for either PO or PI to become active.
  while (true) {
    const byte d = PIND;
    pi = (d & 0b00000100) != 0; // pin 2 is PI
    if (!pi) {
      break;
    }
    
    po = (d & 0b00001000) != 0; // pin 3 is PO
    if (!po) {
      break;
    }
  }

  if (!pi) {
    // Wait for the rising edge of the clock before reading the bus.
    while((PINC & 1) == 0);

    // Read the value of the bus.
    // The eight bits of the bus map to pins 4 through 11.
    const byte bus = ((PIND >> 4) & 0b00001111) | ((PINB & 0b00001111) << 4);

    Serial.print((char)bus);

    // Wait for the clock falling edge. The bus value becomes invalid after this point.
    while((PINC & 1) != 0);
  } else if (!po) {
    DDRD |= 0b11110000; // Set pins 2 through 7 to output.
    DDRB |= 0b00001111; // Set pins 8-13 for output.

    // Read pin 13 (ADDR0). If it's non-zero then get the number of available bytes.
    int value = 0;
    if (PINB & 0b00100000) {
      value = Serial.available();
    } else {
      value = Serial.read();
    }

    // Output a value to the bus.
    // The eight bits of the bus map to pins 4 through 11.
    PORTD = (value & 0b00001111) << 4;
    PORTB = (value & 0b11110000) >> 4;

    // Hold the value on the bus for the duration of the register clock pulse.
    while((PINC & 1) == 0);
    while((PINC & 1) != 0);

    // Stop driving the bus.
    DDRD &= 0b00000011; // Set pins 2 through 7 to input.
    DDRB &= 0b11000000; // Set pins 8-13 for input.
  }
}
