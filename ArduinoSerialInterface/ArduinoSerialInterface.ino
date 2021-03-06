const int kPinSCK = 2;
const int kPinMOSI[8] = {3, 4, 5, 6, 7, 8, 9, 10};
const int kPinMISO[8]  = {11, 12, 13, A0, A1, A2, A3, A4};
const byte kStatusSuccess = 0xff;
enum State {
  kStateIdle = 0,
  kStateWaitingForOutputByte
};
enum Command {
  kCommandResetSerialLink = 0,
  kCommandPutByte,
  kCommandGetByte,
  kCommandGetNumBytes
};

State g_state = kStateIdle;

void set_miso(byte value) {
  for (int i = 0; i < 8; ++i) {
    digitalWrite(kPinMISO[i], (value >> i) & 1);
  }
}

byte get_mosi() {
  byte value = 0;
  for (int i = 0; i < 8; ++i) {
    value |= (digitalRead(kPinMOSI[i]) << i);
  }
  return value;
}

void wait_for_sck_rising_edge() {
  bool sck;
  while ((sck = digitalRead(kPinSCK)) == 0);
}

void wait_for_sck_falling_edge() {
  bool sck;
  while ((sck = digitalRead(kPinSCK)) != 0);
}

void setup() {
  pinMode(kPinSCK, INPUT_PULLUP);
  for (int i = 0; i < 8; ++i) {
    pinMode(kPinMOSI[i], INPUT_PULLUP);
  }
  set_miso(0);
  for (int i = 0; i < 8; ++i) {
    pinMode(kPinMISO[i], OUTPUT);
  }
  
  Serial.begin(57600);
  while (!Serial);
  Serial.println("Arduino ready.");
}

State doCommandReset() {
  set_miso(kStatusSuccess);
}

State doCommandPutByte() {
  set_miso(kStatusSuccess);
  return kStateWaitingForOutputByte;
}

State doCommandGetByte() {
  byte value = Serial.read();
  set_miso(value);
  return kStateIdle;
}

State doCommandGetNumBytes() {
  byte value = Serial.available();
  set_miso(value);
  return kStateIdle;
}

State doStateIdle(byte mosi) {
  State nextState = kStateIdle;
  switch (mosi) {
    case kCommandResetSerialLink:
      //Serial.println("kCommandResetSerialLink");
      nextState = doCommandReset();
      break;
      
    case kCommandPutByte:
      //Serial.println("kCommandPutByte");
      nextState = doCommandPutByte();
      break;
      
    case kCommandGetByte:
      //Serial.println("kCommandGetByte");
      nextState = doCommandGetByte();
      break;
      
    case kCommandGetNumBytes:
      //Serial.println("kCommandGetNumBytes");
      nextState = doCommandGetNumBytes();
      break;
  }
  return nextState;
}

State doStateWaiting(byte mosi) {
  //Serial.print("put byte: ");
  Serial.print((char)mosi);
  //Serial.print("\n");
  set_miso(kStatusSuccess);
  return kStateIdle;
}

void loop() {
  wait_for_sck_rising_edge();
  //Serial.println("rising edge of SCK");
  
  byte mosi = get_mosi();
  State nextState;
  
  //Serial.print("mosi: ");
  //Serial.print((int)mosi);
  //Serial.print("\n");
  
  switch (g_state) {
    case kStateIdle:
      //Serial.println("kStateIdle");
      nextState = doStateIdle(mosi);
    break;
    
    case kStateWaitingForOutputByte:
      //Serial.println("kStateWaitingForOutputByte");
      nextState = doStateWaiting(mosi);
    break;
  }
  
  g_state = nextState;
  
  wait_for_sck_falling_edge();
  //Serial.println("falling edge of SCK");
}
