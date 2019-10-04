#define SHIFT_DATA 2
#define SHIFT_CLK 3
#define SHIFT_LATCH 4

#define EX_D0 6
#define EX_D7 13
#define EX_A13 14
#define EX_A14 15
#define EX_RnW 16

#define EX_EN 5
#define EX_RESET 17

#define MAX_MEMORY_SIZE 8192

/* Variables */
int memory_size = MAX_MEMORY_SIZE;
int memory_base = 0x2000;
String command;

/*
 * Assert control of the memory, locking out the system.
 */
void enable() {
  digitalWrite(EX_EN, HIGH);
  
  digitalWrite(EX_RnW, HIGH);
  pinMode(EX_RnW, OUTPUT);

  for (int pin = EX_D0; pin <= EX_D7; pin += 1) {
    pinMode(pin, OUTPUT);
  }
}

/*
 * Release control of the memory, allowing the system access.
 */
void disable() {
  for (int pin = EX_D0; pin <= EX_D7; pin += 1) {
    pinMode(pin, INPUT);
  }

  pinMode(EX_RnW, INPUT);

  digitalWrite(EX_EN, LOW);
}

/*
 * Shift out the specified 16-bit address.
 */
void setAddress(int address) {
  shiftOut(SHIFT_DATA, SHIFT_CLK, MSBFIRST, (address >> 8));
  shiftOut(SHIFT_DATA, SHIFT_CLK, MSBFIRST, address);

  digitalWrite(SHIFT_LATCH, LOW);
  digitalWrite(SHIFT_LATCH, HIGH);
  digitalWrite(SHIFT_LATCH, LOW);
}

void setRead() {
  for (int pin = EX_D0; pin <= EX_D7; pin += 1) {
    pinMode(pin, INPUT);
  }
  digitalWrite(EX_RnW, HIGH);
}

/*
 * Read a byte from the data pings, use set_direction
 * to perform sequential steps without setting up every
 * time.
 */
byte readByte(bool set_direction = false) {
  if (set_direction) setRead();
  
  byte value = 0;
  for (int pin = EX_D0; pin >= EX_D7; pin -= 1) {
    value = (value << 1) + digitalRead(pin);
  }
  return value;
}

void setWrite() {
  digitalWrite(EX_RnW, HIGH);
  for (int pin = EX_D0; pin <= EX_D7; pin += 1) {
    pinMode(pin, OUTPUT);
  }
}

/*
 * Write a byte to the data pins, use set_direction
 * to perform sequential steps without setting up every
 * time.
 */
void writeByte(byte value, bool set_direction = false) {
  if (set_direction) setWrite();
  
  for (int pin = EX_D0; pin <= EX_D7; pin += 1) {
    digitalWrite(pin, value & 1);
    value = value >> 1;
  }
  digitalWrite(EX_RnW, LOW);
  delayMicroseconds(1);
  digitalWrite(EX_RnW, HIGH);
  delay(10);
}

void setup() {
  pinMode(SHIFT_DATA, OUTPUT);
  pinMode(SHIFT_CLK, OUTPUT);
  pinMode(SHIFT_LATCH, OUTPUT);
  pinMode(EX_EN, OUTPUT);

  Serial.begin(115200);
  disable();
  version();

  pinMode(EX_A13, OUTPUT);
  pinMode(EX_A14, OUTPUT);
  bank0();
  base_8k1();
}

void version() {
  Serial.println("ExRAM 0.1");
}

void bank0() {
  digitalWrite(EX_A13, LOW);
  digitalWrite(EX_A14, LOW);
  Serial.println("Bank 0 enabled");
}

void bank1() {
  digitalWrite(EX_A13, HIGH);
  digitalWrite(EX_A14, LOW);
  Serial.println("Bank 1 enabled");
}

void bank2() {
  digitalWrite(EX_A13, LOW);
  digitalWrite(EX_A14, HIGH);
  Serial.println("Bank 2 enabled");
}

void bank3() {
  digitalWrite(EX_A13, HIGH);
  digitalWrite(EX_A14, HIGH);
  Serial.println("Bank 3 enabled");
}

void print_memory() {
  Serial.println(memory_size);
}

void memory_1k() {
  set_memory(1024 * 1);
}

void memory_2k() {
  set_memory(1024 * 2);
}

void memory_4k() {
  set_memory(1024 * 4);
}

void memory_8k() {
  set_memory(1024 * 8);
}

void set_memory(int num_bytes) {
  memory_size = num_bytes;
  Serial.println(num_bytes);
}

