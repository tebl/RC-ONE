#include <Arduino.h>
#include "constants.h"
#include "debug.h"
#include "ansi.h"
#include "help.h"
#include "hex.h"
#include "cmd_dump.h"
#include "cmd_dump_paper.h"
#include "cmd_dump_intel.h"

extern bool ansi_enabled;
extern int memory_bank;
extern int memory_base;
extern int memory_size;

/*
 * Placeholder to initialize any variables, just in case I need them later.
 */
void init_commands() { }

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

void print_memory_bank() {
  Serial.print(F("Bank "));
  Serial.print(memory_bank);
  Serial.println(F(" enabled"));
}

void set_memory_bank(int num) {
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

void set_memory_bank0() {
  set_memory_bank(0);
}

void set_memory_bank1() {
  set_memory_bank(1);
}

void set_memory_bank2() {
  set_memory_bank(2);
}

void set_memory_bank3() {
  set_memory_bank(3);
}

void print_memory_size() {
  Serial.print(memory_size / 1024);
  Serial.println("K");
}

void set_memory_size(int num_bytes) {
  memory_size = num_bytes;
  Serial.print(num_bytes / 1024);
  Serial.println("K");
}

void set_memory_size_1k() {
  set_memory_size(1024 * 1);
}

void set_memory_size_2k() {
  set_memory_size(1024 * 2);
}

void set_memory_size_4k() {
  set_memory_size(1024 * 4);
}

void set_memory_size_8k() {
  set_memory_size(1024 * 8);
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



void set_memory_base(int value){ 
  memory_base = value;
  print_memory_base();
}

void base_8k0() { set_memory_base(0x0000); }
void base_8k1() { set_memory_base(0x2000); }
void base_8k2() { set_memory_base(0x4000); }
void base_8k3() { set_memory_base(0x6000); }
void base_8k4() { set_memory_base(0x8000); }
void base_8k5() { set_memory_base(0xA000); }
void base_8k6() { set_memory_base(0xC000); }
void base_8k7() { set_memory_base(0xE000); }

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
  for (unsigned char i = 0; i < (sizeof(patterns) / sizeof(patterns[0])); i++) {
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
  else if (handle_command(command, F("bank"), print_memory_bank));
  else if (handle_command(command, F("bank 0"), set_memory_bank0));
  else if (handle_command(command, F("bank 1"), set_memory_bank1));
  else if (handle_command(command, F("bank 2"), set_memory_bank2));
  else if (handle_command(command, F("bank 3"), set_memory_bank3));
  else if (handle_command(command, F("lock on"), lock_on));
  else if (handle_command(command, F("lock off"), lock_off));
  else if (handle_command(command, F("memory"), print_memory_size));
  else if (handle_command(command, F("memory 1k"), set_memory_size_1k));
  else if (handle_command(command, F("memory 2k"), set_memory_size_2k));
  else if (handle_command(command, F("memory 4k"), set_memory_size_4k));
  else if (handle_command(command, F("memory 8k"), set_memory_size_8k));
  else if (handle_command(command, F("memory max"), set_memory_size_8k));
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