int incomingByte = 0;

void setup() {
  Serial.begin(9600);
  while(!Serial); 
  Serial.println("Hello, World!");
}

void loop() {
  if (Serial.available() > 0) {
    incomingByte = Serial.read();
    Serial.print((char)incomingByte);
   }
}
