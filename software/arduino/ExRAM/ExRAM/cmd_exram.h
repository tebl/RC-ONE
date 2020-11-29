#include <Arduino.h>

void enable();
void disable();
void set_address(int address);
void set_read();
byte read_byte();
void set_write();
void write_byte(byte value);
void write_pulse();
