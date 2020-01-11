/*
 * Originally based on the Arduino EEPROM programmer as
 * featured in a video by Ben Eater. I started with his
 * code, then adapted it to serve as a way to load data
 * into a 62256 static RAM chip before adding functions
 * for handling Intel HEX and papertape formats.
 */
#define SHIFT_DATA 2
#define SHIFT_CLK 3
#define SHIFT_LATCH 4

#define EX_D0 6
#define EX_D7 13
#define EX_A13 14
#define EX_A14 15
#define EX_RnW 16

#define EX_CONTROL 5
#define EX_RESET 17

#define MAX_MEMORY_SIZE 8192

/* Variables */
int memory_bank = 0;
int memory_base = 0x2000;
int memory_size = MAX_MEMORY_SIZE;
String command;

void setup() {
  pinMode(SHIFT_DATA, OUTPUT);
  pinMode(SHIFT_CLK, OUTPUT);
  pinMode(SHIFT_LATCH, OUTPUT);
  pinMode(EX_CONTROL, OUTPUT);

  Serial.begin(115200);
  disable();
  
  pinMode(EX_A13, OUTPUT);
  pinMode(EX_A14, OUTPUT);
  pinMode(EX_RESET, INPUT);

  print_version();
  Serial.println(F("\nConfiguration:"));
  bank0();
  base_8k0();
  memory_1k();

  Serial.println();
  print_help();
}

/*
 * Assert control of the memory, locking out the system.
 */
