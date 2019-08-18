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
  
  Serial.println("Beginning...");
}

void loop() {
  bool clk, sel, mi, mo, addr0;
  
  while (true == (sel = digitalRead(pinSEL))) {
    Serial.print("SEL: ");
    Serial.print(sel);
    Serial.print("\n");
  }

  while (true) {
    clk = digitalRead(pinCLK);
    if (clk) {
      break;
    }
    
    mo = digitalRead(pinMO);
    if (!mo) {
      break;
    }
  }

  if (clk) {
    sel = digitalRead(pinSEL);
    mi = digitalRead(pinMI);
    if (!sel && !mi) {
      const byte bus = (digitalRead(pinBus0))
                     | (digitalRead(pinBus1) << 1)
                     | (digitalRead(pinBus2) << 2)
                     | (digitalRead(pinBus3) << 3)
                     | (digitalRead(pinBus4) << 4)
                     | (digitalRead(pinBus5) << 5)
                     | (digitalRead(pinBus6) << 6)
                     | (digitalRead(pinBus7) << 7);
                     
      Serial.print("got: ");
      Serial.print(bus);
      Serial.print("\n");
    }
  } else {
    Serial.println("I think we just saw the MO signal go active.");
    sel = digitalRead(pinSEL);
    mo = digitalRead(pinMO);
    if (!sel && !mo) {
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
  }

  // Wait for the next falling edge of the clock.
  while (digitalRead(pinCLK));
}
