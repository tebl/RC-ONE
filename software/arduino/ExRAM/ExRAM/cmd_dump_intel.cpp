#include "ansi.h"
#include "hex.h"
#include "commands.h"
#include "cmd_dump.h"
#include "cmd_exram.h"

extern int memory_base;
extern int memory_size;

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
    sprintf(buf, ":%02X%02X%02X%02X", byte_count, hi, lo, 0x00);
    ansi_notice(buf);    
    sprintf(buf, "%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
                 data[0], data[1], data[2], data[3], data[4], data[5], data[6], data[7],
                 data[8], data[9], data[10], data[11], data[12], data[13], data[14], data[15]);
    Serial.print(buf);
    sprintf(buf, "%02X", checksum);
    ansi_notice_ln(buf);    
  }
  
  disable();
}

/*
 * Handle importing of Intel HEX files. Data is read and loaded
 * on a line by line basis, the maximum supported byte count for
 * each is 0x20 (32 in decimal). The only record type recognized
 * is the one for data.
 */
bool handle_intel(String c) {
  if (c.length() < 11) return parser_error(c, F("record too short"));

  unsigned int byte_count = convert_hex_pair(c[1], c[2]);
  if (c.length() != (11 + (byte_count * 2))) return parser_error(c, F("length does not match data"));
  if (byte_count > 32) return parser_error(c, F("buffer overflow"));

  int address = convert_hex_address(c[3], c[4], c[5], c[6]);
  int hi = (address & 0xFF00) >> 8;
  int lo = address & 0x00FF;
  int record_type = convert_hex_pair(c[7], c[8]);

  byte data[32];
  int data_sum = 0;
  int d = 0;
  for (unsigned int i = 0; i < (byte_count * 2); i+=2) {
      data[d] = convert_hex_pair(
        c.charAt(9 + i),
        c.charAt(10 + i)
      );
      
      data_sum += data[d];
      d++;
  }

  int checksum = convert_hex_pair(c[9 + (byte_count * 2)], c[10 + (byte_count * 2)]);
  if (0x00 != ((byte_count + hi + lo + record_type + data_sum + checksum) & 0xFF)) {
    return parser_error(c, F("checksum error"));
  } else {
    switch (record_type) {
      case 0x00: /* data */
        enable();
        set_write();
        for (unsigned int i = 0; i < byte_count; i++) {
          set_address(address + i);
          write_byte(data[i]);
        }
        disable();
      case 0x01: /* end of file */
      case 0x04: /* extended linear address */
        echo_command(c);
        return true;
      default:
        return parser_error(c, F("unknown record type"));
    }
  }
}
