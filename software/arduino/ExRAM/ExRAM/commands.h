#include <Arduino.h>

void lock_on();
void lock_off();

void init_commands();
void print_status();
void print_version();
void print_welcome();

bool handle_command(String command, String name, void (*function)());
void select_command(String command);
void echo_command(String command);
void echo_unknown(String command);
bool parser_error(String c, String e);