void enable() {
  digitalWrite(EX_CONTROL, LOW);
  
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
  digitalWrite(EX_CONTROL, HIGH);

  /* ensure serial LEDs stay off */
  digitalWrite(SHIFT_CLK, LOW);
  digitalWrite(SHIFT_DATA, LOW);
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
  for (int pin = EX_D7; pin >= EX_D0; pin -= 1) {
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

/*
 * Handle serial commands, mainly just matches the name
 * and if it does the supplied function is run. Recognized
 * commands are echoed back to the user.
 */
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

void echo_unknown(String command) {
  Serial.println("? " + command);
}

/*
 * Prints the welcome message to serial output, essentially
 * program version followed by the help message.
 */
void print_welcome() {
  print_version();
  Serial.println();
  print_help();
  Serial.println();
}

void print_version() {
  Serial.println(F("ExRAM 0.2"));
}

void print_status() {
  int val = digitalRead(EX_RESET);
  if (val == 0) Serial.println(F("Host system offline."));
  else Serial.println(F("Host system online"));
}

void print_bank() {
  Serial.print(F("Bank "));
  Serial.print(memory_bank);
  Serial.println(F(" enabled"));
}

void bank0() {
  set_bank(0);
}

void bank1() {
  set_bank(1);
}

void bank2() {
  set_bank(2);
}

void bank3() {
  set_bank(3);
}

void set_bank(int num) {
  memory_bank = num;
  switch (memory_bank) {
    case 0:
      digitalWrite(EX_A13, LOW);
      digitalWrite(EX_A14, LOW);
      Serial.println(F("Bank 0 enabled"));
      break;
    case 1:
      digitalWrite(EX_A13, HIGH);
      digitalWrite(EX_A14, LOW);
      Serial.println(F("Bank 1 enabled"));
      break;
    case 2:
      digitalWrite(EX_A13, LOW);
      digitalWrite(EX_A14, HIGH);
      Serial.println(F("Bank 2 enabled"));
      break;
    case 3:
      digitalWrite(EX_A13, HIGH);
      digitalWrite(EX_A14, HIGH);
      Serial.println(F("Bank 3 enabled"));
      break;
  }
}

void print_memory() {
  Serial.print(memory_size / 1024);
  Serial.println("K");
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
  Serial.print(num_bytes / 1024);
  Serial.println("K");
}

void print_max_memory() {
  Serial.print(MAX_MEMORY_SIZE / 1024);
  Serial.println("K");
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

/*
 * Perform a test of the configured amount of memory, this
 * section of memory has different patterns written to it
 * in 16 byte blocks before comparing the value to what is
 * read back.
 */
void memory_test() {
  unsigned char patterns[] = {0x00, 0xFF, 0x55, 0xAA};

  enable();
  Serial.print(F("Testing "));
  Serial.print(memory_size / 1024);
  Serial.println("K of memory:");
  for (char i = 0; i < (sizeof(patterns) / sizeof(patterns[0])); i++) {
    if (memory_test_pattern(i, patterns[i])) {
      Serial.println(F(" OK!"));
    } else {
      Serial.println(F(" failed!"));
      break;
    }
  }
  Serial.println(F("Testing completed!"));
  disable();
}

bool memory_test_pattern(char pass, unsigned char pattern) {
  char tmp[10];
  Serial.print("Pass ");
  sprintf(tmp, "%d (0x%02X) ", pass, pattern);
  Serial.print(tmp);

  bool passed = true;
  for (int base = 0; base < memory_size; base += 16) {
    setWrite();
    for (int offset = 0; offset <= 15; offset += 1) {
      setAddress(base + offset);
      writeByte(pattern);
    }
    
    setRead();
    bool block_passed = true;
    for (int offset = 0; offset <= 15; offset += 1) {
      setAddress(base + offset);
      if (readByte() != pattern) {
        passed = false;
        block_passed = false;
      }
    }
       
    if (block_passed) {
      Serial.print(".");
    } else {
      Serial.print("x");
    }
  }

  return passed;
}

/*
 * Zero out the contents of memory, this is handy when it has
 * been filled with unknown data or simply junk.
 */
void memory_zero() {
  Serial.print(F("Zeroing out "));
  Serial.print(memory_size / 1024);
  Serial.print(F("K of memory "));

  enable();
  setWrite();
  for (int base = 0; base < memory_size; base += 16) {
    for (int offset = 0; offset <= 15; offset += 1) {
      setAddress(base + offset);
      writeByte(0x00);
    }

    Serial.print(".");
  }
  disable();

  Serial.println(F(" done!"));
}

/*
 * Dumps memory contents to the console, formatting it similarly to
 * the hex dumps found in the book "The First Book of KIM".
 */
void dump() {
  enable();
  setRead();

  Serial.println(F("        0  1  2  3  4  5  6  7    8  9  A  B  C  D  E  F "));
  for (int base = 0; base < memory_size; base += 16) {
    byte data[16];
    for (int offset = 0; offset <= 15; offset += 1) {
      setAddress(base + offset);
      data[offset] = readByte();
    }

    char buf[80];
    sprintf(buf, "$%.4X- %02X %02X %02X %02X %02X %02X %02X %02X   %02X %02X %02X %02X %02X %02X %02X %02X",
            base + memory_base, data[0], data[1], data[2], data[3], data[4], data[5], data[6], data[7],
            data[8], data[9], data[10], data[11], data[12], data[13], data[14], data[15]);

    Serial.println(buf);
  }

  disable();
}

/*
 * Handle exporting of data to Intel HEX format, this data is printed 
 * to serial directly with a 16 byte record length along with the
 * correct checksum.
 */
void hex_dump() {
  enable();
  setRead();
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

/*
 * Handle importing of Intel HEX files. Data is read and loaded
 * on a line by line basis, the maximum supported byte count for
 * each is 0x20 (32 in decimal). The only record type recognized
 * is the one for data.
 */
bool handle_intel(String c) {
  if (c.length() < 11) return handle_record_error(c, F("record too short"));

  int byte_count = convert_hex_pair(c[1], c[2]);
  if (c.length() != (11 + (byte_count * 2))) return handle_record_error(c, F("length does not match data"));
  if (byte_count > 32) return handle_record_error(c, F("buffer overflow"));

  int address = convert_hex_address(c[3], c[4], c[5], c[6]);
  int hi = (address & 0xFF00) >> 8;
  int lo = address & 0x00FF;
  int record_type = convert_hex_pair(c[7], c[8]);

  byte data[32];
  int data_sum = 0;
  int d = 0;
  for (int i = 0; i < (byte_count * 2); i+=2) {
      data[d] = convert_hex_pair(
        c.charAt(9 + i),
        c.charAt(10 + i)
      );
      
      data_sum += data[d];
      d++;
  }

  int checksum = convert_hex_pair(c[9 + (byte_count * 2)], c[10 + (byte_count * 2)]);
  if (0x00 != ((byte_count + hi + lo + record_type + data_sum + checksum) & 0xFF)) {
    return handle_record_error(c, "checksum error");
  } else {
    switch (record_type) {
      case 0x00: /* data */
        enable();
        setWrite();
        for (int i = 0; i < byte_count; i++) {
          setAddress(address + i);
          writeByte(data[i]);
        }
        disable();
      case 0x04: /* extended linear address */
        echo_command(c);
        return true;
      default:
        return handle_record_error(c, F("unknown record type"));
    }
  }
}

int convert_hex_pair(char a1, char a0) {
  return (
      (convert_hex_digit(a1) << 4) +
      (convert_hex_digit(a0))
  );
}

int convert_hex_digit(char digit) {
  digit = (digit > '9' ? digit - 87 : digit - 48);
  if (digit < 0) return digit + 32;
  if (digit > 15) return 15;
  return digit;
}

int convert_hex_address(char a3, char a2, char a1, char a0) {
  return (
      (convert_hex_digit(a3) << 12) +
      (convert_hex_digit(a2) << 8) +
      (convert_hex_digit(a1) << 4) +
      (convert_hex_digit(a0))
   );
}

bool handle_record_error(String c, String e) {
  Serial.print(c);
  Serial.print(" (");
  Serial.print(e);
  Serial.println(")");
  return false;
}

/*
 * KIM-1 paper tape format:
 *  Data record:
 *    ;bbaaaaddcccc
 *    ;             = record start
 *     bb           = byte count
 *       aaaa       = address (HI/LO)
 *           dd     = data byte(2 characters per byte)
 *             cccc = record checksum
 *    
 *  Last record:
 *    ;0000040004
 *    ;bbaaaacccc
 *    ;             = record start
 *     bb           = 00
 *       aaaa       = total records
 *           cccc   = record checksum
 */
bool handle_paper(String c) {
  if (c.length() < 11) return handle_record_error(c, F("record too short"));

  int byte_count = convert_hex_pair(c[1], c[2]);
  if (c.length() != (11 + (byte_count * 2))) return handle_record_error(c, F("length does not match data"));
  if (byte_count > 24) return handle_record_error(c, F("buffer overflow"));

  int address = convert_hex_address(c[3], c[4], c[5], c[6]);
  int hi = (address & 0xFF00) >> 8;
  int lo = address & 0x00FF;

  byte data[24];
  int data_sum = 0;
  int d = 0;

  for (int i = 0; i < (byte_count * 2); i+=2) {
    data[d] = convert_hex_pair(
      c.charAt(7 + i),
      c.charAt(8 + i)
    );
    
    data_sum += data[d];
    d++;
  }

  int checksum = convert_hex_address(
    c[7 + (byte_count * 2)], 
    c[8 + (byte_count * 2)],
    c[9 + (byte_count * 2)],
    c[10 + (byte_count * 2)]
  );
  if (checksum == (byte_count + hi + lo + data_sum)) {
    enable();
    setWrite();
    for (int i = 0; i < byte_count; i++) {
      setAddress(address + i);
      writeByte(data[i]);
    }
    disable();

    echo_command(c);
    return true;
  } else {
    return handle_record_error(c, F("checksum error"));
  }
}

void print_help() {
  Serial.println(F("Commands supported:"));
  Serial.println(F("bank           Prints bank selection"));
  Serial.println(F("bank <num>     Select 8k bank"));
  Serial.println(F("base           Prints memory offset used"));
  Serial.println(F("base <block>   8k0-8k7 memory offset"));
  Serial.println(F("dump           Dump memory"));
  Serial.println(F("help           Prints this screen"));
  Serial.println(F("hex_dump       Intel HEX dump"));
  Serial.println(F("memory         Print memory dump size"));
  Serial.println(F("memory <size>  1k/2k/4k/8k memory dump size"));
  Serial.println(F("memory test    Test set memory"));
  Serial.println(F("memory zero    Zero out set memory"));
  Serial.println(F("status         Prints system status"));
  Serial.println(F("version        Prints ExRAM software version"));
  Serial.println(F(":<data>        Load Intel HEX data"));
  Serial.println(F(";<data>        Load paper tape data"));
}

void loop() {
  while(Serial.available() > 0) {
    command = Serial.readString();
    command.trim();

    if (handle_command(command, F("version"), print_version)) break;
    else if (handle_command(command, F("status"), print_status)) break;
    else if (handle_command(command, F("bank"), print_bank)) break;
    else if (handle_command(command, F("bank 0"), bank0)) break;
    else if (handle_command(command, F("bank 1"), bank1)) break;
    else if (handle_command(command, F("bank 2"), bank2)) break;
    else if (handle_command(command, F("bank 3"), bank3)) break;
    else if (handle_command(command, F("memory"), print_memory)) break;
    else if (handle_command(command, F("memory 1k"), memory_1k)) break;
    else if (handle_command(command, F("memory 2k"), memory_2k)) break;
    else if (handle_command(command, F("memory 4k"), memory_4k)) break;
    else if (handle_command(command, F("memory 8k"), memory_8k)) break;
    else if (handle_command(command, F("memory max"), memory_8k)) break;
    else if (handle_command(command, F("memory max?"), print_max_memory)) break;
    else if (handle_command(command, F("memory test"), memory_test)) break;
    else if (handle_command(command, F("memory zero"), memory_zero)) break;
    else if (handle_command(command, F("base"), print_memory_base)) break;
    else if (handle_command(command, F("base 8k0"), base_8k0)) break;
    else if (handle_command(command, F("base 8k1"), base_8k1)) break;
    else if (handle_command(command, F("base 8k2"), base_8k2)) break;
    else if (handle_command(command, F("base 8k3"), base_8k3)) break;
    else if (handle_command(command, F("base 8k4"), base_8k4)) break;
    else if (handle_command(command, F("base 8k5"), base_8k5)) break;
    else if (handle_command(command, F("base 8k6"), base_8k6)) break;
    else if (handle_command(command, F("base 8k7"), base_8k7)) break;
    else if (handle_command(command, F("dump"), dump)) break;
    else if (handle_command(command, F("hex_dump"), hex_dump)) break;
    else if (command.charAt(0) == ':') handle_intel(command);
    else if (command.charAt(0) == ';') handle_paper(command);
    else if (handle_command(command, "help", print_help)) break;
    else {
      echo_unknown(command);
    }
  }
}
