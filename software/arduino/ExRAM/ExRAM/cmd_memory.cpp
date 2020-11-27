#include <Arduino.h>
#include "constants.h"
#include "ansi.h"
#include "hex.h"
#include "commands.h"
#include "cmd_exram.h"

extern int memory_bank;
extern int memory_base;
extern int memory_size;

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

void print_memory_max() {
  Serial.print(MAX_MEMORY_SIZE / 1024);
  Serial.println("K");
}

void print_memory_base() {
  print_hex_address(memory_base, true);
  Serial.print(" - ");
  print_hex_address(memory_base + 0x1FFF, true);
  Serial.println();
}

void set_memory_base(int value){ 
  memory_base = value;
  print_memory_base();
}

void set_memory_base_8k0() { set_memory_base(0x0000); }
void set_memory_base_8k1() { set_memory_base(0x2000); }
void set_memory_base_8k2() { set_memory_base(0x4000); }
void set_memory_base_8k3() { set_memory_base(0x6000); }
void set_memory_base_8k4() { set_memory_base(0x8000); }
void set_memory_base_8k5() { set_memory_base(0xA000); }
void set_memory_base_8k6() { set_memory_base(0xC000); }
void set_memory_base_8k7() { set_memory_base(0xE000); }

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

/*
 * Peek memory address and print it.
 */
void peek_address(int address) {
  ansi_notice();
  print_hex_address(address, true);

  enable();
  set_address(address);
  int value = read_byte(true);
  disable();

  Serial.print(' ');
  if (value == 0x00 || value == 0xff) ansi_weak();
  else ansi_default();
  print_hex_pair(value, true);
  ansi_default();
  Serial.println();
}

/* 
 * Handle memory peek command by extracting the contents of the specified
 * address (specified by four hex digits).
 * 
 * peek 0000
 */
bool handle_peek(String c) {
  if (c.length() != 9) return parser_error(c, F("argument format"));
  echo_command(c);
  int address = convert_hex_address(c[5], c[6], c[7], c[8]);
  peek_address(address);
  return true;
}

/*
 * Handle memory poke command, allowing the user to write the specified
 * hex digit pair into a specified address (four hex digits). 
 * 
 * poke 0000 ff
 */
bool handle_poke(String c) {
  if (c.length() != 12) return parser_error(c, F("argument format"));
  echo_command(c);
  int address = convert_hex_address(c[5], c[6], c[7], c[8]);
  int value = convert_hex_pair(c[10], c[11]);

  enable();
  set_address(address);
  write_byte(value, true);
  set_read();
  disable();

  peek_address(address);
  return true;
}