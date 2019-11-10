const byte pinOE = 2;
const byte pinWE = 3;
const byte pinAddr0 = 4;
const byte pinAddr1 = 5;
const byte pinData0 = 6;
const byte pinData1 = 7;
const byte pinData2 = 8;
const byte pinData3 = 9;
const byte pinData4 = 10;
const byte pinData5 = 11;
const byte pinData6 = 12;
const byte pinData7 = 13;

const byte PORT_STATUS = 0;
const byte PORT_COMMAND = 1;
const byte PORT_DATA = 2;

const byte STATUS_READY = 0;
const byte STATUS_WAITING = 1;

const byte COMMAND_ACK = 0;
const byte COMMAND_READ = 1;
const byte COMMAND_WRITE = 2;
const byte COMMAND_AVAIL = 3;

byte g_status = STATUS_READY;

void setup() {
  Serial.begin(57600);
  while (!Serial);
  
  digitalWrite(pinOE, 1);
  digitalWrite(pinAddr0, 0);
  digitalWrite(pinAddr1, 0);
  digitalWrite(pinWE, 1);
  
  pinMode(pinWE, OUTPUT);
  pinMode(pinOE, OUTPUT);
  pinMode(pinAddr0, OUTPUT);
  pinMode(pinAddr1, OUTPUT);
  
  store(PORT_DATA, 0);
  store(PORT_COMMAND, COMMAND_ACK);
  makeReady();
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

  digitalWrite(pinAddr0, (address>>0) & 1);
  digitalWrite(pinAddr1, (address>>1) & 1);

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
  
  digitalWrite(pinAddr0, (address>>0) & 1);
  digitalWrite(pinAddr1, (address>>1) & 1);
  
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
  switch (g_status) {
    case STATUS_READY: doLoopWhileReady(); break;
    case STATUS_WAITING: doLoopWhileWaiting(); break;
  }
}

void doLoopWhileReady() {
  int command = load(PORT_COMMAND);
  switch (command) {
  case COMMAND_READ: doRead(); makeWaiting(); break;
  case COMMAND_WRITE: doWrite(); makeWaiting(); break;
  case COMMAND_AVAIL: doAvail(); makeWaiting(); break;
  }
}

void doLoopWhileWaiting() {
  int command = load(PORT_COMMAND);
  if (command == COMMAND_ACK) {
    makeReady();
  }
}

void makeReady() {
  g_status = STATUS_READY;
  store(PORT_STATUS, STATUS_READY);
}

void makeWaiting() {
  g_status = STATUS_WAITING;
  store(PORT_STATUS, STATUS_WAITING);
}

void doRead() {
  Serial.print("read: ");
  byte value = Serial.read();
  Serial.print((char)value);
  Serial.print("\n");
  store(PORT_DATA, value);
}

void doWrite() {
  Serial.print((char)load(PORT_DATA));
  store(PORT_DATA, 0);
}

void doAvail() {
  store(PORT_DATA, Serial.available());
}