void print_max_memory() {
  Serial.println(MAX_MEMORY_SIZE);
}

void print_memory_base() {
  print_address(memory_base);
  Serial.print(" - ");
  print_address(memory_base + 0x1FFF);
  Serial.println();
}

void print_address(int number) {
  char tmp[10];
  sprintf(tmp, "$%04X", number);
  Serial.print(tmp);
}

void base_8k0() { set_base(0x0000); }
void base_8k1() { set_base(0x2000); }
void base_8k2() { set_base(0x4000); }
void base_8k3() { set_base(0x6000); }
void base_8k4() { set_base(0x8000); }
void base_8k5() { set_base(0xA000); }
void base_8k6() { set_base(0xC000); }
void base_8k7() { set_base(0xE000); }

void set_base(int value){
  memory_base = value;
  print_memory_base();
}

void dump() {
  enable();
  setRead();

  Serial.println("        0  1  2  3  4  5  6  7    8  9  A  B  C  D  E  F ");
  for (int base = 0; base < memory_size; base += 16) {
    byte data[16];
    for (int offset = 0; offset <= 15; offset += 1) {
      setAddress(base + offset);
      data[offset] = readByte();
    }

    char buf[80];
    sprintf(buf, "$%.4X:  %02x %02x %02x %02x %02x %02x %02x %02x   %02x %02x %02x %02x %02x %02x %02x %02x",
            base + memory_base, data[0], data[1], data[2], data[3], data[4], data[5], data[6], data[7],
            data[8], data[9], data[10], data[11], data[12], data[13], data[14], data[15]);

    Serial.println(buf);
  }

  disable();
}

void hex_dump() {
  enable();

  for (int base = 0; base < memory_size; base += 16) {
    byte data[16];
    int hi = ((memory_base + base) & 0xFF00) >> 8;
    int lo = (memory_base + base) & 0x00FF;

    int sum = 0;
    for (int offset = 0; offset <= 15; offset += 1) {
      setAddress(base + offset);
      data[offset] = readByte();
      sum += data[offset];
    }

    int checksum = hex_checksum(
      0x10, 
      hi,
      lo,
      0x00,
      sum
    );

    char buf[80];
    sprintf(buf, ":%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
            0x10, hi, lo, 0x00,
            data[0], data[1], data[2], data[3], data[4], data[5], data[6], data[7],
            data[8], data[9], data[10], data[11], data[12], data[13], data[14], data[15], checksum);

    Serial.println(buf);
  }
  
  disable();
}

int hex_checksum(int byte_count, int hi, int lo, int record_type, int data_sum) {
  int x = byte_count + hi + lo + record_type + data_sum;
  x = x % 256;
  x = ~x;
  x = x + 1;
  x = x & 0xFF;
  return x;
}

bool handle_command(String command, String name, void (*function)()) {
  if (command == name) {
    echo_command(command);
    (*function)();
    return true;
  }
  return false;
}

void echo_command(String command) {
  Serial.println("> "+ command);
}

void loop() {
  while(Serial.available() > 0) {
    command = Serial.readString();
    command.trim();

    if (handle_command(command, "version", version)) break;
    else if (handle_command(command, "bank 0", bank0)) break;
    else if (handle_command(command, "bank 1", bank1)) break;
    else if (handle_command(command, "bank 2", bank2)) break;
    else if (handle_command(command, "bank 3", bank3)) break;
    else if (handle_command(command, "memory", print_memory)) break;
    else if (handle_command(command, "memory 1k", memory_1k)) break;
    else if (handle_command(command, "memory 2k", memory_2k)) break;
    else if (handle_command(command, "memory 4k", memory_4k)) break;
    else if (handle_command(command, "memory 8k", memory_8k)) break;
    else if (handle_command(command, "memory max", memory_8k)) break;
    else if (handle_command(command, "memory max?", print_max_memory)) break;
    else if (handle_command(command, "base", print_memory_base)) break;
    else if (handle_command(command, "base 8k1", base_8k1)) break;
    else if (handle_command(command, "base 8k2", base_8k2)) break;
    else if (handle_command(command, "base 8k3", base_8k3)) break;
    else if (handle_command(command, "base 8k4", base_8k4)) break;
    else if (handle_command(command, "base 8k5", base_8k5)) break;
    else if (handle_command(command, "base 8k6", base_8k6)) break;
    else if (handle_command(command, "base 8k7", base_8k7)) break;
    else if (handle_command(command, "dump", dump)) break;
    else if (handle_command(command, "hex_dump", hex_dump)) break;
    else {
      Serial.println("? " + command);
    }
  }
}
