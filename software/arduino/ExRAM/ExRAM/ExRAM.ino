/*
 * Originally based on the Arduino EEPROM programmer as
 * featured in a video by Ben Eater. I started with his
 * code, then adapted it to serve as a way to load data
 * into a 62256 static RAM chip before adding functions
 * for handling Intel HEX and papertape formats.
 */
#include <Arduino.h>
#include "constants.h"
#include "ansi.h"
#include "process_serial.h"
#include "commands.h"
#include "cmd_exram.h"
#include "cmd_memory.h"
#include "help.h"

/* Able to use VT100 commands on serial, disable if you get weird characters
 * in serial output - or switch to a serial terminal that supports them.
 */
bool ansi_enabled = true;

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

  init_serial();
  disable();
  
  pinMode(EX_A13, OUTPUT);
  pinMode(EX_A14, OUTPUT);
  pinMode(EX_RESET, INPUT);
  
  init_commands();
  print_welcome();
  ansi_status();
  set_memory_bank(0);
  set_memory_base(0x2000);
  set_memory_size(1024 * 2);

  Serial.println();
  print_help();
}

void loop() {
  while(Serial.available() > 0) {
    process_serial(Serial.read());
  }
}
