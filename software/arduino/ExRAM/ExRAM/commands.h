#include <Arduino.h>

void enable();
void disable();

void set_bank(int num);
void set_memory(int num_bytes);
void set_base(int value);

void commands_init();
void print_status();
void print_version();
void print_welcome();

bool handle_command(String command, String name, void (*function)());
void select_command(String command);
void echo_command(String command);
void echo_unknown(String command);
