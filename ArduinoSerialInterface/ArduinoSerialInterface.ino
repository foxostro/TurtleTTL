const byte pinMO = 2;
const byte pinMI = 3;
const byte pinBus0 = 4;
const byte pinBus1 = 5;
const byte pinBus2 = 6;
const byte pinBus3 = 7;
const byte pinBus4 = 8;
const byte pinBus5 = 9;
const byte pinBus6 = 10;
const byte pinBus7 = 11;
const byte pinSEL = 12;
const byte pinAddr0 = 13;
const byte pinCLK = A0;

void setup() {
  pinMode(pinSEL, INPUT);
  pinMode(pinMO, INPUT);
  pinMode(pinMI, INPUT);
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
}

void loop() {
  bool clk, sel, mi, mo, addr0;

  // Wait for either MO or MI to become active.
  while (true) {
    // Make sure the device is selected too.
    sel = digitalRead(pinSEL);
    if (sel) {
      return;
    }
    
    mi = digitalRead(pinMI);
    if (!mi) {
      break;
    }
    
    mo = digitalRead(pinMO);
    if (!mo) {
      break;
    }
  }

  if (!mi) {
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
                   
    Serial.print((char)bus);
  } else {
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

    digitalWrite(pinBus0, (value & 1) != 0);
    digitalWrite(pinBus1, (value & 2) != 0);
    digitalWrite(pinBus2, (value & 4) != 0);
    digitalWrite(pinBus3, (value & 8) != 0);
    digitalWrite(pinBus4, (value & 16) != 0);
    digitalWrite(pinBus5, (value & 32) != 0);
    digitalWrite(pinBus6, (value & 64) != 0);
    digitalWrite(pinBus7, (value & 128) != 0);
  }

  // Wait for the next falling edge of the clock.
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
