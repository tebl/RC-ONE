#include <Arduino.h>
#include "constants.h"
#include "debug.h"
#include "ansi.h"
#include "help.h"

extern bool ansi_enabled;
extern int memory_bank;
extern int memory_base;
extern int memory_size;

/*
 * Placeholder to initialize any variables, just in case I need them later.
 */
void commands_init() {
}

/*
 * Prints out the status of the 6502-system, this is done by checking wether
 * the reset lines has been pulled up. Might not be reliable as it'd be
 * floating though it somehow seems to be working anyway (famous last words
 * and all that).
 */
void print_status() {
  int val = digitalRead(EX_RESET);
  Serial.print(F("Host system "));
  if (val == 0) {
    ansi_error_ln(F("offline"));
  }
  else {
    ansi_notice_ln(F("powered"));
  }
}

void print_version() {
  Serial.print(F("ExRAM "));
  Serial.println(VERSION);
}

void print_welcome() {
  ansi_clear();
  ansi_highlight();
  print_version();
  ansi_default();

  ansi_notice();
  Serial.println(F("\nConfiguration:"));
  ansi_default();
}

/* Called when a recognized command has been recognized, but before the
 * function is actually called.
 */
void echo_command(String command) {
  ansi_colour(COLOUR_CYAN);
  Serial.println("> "+ command);
  ansi_default();
}

/* Called when the entered command has not been recognized, we don't know
 * what to do next so we'll just print it as an error instead.
 */
void echo_unknown(String command) {
  ansi_error();
  Serial.println("? " + command);
  ansi_default();
}

/* Clear the serial terminal screen, but note that this won't actually do
 * anything unless ANSI terminal codes are supported by the client and
 * have not been explicitly disabled. Does a second echo of the command
 * as the first one will disappear upon execution.
 */
void do_clear() {
  ansi_clear();
  if (ansi_enabled) echo_command(F("clear"));
}


/*
 * Assert control, locking out the 6502-system from
 * being able to access the memory.
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
 * Release control, allowing the 6502-system
 * access to the memory again.
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
void set_address(int address) {
  shiftOut(SHIFT_DATA, SHIFT_CLK, MSBFIRST, (address >> 8));
  shiftOut(SHIFT_DATA, SHIFT_CLK, MSBFIRST, address);

  digitalWrite(SHIFT_LATCH, LOW);
  digitalWrite(SHIFT_LATCH, HIGH);
  digitalWrite(SHIFT_LATCH, LOW);
}

void set_read() {
  for (int pin = EX_D0; pin <= EX_D7; pin += 1) {
    pinMode(pin, INPUT);
  }
  digitalWrite(EX_RnW, HIGH);
}

/*
 * Read a byte from the data pins, use set_direction
 * to perform sequential steps without setting up every
 * time.
 */
byte read_byte(bool set_direction = false) {
  if (set_direction) set_read();
  
  byte value = 0;
  for (int pin = EX_D7; pin >= EX_D0; pin -= 1) {
    value = (value << 1) + digitalRead(pin);
  }
  return value;
}

