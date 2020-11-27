#include <Arduino.h>

int convert_hex_digit(char digit);
int convert_hex_pair(char a1, char a0);
int convert_hex_address(char a3, char a2, char a1, char a0);
void print_hex_pair(int value, bool prefix);
void print_hex_address(int number, bool prefix);