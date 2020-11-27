#include <Arduino.h>
#include "ansi.h"
#include "commands.h"

extern int memory_base;
extern int memory_size;

/*
 * Dumps memory contents to the console, formatting it similarly to the hex dumps
 * found in the book "The First Book of KIM". Note that when the listing
 * encounters the same data block for a second time it'll output a star and then
 * skip lines until encountering something new.
 */
void dump() {
  bool first_line = true;
  bool last_skipped = false;
  bool changed = true;
  enable();
  set_read();

  ansi_notice_ln(F("        0  1  2  3  4  5  6  7    8  9  A  B  C  D  E  F "));
  byte data[16];
  for (int base = 0; base < memory_size; base += 16) {
    int sum = 0;

    changed = false;
    for (int offset = 0; offset <= 15; offset += 1) {
      set_address(base + offset);
      byte tmp = read_byte();
      if (data[offset] != tmp) changed = true;
      data[offset] = tmp;
      sum += data[offset];
    }

    if (first_line || changed) {
      char buf[80];
      ansi_notice();
      sprintf(buf, "$%.4X- ", (int)base);
      Serial.print(buf);
      ansi_default();

      sprintf(buf, "%02X %02X %02X %02X %02X %02X %02X %02X   %02X %02X %02X %02X %02X %02X %02X %02X",
              data[0], data[1], data[2], data[3], data[4], data[5], data[6], data[7],
              data[8], data[9], data[10], data[11], data[12], data[13], data[14], data[15]);

      if (sum == 0 || sum == 4080) {
        ansi_weak_ln(buf);
      } else {
        Serial.println(buf);
      }
    } else if (!changed && !first_line && !last_skipped) {
      ansi_colour(COLOUR_WHITE);
      Serial.println("       *");
      ansi_default();

      last_skipped = true;
    }

    first_line = false;
  }

  disable();
}

bool handle_record_error(String c, String e) {
  Serial.print(c);
  Serial.print(" (");
  Serial.print(e);
  Serial.println(")");
  return false;
}