void set_write() {
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
void write_byte(byte value, bool set_direction = false) {
  if (set_direction) set_write();
  
  for (int pin = EX_D0; pin <= EX_D7; pin += 1) {
    digitalWrite(pin, value & 1);
    value = value >> 1;
  }
  digitalWrite(EX_RnW, LOW);
  delayMicroseconds(1);
  digitalWrite(EX_RnW, HIGH);
}

void print_bank() {
  Serial.print(F("Bank "));
  Serial.print(memory_bank);
  Serial.println(F(" enabled"));
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

void print_memory() {
  Serial.print(memory_size / 1024);
  Serial.println("K");
}

void set_memory(int num_bytes) {
  memory_size = num_bytes;
  Serial.print(num_bytes / 1024);
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

void print_max_memory() {
  Serial.print(MAX_MEMORY_SIZE / 1024);
  Serial.println("K");
}

void print_address(int number) {
  char tmp[10];
  sprintf(tmp, "$%04X", number);
  Serial.print(tmp);
}
void print_memory_base() {
  print_address(memory_base);
  Serial.print(" - ");
  print_address(memory_base + 0x1FFF);
  Serial.println();
}



void set_base(int value){ 
  memory_base = value;
  print_memory_base();
}

void base_8k0() { set_base(0x0000); }
void base_8k1() { set_base(0x2000); }
void base_8k2() { set_base(0x4000); }
void base_8k3() { set_base(0x6000); }
void base_8k4() { set_base(0x8000); }
void base_8k5() { set_base(0xA000); }
void base_8k6() { set_base(0xC000); }
void base_8k7() { set_base(0xE000); }

bool memory_test_pattern(char pass, unsigned char pattern) {
  char tmp[10];
  ansi_notice();
  Serial.print("Pass ");
  sprintf(tmp, "%d (0x%02X) ", pass, pattern);
  Serial.print(tmp);
  ansi_default();

  bool passed = true;
  for (int base = 0; base < memory_size; base += 16) {
    set_write();
    for (int offset = 0; offset <= 15; offset += 1) {
      set_address(base + offset);
      write_byte(pattern);
    }
    
    set_read();
    bool block_passed = true;
    for (int offset = 0; offset <= 15; offset += 1) {
      set_address(base + offset);
      if (read_byte() != pattern) {
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
 * Perform a test of the configured amount of memory, this
 * section of memory has different patterns written to it
 * in 16 byte blocks before comparing the value to what is
 * read back.
 */
void memory_test() {
  unsigned char patterns[] = {0x00, 0xFF, 0x55, 0xAA};

  enable();
  Serial.print(F("Testing "));
  ansi_highlight();
  Serial.print(memory_size / 1024);
  Serial.print('K');
  ansi_default();
  Serial.println(F(" of memory:"));
  for (char i = 0; i < (sizeof(patterns) / sizeof(patterns[0])); i++) {
    if (memory_test_pattern(i, patterns[i])) {
      ansi_notice();
      Serial.println(F(" OK!"));
      ansi_default();
    } else {
      ansi_error();
      Serial.println(F(" failed!"));
      ansi_default();
      break;
    }
  }
  Serial.println(F("Testing completed!"));
  disable();
}

/*
 * Zero out the contents of memory, this is handy when it has
 * been filled with unknown data or simply junk.
 */
void memory_zero() {
  Serial.print(F("Zeroing "));
  ansi_highlight();
  Serial.print(memory_size / 1024);
  Serial.print('K');
  ansi_default();
  Serial.print(F(" of memory "));

  enable();
  set_write();

  for (int pin = EX_D0; pin <= EX_D7; pin += 1) digitalWrite(pin, 0);
  for (int base = 0; base < memory_size; base += 16) {
    for (int offset = 0; offset <= 15; offset += 1) {
      set_address(base + offset);
      digitalWrite(EX_RnW, LOW);
      delayMicroseconds(1);
      digitalWrite(EX_RnW, HIGH);
  }

    Serial.print(".");
  }
  disable();

  ansi_notice();
  Serial.println(F(" done!"));
  ansi_default();
}

/*
 * Dumps memory contents to the console, formatting it similarly to
 * the hex dumps found in the book "The First Book of KIM".
 */
void dump() {
  enable();
  set_read();

  ansi_notice();
  Serial.println(F("        0  1  2  3  4  5  6  7    8  9  A  B  C  D  E  F "));
  ansi_default();
  for (int base = 0; base < memory_size; base += 16) {
    byte data[16];
    int sum = 0;
    for (int offset = 0; offset <= 15; offset += 1) {
      set_address(base + offset);
      data[offset] = read_byte();
      sum += data[offset];
    }

    char buf[80];
    ansi_notice();
    sprintf(buf, "$%.4X- ", base + memory_base);
    Serial.print(buf);
    ansi_default();

    sprintf(buf, "%02X %02X %02X %02X %02X %02X %02X %02X   %02X %02X %02X %02X %02X %02X %02X %02X",
            data[0], data[1], data[2], data[3], data[4], data[5], data[6], data[7],
            data[8], data[9], data[10], data[11], data[12], data[13], data[14], data[15]);

    if (sum == 0 || sum == 4080) ansi_weak();
    Serial.println(buf);
    if (sum == 0 || sum == 4080) ansi_default();
  }

  disable();
}

int intel_checksum(int byte_count, int hi, int lo, int record_type, int data_sum) {
  int x = byte_count + hi + lo + record_type + data_sum;
  x = x % 256;
  x = ~x;
  x = x + 1;
  x = x & 0xFF;
  return x;
}

/*
 * Handle exporting of data to Intel HEX format, this data is printed 
 * to serial directly with a 16 byte record length along with the
 * correct checksum.
 */
void dump_intel() {
  enable();
  set_read();
  int byte_count = 16;
  for (int base = 0; base < memory_size; base += byte_count) {
    byte data[byte_count];
    int hi = ((memory_base + base) & 0xFF00) >> 8;
    int lo = (memory_base + base) & 0x00FF;

    int sum = 0;
    for (int offset = 0; offset < byte_count; offset += 1) {
      set_address(base + offset);
      data[offset] = read_byte();
      sum += data[offset];
    }

    int checksum = intel_checksum(
      0x10, 
      hi,
      lo,
      0x00,
      sum
    );

    char buf[80];
    sprintf(buf, ":%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
            byte_count, hi, lo, 0x00,
            data[0], data[1], data[2], data[3], data[4], data[5], data[6], data[7],
            data[8], data[9], data[10], data[11], data[12], data[13], data[14], data[15], checksum);

    Serial.println(buf);
  }
  
  disable();
}

int convert_hex_digit(char digit) {
  digit = (digit > '9' ? digit - 87 : digit - 48);
  if (digit < 0) return digit + 32;
  if (digit > 15) return 15;
  return digit;
}

int convert_hex_pair(char a1, char a0) {
  return (
      (convert_hex_digit(a1) << 4) +
      (convert_hex_digit(a0))
  );
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
    return handle_record_error(c, F("checksum error"));
  } else {
    switch (record_type) {
      case 0x00: /* data */
        enable();
        set_write();
        for (int i = 0; i < byte_count; i++) {
          set_address(address + i);
          write_byte(data[i]);
        }
        disable();
      case 0x01: /* end of file */
      case 0x04: /* extended linear address */
        echo_command(c);
        return true;
      default:
        return handle_record_error(c, F("unknown record type"));
    }
  }
}

int paper_checksum(int byte_count, int hi, int lo, int data_sum) {
  return byte_count + hi + lo + data_sum;
}

/*
 * Handle exporting of data to Intel HEX format, this data is printed 
 * to serial directly with a 16 byte record length along with the
 * correct checksum.
 * 
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
void dump_paper() {
  enable();
  set_read();

  int byte_count = 16;
  for (int base = 0; base < memory_size; base += byte_count) {
    byte data[byte_count];
    int hi = ((memory_base + base) & 0xFF00) >> 8;
    int lo = (memory_base + base) & 0x00FF;

    int data_sum = 0;
    for (int offset = 0; offset < byte_count; offset += 1) {
      set_address(base + offset);
      data[offset] = read_byte();
      data_sum += data[offset];
    }
    int checksum = paper_checksum(byte_count, hi, lo, data_sum);

    char buf[80];
    ansi_notice();
    sprintf(buf, ";%02X%02X%02X", byte_count, hi, lo);
    Serial.print(buf);
    ansi_default();
    
    sprintf(buf, "%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
            data[0], data[1], data[2], data[3], data[4], data[5], data[6], data[7],
            data[8], data[9], data[10], data[11], data[12], data[13], data[14], data[15]);
    Serial.print(buf);

    ansi_notice();
    sprintf(buf, "%04X", checksum);
    Serial.println(buf);
    ansi_default();
}
  
  disable();
}

/* Handle importing of paper tape files. Data is read and loaded
 * on a line by line basis, so as far as error checking there is
 * almost none implemented. For a description of the record format
 * see dump_paper().
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
    set_write();
    for (int i = 0; i < byte_count; i++) {
      set_address(address + i);
      write_byte(data[i]);
    }
    disable();

    echo_command(c);
    return true;
  } else {
    return handle_record_error(c, F("checksum error"));
  }
}

void lock_on() {
  enable();
  Serial.print(F("ExRAM "));
  ansi_error_ln(F("locked"));
}

void lock_off() {
  disable();
  Serial.print(F("ExRAM "));
  ansi_highlight_ln(F("unlocked"));
  Serial.println();
}

/*
 * Handle serial commands, mainly just matches the name and if it does the
 * supplied function is run. Recognized commands are echoed back to the user.
 */
bool handle_command(String command, String name, void (*function)(), bool suppress_echo = false) {
  if (command == name) {
    echo_command(command);
    (*function)();
    return true;
  }
  return false;
}

/*
 * Run the command associated with the text command given, if one is currently 
 * supported by the sketch.
 * 
 * Note that Intel HEX (:<data>) and Paper-tape (;<data>) are handled on a
 * line-by-line basis instead of as a complete listing to keep memory usage
 * at a minimum.
 */
void select_command(String command) {
       if (handle_command(command, F("ansi"), ansi_status));
  else if (handle_command(command, F("ansi on"), ansi_on));
  else if (handle_command(command, F("ansi off"), ansi_off));
  else if (handle_command(command, F("ansi test"), ansi_test));
  else if (handle_command(command, F("version"), print_version));
  else if (handle_command(command, F("status"), print_status));
  else if (handle_command(command, F("bank"), print_bank));
  else if (handle_command(command, F("bank 0"), bank0));
  else if (handle_command(command, F("bank 1"), bank1));
  else if (handle_command(command, F("bank 2"), bank2));
  else if (handle_command(command, F("bank 3"), bank3));
  else if (handle_command(command, F("lock on"), lock_on));
  else if (handle_command(command, F("lock off"), lock_off));
  else if (handle_command(command, F("memory"), print_memory));
  else if (handle_command(command, F("memory 1k"), memory_1k));
  else if (handle_command(command, F("memory 2k"), memory_2k));
  else if (handle_command(command, F("memory 4k"), memory_4k));
  else if (handle_command(command, F("memory 8k"), memory_8k));
  else if (handle_command(command, F("memory max"), memory_8k));
  else if (handle_command(command, F("memory max?"), print_max_memory));
  else if (handle_command(command, F("memory test"), memory_test));
  else if (handle_command(command, F("memory zero"), memory_zero));
  else if (handle_command(command, F("base"), print_memory_base));
  else if (handle_command(command, F("base 8k0"), base_8k0));
  else if (handle_command(command, F("base 8k1"), base_8k1));
  else if (handle_command(command, F("base 8k2"), base_8k2));
  else if (handle_command(command, F("base 8k3"), base_8k3));
  else if (handle_command(command, F("base 8k4"), base_8k4));
  else if (handle_command(command, F("base 8k5"), base_8k5));
  else if (handle_command(command, F("base 8k6"), base_8k6));
  else if (handle_command(command, F("base 8k7"), base_8k7));
  else if (handle_command(command, F("dump"), dump));
  else if (handle_command(command, F("dump intel"), dump_intel));
  else if (handle_command(command, F("dump paper"), dump_paper));
  else if (command.charAt(0) == ':') handle_intel(command);
  else if (command.charAt(0) == ';') handle_paper(command);
  else if (handle_command(command, F("help"), print_help));
  else {
    echo_unknown(command);
  }
}