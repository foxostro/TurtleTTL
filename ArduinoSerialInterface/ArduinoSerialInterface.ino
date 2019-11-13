const byte pinPO = 2;
const byte pinPI = 3;
const byte pinBus1 = 4;
const byte pinBus0 = 5;
const byte pinBus3 = 6;
const byte pinBus2 = 7;
const byte pinBus5 = 8;
const byte pinBus4 = 9;
const byte pinBus7 = 10;
const byte pinBus6 = 11;
const byte pinAddr1 = 13;

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
  pinMode(pinAddr1, INPUT);
  
  Serial.begin(57600);
  while (!Serial);
  Serial.println("Arduino ready.");
}

void loop() {
  bool pi, po, addr1;

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
    const byte bus = (digitalRead(pinBus0))
                   | (digitalRead(pinBus1) << 1)
                   | (digitalRead(pinBus2) << 2)
                   | (digitalRead(pinBus3) << 3)
                   | (digitalRead(pinBus4) << 4)
                   | (digitalRead(pinBus5) << 5)
                   | (digitalRead(pinBus6) << 6)
                   | (digitalRead(pinBus7) << 7);

    Serial.print((char)bus);

    while (!digitalRead(pinPI));
  } else if (!po) {
    addr1 = digitalRead(pinAddr1);

    int value = 0;
    if (addr1) {
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
    
    pinMode(pinBus0, OUTPUT);
    pinMode(pinBus1, OUTPUT);
    pinMode(pinBus2, OUTPUT);
    pinMode(pinBus3, OUTPUT);
    pinMode(pinBus4, OUTPUT);
    pinMode(pinBus5, OUTPUT);
    pinMode(pinBus6, OUTPUT);
    pinMode(pinBus7, OUTPUT);

    while (!digitalRead(pinPO));

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
