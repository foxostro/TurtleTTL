const byte pinSCK = 2;
const byte pinMOSI = 3;
const byte pinMISO  = 13;

void setup() {
  pinMode(pinSCK, INPUT_PULLUP);
  pinMode(pinMOSI, INPUT_PULLUP);

  digitalWrite(pinMISO, 0);
  pinMode(pinMISO, OUTPUT);
  
  Serial.begin(57600);
  while (!Serial);
  Serial.println("Arduino ready.");
}

void loop() {
  bool sck;
  while ((sck = digitalRead(pinSCK)) == 0) {
    delay(100);
  }
  Serial.println("rising edge");

  int value = digitalRead(pinMOSI);
  digitalWrite(pinMISO, 1);
  Serial.print("MOSI: ");
  Serial.print(value);
  Serial.print("\n");
  
  while ((sck = digitalRead(pinSCK)) != 0) {
    delay(100);
  }
  Serial.println("falling edge");
}
