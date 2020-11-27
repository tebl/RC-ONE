#include <Arduino.h>
#include "constants.h"
#include "debug.h"
#include "ansi.h"
#include "help.h"
#include "hex.h"
#include "cmd_dump.h"
#include "cmd_dump_paper.h"
#include "cmd_dump_intel.h"
#include "cmd_exram.h"
#include "cmd_memory.h"

extern bool ansi_enabled;

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

bool parser_error(String command, String error) {
  ansi_error();
  Serial.print("? " + command);
  Serial.print(" (");
  Serial.print(error);
  Serial.println(")");
  ansi_default();

  return false;
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
  else if (handle_command(command, F("memory max?"), print_memory_max));
  else if (handle_command(command, F("memory test"), memory_test));
  else if (handle_command(command, F("memory zero"), memory_zero));
  else if (handle_command(command, F("base"), print_memory_base));
  else if (handle_command(command, F("base 8k0"), set_memory_base_8k0));
  else if (handle_command(command, F("base 8k1"), set_memory_base_8k1));
  else if (handle_command(command, F("base 8k2"), set_memory_base_8k2));
  else if (handle_command(command, F("base 8k3"), set_memory_base_8k3));
  else if (handle_command(command, F("base 8k4"), set_memory_base_8k4));
  else if (handle_command(command, F("base 8k5"), set_memory_base_8k5));
  else if (handle_command(command, F("base 8k6"), set_memory_base_8k6));
  else if (handle_command(command, F("base 8k7"), set_memory_base_8k7));
  else if (handle_command(command, F("dump"), dump));
  else if (handle_command(command, F("dump intel"), dump_intel));
  else if (handle_command(command, F("dump paper"), dump_paper));
  else if (command.startsWith(F("peek"))) handle_peek(command);
  else if (command.startsWith(F("poke"))) handle_poke(command);
  else if (command.charAt(0) == ':') handle_intel(command);
  else if (command.charAt(0) == ';') handle_paper(command);
  else if (handle_command(command, F("help"), print_help));
  else {
    echo_unknown(command);
  }
}