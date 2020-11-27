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
#include "commands.h"
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

  Serial.begin(BAUD_RATE);
  disable();
  
  pinMode(EX_A13, OUTPUT);
  pinMode(EX_A14, OUTPUT);
  pinMode(EX_RESET, INPUT);
  
  commands_init();
  print_welcome();
  ansi_status();
  set_bank(0);
  set_base(0x2000);
  set_memory(1024 * 2);

  Serial.println();
  print_help();
}

/*
 * Process a single received byte that was received over
 * the serial connection to the Arduino Nano, the byte
 * will be automatically echoed back to the terminal
 * application. 
 * 
 * Each line will be processed by its own function, EOL
 * will be interpreted as CR or NL as long as data has
 * previously been received. Any leading spaces will be
 * ignored.
 */
void process_serial(const byte byte_in) {
  static char input_line[MAX_INPUT_SIZE];
  static unsigned int input_pos = 0;

  Serial.print((char) byte_in);
  switch (byte_in) {
    /* Handle backspace character. Echoing will already have
     * moved the cursor back one position, but we'll need to
     * output a space and then move cursor back  again to
     * actually clear the character that was rubbed out.
     */
    case '\b':
      if (input_pos > 0) {
        input_pos--;
        Serial.print(F(" \b"));
      }
      break;

    /* Handle end-of-line, ignore when one of them comes at the
     * start of a line to gracefully handle differences between
     * client platforms differences.
     */
    case '\n':
    case '\r':
      if (input_pos > 0) {
        input_line[input_pos] = 0;
        select_command(input_line);
        input_pos = 0;
      }
      break;

    /* Ignore any leading zeroes */
    case ' ':
      if (input_pos == 0) break;
      
    /* Add character to current command */
    default:
      if (input_pos < (MAX_INPUT_SIZE - 1)) {
        input_line[input_pos++] = byte_in;
      }
      break;
  }
}

void loop() {
  while(Serial.available() > 0) {
    process_serial(Serial.read());
  }
}
