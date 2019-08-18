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

volatile bool isPendingOutput = false;
volatile bool isPendingInput = false;

void setup() {
  Serial.begin(57600);
  while (!Serial);

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
  
  Serial.println("Beginning...");
  
  attachInterrupt(digitalPinToInterrupt(pinMO), markPendingOutput, FALLING);
  attachInterrupt(digitalPinToInterrupt(pinMI), markPendingInput, FALLING);
}

void loop() {
  Serial.println("Waiting for signal");
  while (!isPendingOutput && !isPendingInput);

  noInterrupts();

  Serial.println("Saw a signal");

  if (isPendingOutput) {
    Serial.println("Output?");
    const bool sel = (LOW == digitalRead(pinSEL));
    const bool mo = (LOW == digitalRead(pinMO));
    
    if (sel && mo) {
      pinMode(pinBus0, OUTPUT);
      pinMode(pinBus1, OUTPUT);
      pinMode(pinBus2, OUTPUT);
      pinMode(pinBus3, OUTPUT);
      pinMode(pinBus4, OUTPUT);
      pinMode(pinBus5, OUTPUT);
      pinMode(pinBus6, OUTPUT);
      pinMode(pinBus7, OUTPUT);

      const byte addr0 = digitalRead(pinAddr0);

      int value = 0;
      if (LOW == addr0) {
        value = Serial.read();
      } else {
        value = Serial.available();
      }

      digitalWrite(pinBus0, (value & 1) != 0);
      digitalWrite(pinBus1, (value & 2) != 0);
      digitalWrite(pinBus2, (value & 4) != 0);
      digitalWrite(pinBus3, (value & 8) != 0);
      digitalWrite(pinBus4, (value & 16) != 0);
      digitalWrite(pinBus5, (value & 32) != 0);
      digitalWrite(pinBus6, (value & 64) != 0);
      digitalWrite(pinBus7, (value & 128) != 0);

      // Wait for the next control signal falling edge.
      // The above may take more than one clock cycle. The computer is
      // expected to hold the signals for the amount of time needed to
      // ensure there will be a signal transition here.
      while ((LOW == digitalRead(pinMO)) && (LOW == digitalRead(pinSEL)));
    }
    
    pinMode(pinBus0, INPUT);
    pinMode(pinBus1, INPUT);
    pinMode(pinBus2, INPUT);
    pinMode(pinBus3, INPUT);
    pinMode(pinBus4, INPUT);
    pinMode(pinBus5, INPUT);
    pinMode(pinBus6, INPUT);
    pinMode(pinBus7, INPUT);
    
    isPendingOutput = false;
  }

  if (isPendingInput) {
    Serial.println("Input?");
    const bool sel = (LOW == digitalRead(pinSEL));
    const bool mi = (LOW == digitalRead(pinMI));
    const byte addr0 = digitalRead(pinAddr0);

    if (sel && mi && (HIGH == addr0)) {
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
    
    isPendingInput = false;
  }

  interrupts();

}

void markPendingOutput() {
  isPendingOutput = true;
}

void markPendingInput() {
  isPendingInput = true;
}
