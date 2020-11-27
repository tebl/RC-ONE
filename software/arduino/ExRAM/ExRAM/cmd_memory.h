#include <Arduino.h>

void print_memory_bank();
void set_memory_bank(int num);
void set_memory_bank0();
void set_memory_bank1();
void set_memory_bank2();
void set_memory_bank3();

void print_memory_size();
void print_memory_max();
void set_memory_size(int num_bytes);
void set_memory_size_1k();
void set_memory_size_2k();
void set_memory_size_4k();
void set_memory_size_8k();

void print_memory_base();
void set_memory_base(int value);
void set_memory_base_8k0();
void set_memory_base_8k1();
void set_memory_base_8k2();
void set_memory_base_8k3();
void set_memory_base_8k4();
void set_memory_base_8k5();
void set_memory_base_8k6();
void set_memory_base_8k7();

void memory_test();
void memory_zero();

bool handle_peek(String c);
bool handle_poke(String c);