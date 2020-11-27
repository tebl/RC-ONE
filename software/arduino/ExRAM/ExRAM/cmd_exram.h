#include <Arduino.h>

void enable();
void disable();
void set_address(int address);
void set_read();
byte read_byte(bool set_direction);
void set_write();
void write_byte(byte value, bool set_direction);
void lock_on();
void lock_off();