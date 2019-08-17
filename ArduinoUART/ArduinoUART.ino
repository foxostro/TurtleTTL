int incomingByte = 0;

const byte pinMO = 2; // The Nano supports interrupts only for pins 2 and 3.
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

volatile byte isPendingChange = false;

void setup() {
  Serial.begin(57600);
  while (!Serial);
  Serial.println("Beginning...");

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
  pinMode(pinSEL, INPUT);
  pinMode(pinAddr0, INPUT);
  attachInterrupt(digitalPinToInterrupt(pinMO), markPendingChange, CHANGE);
  attachInterrupt(digitalPinToInterrupt(pinMI), markPendingChange, CHANGE);
}

void loop() {
  while (!isPendingChange);

  noInterrupts();

  const byte sel = 0 == digitalRead(pinSEL);
  const byte mo = 0 == digitalRead(pinMO);
  const byte mi = 0 == digitalRead(pinMI);
  const byte bus = (digitalRead(pinBus0))
                 | (digitalRead(pinBus1) << 1)
                 | (digitalRead(pinBus2) << 2)
                 | (digitalRead(pinBus3) << 3)
                 | (digitalRead(pinBus4) << 4)
                 | (digitalRead(pinBus5) << 5)
                 | (digitalRead(pinBus6) << 6)
                 | (digitalRead(pinBus7) << 7);

  if (sel && mi) {
    Serial.print("value: ");
    Serial.print(bus);
    Serial.print("\n");
  }

  isPendingChange = false;

  interrupts();
}

void markPendingChange() {
  isPendingChange = true;
}
