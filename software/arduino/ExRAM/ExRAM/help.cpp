#include <Arduino.h>
#include "constants.h"
#include "ansi.h"

extern int command_set;

/*
 * Calculates the length of a string that has been stored in Flash memory
 * instead of RAM, normally defined using the Arduino F() macro.
 */
unsigned int flash_length(const __FlashStringHelper *string) {
  const char *ptr = (const char *) string;
  int size = 0;
  while (pgm_read_byte_near(ptr++)) {
    size++;
	}
  return size;
}

/*
 * Arduino lacks a way to pad strings, so then I guess we're doing it the 
 * ridiculously hard way instead of leaving things somewhat sensible. Feature
 * creep is a real thing, but doing this for fun, so let's just live with it!
 */
void help_command(const __FlashStringHelper *command = nullptr, 
                  const __FlashStringHelper *description = nullptr,
                  const __FlashStringHelper *parameter = nullptr,
                  const __FlashStringHelper *switch_ref = nullptr) {
  int size = 0;
  int position = 0;
  if (command != nullptr) {
    size = flash_length(command);
    ansi_notice(command);
  }

  if (parameter != nullptr) {
    size += flash_length(parameter) + 1;
    Serial.print(' ');
    ansi_colour(parameter, COLOUR_WHITE);
  }
  for (int i = size; i < 20; i++) Serial.print(' ');
  position = 20;

  if (description != nullptr) {
    ansi_colour(description, COLOUR_WHITE);
    position += flash_length(description);
  }

  if (switch_ref != nullptr) {
    size = TERMINAL_COLS - flash_length(switch_ref);
    for (int i = position; i < size; i++) Serial.print(' ');
    ansi_colour(switch_ref, COLOUR_MAGENTA);
  }

  Serial.println();
}

/*
 * Run the command associated with the serial command given, compared against
 * all known commands (depending on the currently selected command set).
 */
void print_help() {
  ansi_colour_ln(F("Commands supported:"), COLOUR_MAGENTA);
  help_command(F("ansi"),           F("ANSI terminal code usage"),                                 F("<on|off>"));
  help_command(F("ansi test"),      F("Test ANSI terminal codes on terminal"));
  help_command(F("bank"),           F("Prints bank selection"));
  help_command(F("bank"),           F("Select 8k bank"),                                           F("<num>"));
  help_command(F("base"),           F("Prints memory offset used"));
  help_command(F("base"),           F("8k0-8k7 memory offset"),                                    F("<block>"));
  help_command(F("dump"),           F("Dump memory"));
  help_command(F("dump intel"),     F("Intel HEX dump"));
  help_command(F("dump paper"),     F("Paper tape memory dump"));
  help_command(F("help"),           F("Prints this screen"));
  help_command(F("lock"),           F("Lock 6502 ExRAM access"),                                   F("<on|off>"));
  help_command(F("memory"),         F("Print memory dump size"));
  help_command(F("memory"),         F("1k/2k/4k/8k memory dump size"),                             F("<size>"));
  help_command(F("memory test"),    F("Test set memory"));
  help_command(F("memory zero"),    F("Zero out set memory"));
  help_command(F("status"),         F("Prints system status"));
  help_command(F("version"),        F("Prints ExRAM software version"));
  help_command(F(":<data>"),        F("Load Intel HEX data"));
  help_command(F(";<data>"),        F("Load paper tape data"));
}