const byte pinOE = 4;
const byte pinWE = 5;
const byte pinAddr0 = 6;
const byte pinData0 = A0;
const byte pinData1 = A1;
const byte pinData2 = A2;
const byte pinData3 = A3;
const byte pinData4 = A4;
const byte pinData5 = A5;
const byte pinData6 = A6;
const byte pinData7 = A7;
const byte commandPort = 0;
const byte dataPort = 1;
const byte READY = 0;
const byte COMMAND_READ = 1;
const byte COMMAND_WRITE = 2;
const byte COMMAND_AVAIL = 3;
const byte COMMAND_INIT = 4;

volatile int pendingCommand = 0;

void setup() {
  pinMode(pinWE, OUTPUT);
  digitalWrite(pinWE, 1);
  
  pinMode(pinOE, OUTPUT);
  digitalWrite(pinOE, 1);
  
  pinMode(pinAddr0, OUTPUT);
  digitalWrite(pinAddr0, 0);

  makeReady();
  
  Serial.begin(57600);
  while (!Serial);
  Serial.println("Arduino ready.");

  attachInterrupt(digitalPinToInterrupt(2), clientStoredCommand, RISING);
  attachInterrupt(digitalPinToInterrupt(3), clientStoredCommand, RISING);
}

void store(int address, byte value) {
  pinMode(pinData0, OUTPUT);
  pinMode(pinData1, OUTPUT);
  pinMode(pinData2, OUTPUT);
  pinMode(pinData3, OUTPUT);
  pinMode(pinData4, OUTPUT);
  pinMode(pinData5, OUTPUT);
  pinMode(pinData6, OUTPUT);
  pinMode(pinData7, OUTPUT);

  digitalWrite(pinData0, (value>>0) & 1);
  digitalWrite(pinData1, (value>>1) & 1);
  digitalWrite(pinData2, (value>>2) & 1);
  digitalWrite(pinData3, (value>>3) & 1);
  digitalWrite(pinData4, (value>>4) & 1);
  digitalWrite(pinData5, (value>>5) & 1);
  digitalWrite(pinData6, (value>>6) & 1);
  digitalWrite(pinData7, (value>>7) & 1);

  digitalWrite(pinAddr0, address & 1);
  digitalWrite(pinWE, 0);
  digitalWrite(pinWE, 1);
}

int load(int address) {
  pinMode(pinData0, INPUT);
  pinMode(pinData1, INPUT);
  pinMode(pinData2, INPUT);
  pinMode(pinData3, INPUT);
  pinMode(pinData4, INPUT);
  pinMode(pinData5, INPUT);
  pinMode(pinData6, INPUT);
  pinMode(pinData7, INPUT);
  
  digitalWrite(pinAddr0, address & 1);
  digitalWrite(pinOE, 0);
  
  const byte value = (digitalRead(pinData0))
                   | (digitalRead(pinData1) << 1)
                   | (digitalRead(pinData2) << 2)
                   | (digitalRead(pinData3) << 3)
                   | (digitalRead(pinData4) << 4)
                   | (digitalRead(pinData5) << 5)
                   | (digitalRead(pinData6) << 6)
                   | (digitalRead(pinData7) << 7);

  digitalWrite(pinOE, 1);

  return value;
}

void loop() {
  if (pendingCommand) {
    int command = load(commandPort);
    switch (command) {
    case COMMAND_READ: doRead(); break;
    case COMMAND_WRITE: doWrite(); break;
    case COMMAND_AVAIL: doAvail(); break;
    case COMMAND_INIT: doInit(); break;
    case READY: break;
    default: break; // ignore unknown commands
    }
    makeReady();
  }
}

void doRead() {
  Serial.println("read");
  store(dataPort, Serial.read());
}

void doWrite() {
  Serial.println("write");
  Serial.print((char)load(dataPort));
}

void doAvail() {
  Serial.println("avail");
  store(dataPort, Serial.available());
}

void doInit() {
  Serial.println("init");
}

void makeReady() {
  pendingCommand = 0;
  store(commandPort, READY);
}

void clientStoredCommand() {
  pendingCommand = 1;
}
