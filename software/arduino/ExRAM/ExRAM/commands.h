#include <Arduino.h>

void enable();
void disable();
void set_read();
void set_write();
void set_address(int address);
byte read_byte(bool set_direction = false);
void write_byte(byte value, bool set_direction = false);

void init_commands();
void print_status();
void print_version();
void print_welcome();

bool handle_command(String command, String name, void (*function)());
void select_command(String command);
void echo_command(String command);
void echo_unknown(String command);
bool parser_error(String c, String e);