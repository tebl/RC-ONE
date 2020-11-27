#include <Arduino.h>

void enable();
void disable();
void set_read();
void set_write();
void set_address(int address);
byte read_byte(bool set_direction = false);
void write_byte(byte value, bool set_direction = false);
void set_memory_bank(int num);
void set_memory_size(int num_bytes);
void set_memory_base(int value);

void init_commands();
void print_status();
void print_version();
void print_welcome();

bool handle_command(String command, String name, void (*function)());
void select_command(String command);
void echo_command(String command);
void echo_unknown(String command);
