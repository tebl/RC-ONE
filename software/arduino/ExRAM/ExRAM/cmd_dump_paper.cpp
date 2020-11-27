#include "ansi.h"
#include "hex.h"
#include "commands.h"
#include "cmd_dump.h"

extern int memory_base;
extern int memory_size;

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

  unsigned int byte_count = convert_hex_pair(c[1], c[2]);
  if (c.length() != (11 + (byte_count * 2))) return handle_record_error(c, F("length does not match data"));
  if (byte_count > 24) return handle_record_error(c, F("buffer overflow"));

  int address = convert_hex_address(c[3], c[4], c[5], c[6]);
  int hi = (address & 0xFF00) >> 8;
  int lo = address & 0x00FF;

  byte data[24];
  int data_sum = 0;
  int d = 0;

  for (unsigned int i = 0; i < (byte_count * 2); i+=2) {
    data[d] = convert_hex_pair(
      c.charAt(7 + i),
      c.charAt(8 + i)
    );
    
    data_sum += data[d];
    d++;
  }

  unsigned int checksum = convert_hex_address(
    c[7 + (byte_count * 2)], 
    c[8 + (byte_count * 2)],
    c[9 + (byte_count * 2)],
    c[10 + (byte_count * 2)]
  );
  if (checksum == (byte_count + hi + lo + data_sum)) {
    enable();
    set_write();
    for (unsigned int i = 0; i < byte_count; i++) {
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
