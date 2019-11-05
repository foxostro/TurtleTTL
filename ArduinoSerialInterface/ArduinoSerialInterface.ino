const byte pinPI = 2;
const byte pinPO = 3;
const byte pinBus0 = 4;
const byte pinBus1 = 5;
const byte pinBus2 = 6;
const byte pinBus3 = 7;
const byte pinBus4 = 8;
const byte pinBus5 = 9;
const byte pinBus6 = 10;
const byte pinBus7 = 11;
const byte pinAddr0 = 13;
const byte pinCLK = A0;

void setup() {
  pinMode(pinPI, INPUT);
  pinMode(pinPO, INPUT);
  pinMode(pinBus0, INPUT);
  pinMode(pinBus1, INPUT);
  pinMode(pinBus2, INPUT);
  pinMode(pinBus3, INPUT);
  pinMode(pinBus4, INPUT);
  pinMode(pinBus5, INPUT);
  pinMode(pinBus6, INPUT);
  pinMode(pinBus7, INPUT);
  pinMode(pinAddr0, INPUT);
  pinMode(pinCLK, INPUT);
  
  Serial.begin(57600);
  while (!Serial);
  Serial.println("Arduino ready.");
}

void loop() {
  bool clk, sel, pi, po, addr0;

  // Wait for either PO or PI to become active.
  while (true) {
    pi = digitalRead(pinPI);
    if (!pi) {
      break;
    }
    
    po = digitalRead(pinPO);
    if (!po) {
      break;
    }
  }

  if (!pi) {
    // Wait for the rising edge of the clock before reading the bus.
    while (!digitalRead(pinCLK));
    
    const byte bus = (digitalRead(pinBus0))
                   | (digitalRead(pinBus1) << 1)
                   | (digitalRead(pinBus2) << 2)
                   | (digitalRead(pinBus3) << 3)
                   | (digitalRead(pinBus4) << 4)
                   | (digitalRead(pinBus5) << 5)
                   | (digitalRead(pinBus6) << 6)
                   | (digitalRead(pinBus7) << 7);

    if (bus != 255) {
      Serial.print((char)bus);
    }

    // Wait for the clock falling edge. The bus value becomes invalid after this point.
    while (digitalRead(pinCLK));
  } else if (!po) {
    pinMode(pinBus0, OUTPUT);
    pinMode(pinBus1, OUTPUT);
    pinMode(pinBus2, OUTPUT);
    pinMode(pinBus3, OUTPUT);
    pinMode(pinBus4, OUTPUT);
    pinMode(pinBus5, OUTPUT);
    pinMode(pinBus6, OUTPUT);
    pinMode(pinBus7, OUTPUT);

    addr0 = digitalRead(pinAddr0);

    int value = 0;
    if (addr0) {
      value = Serial.available();
    } else {
      value = Serial.read();
    }

    digitalWrite(pinBus0, (value>>0) & 1);
    digitalWrite(pinBus1, (value>>1) & 1);
    digitalWrite(pinBus2, (value>>2) & 1);
    digitalWrite(pinBus3, (value>>3) & 1);
    digitalWrite(pinBus4, (value>>4) & 1);
    digitalWrite(pinBus5, (value>>5) & 1);
    digitalWrite(pinBus6, (value>>6) & 1);
    digitalWrite(pinBus7, (value>>7) & 1);

    // Hold the value on the bus for the duration of the register clock pulse.
    while (!digitalRead(pinCLK));
    while (digitalRead(pinCLK));

    // Stop driving the bus.
    pinMode(pinBus0, INPUT);
    pinMode(pinBus1, INPUT);
    pinMode(pinBus2, INPUT);
    pinMode(pinBus3, INPUT);
    pinMode(pinBus4, INPUT);
    pinMode(pinBus5, INPUT);
    pinMode(pinBus6, INPUT);
    pinMode(pinBus7, INPUT);
  }
}
