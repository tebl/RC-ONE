#include <Arduino.h>
#include "constants.h"
#include "ansi.h"

/*
 * Assert control, locking out the 6502-system from
 * being able to access the memory.
 */
void enable() {
  digitalWrite(EX_CONTROL, LOW);

  digitalWrite(EX_CS, OUTPUT);
  pinMode(EX_CS, HIGH);
  
  digitalWrite(EX_RnW, HIGH);
  pinMode(EX_RnW, OUTPUT);

  for (int pin = EX_D0; pin <= EX_D7; pin += 1) {
    pinMode(pin, OUTPUT);
  }
}

/*
 * Release control, allowing the 6502-system
 * access to the memory again.
 */
void disable() {
  for (int pin = EX_D0; pin <= EX_D7; pin += 1) {
    pinMode(pin, INPUT);
  }

  pinMode(EX_CS, INPUT);
  pinMode(EX_RnW, INPUT);
  digitalWrite(EX_CONTROL, HIGH);

  /* ensure serial LEDs stay off */
  digitalWrite(SHIFT_CLK, LOW);
  digitalWrite(SHIFT_DATA, LOW);
}

/*
 * Shift out the specified 16-bit address.
 */
void set_address(int address) {
  shiftOut(SHIFT_DATA, SHIFT_CLK, MSBFIRST, (address >> 8));
  shiftOut(SHIFT_DATA, SHIFT_CLK, MSBFIRST, address);

  digitalWrite(SHIFT_LATCH, LOW);
  digitalWrite(SHIFT_LATCH, HIGH);
  digitalWrite(SHIFT_LATCH, LOW);
}

void set_read() {
  for (int pin = EX_D0; pin <= EX_D7; pin += 1) {
    pinMode(pin, INPUT);
  }
  digitalWrite(EX_RnW, HIGH);
}

/*
 * Read a byte from the data pins, use set_direction
 * to perform sequential steps without setting up every
 * time.
 */
byte read_byte() {
  byte value = 0;

  digitalWrite(EX_CS, LOW);
  for (int pin = EX_D7; pin >= EX_D0; pin -= 1) {
    value = (value << 1) + digitalRead(pin);
  }
  digitalWrite(EX_CS, HIGH);

  return value;
}

void set_write() {
  digitalWrite(EX_RnW, HIGH);
  for (int pin = EX_D0; pin <= EX_D7; pin += 1) {
    pinMode(pin, OUTPUT);
  }
}

/* 
 * Send a write pulse to the SRAM by temporarily activating /CS with R/W
 * low. Can be used directly when we don't want to go through configuring
 * the data pins for each byte with the same value.
 */
void write_pulse() {
  digitalWrite(EX_RnW, LOW);
  digitalWrite(EX_CS, LOW);
  delayMicroseconds(1);
  digitalWrite(EX_CS, HIGH);
  digitalWrite(EX_RnW, HIGH);
}

/*
 * Write a byte to the data pins, use set_direction
 * to perform sequential steps without setting up every
 * time.
 */
void write_byte(byte value) {
  for (int pin = EX_D0; pin <= EX_D7; pin += 1) {
    digitalWrite(pin, value & 1);
    value = value >> 1;
  }

  write_pulse();
}