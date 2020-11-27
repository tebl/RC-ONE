#include <Arduino.h>

/*
 * Converts a single hex digit in ascii format to a numeric value. Foregoes
 * most sanity checks by assuming it isn't a random character and just force
 * it to a value between 0 and 15.
 */
int convert_hex_digit(char digit) {
  digit = (digit > '9' ? digit - 87 : digit - 48);
  if (digit < 0) return digit + 32;
  if (digit > 15) return 15;
  return digit;
}

int convert_hex_pair(char a1, char a0) {
  return (
      (convert_hex_digit(a1) << 4) +
      (convert_hex_digit(a0))
  );
}

int convert_hex_address(char a3, char a2, char a1, char a0) {
  return (
      (convert_hex_digit(a3) << 12) +
      (convert_hex_digit(a2) << 8) +
      (convert_hex_digit(a1) << 4) +
      (convert_hex_digit(a0))
   );
}

void print_hex_address(int number, bool prefix) {
  if (prefix) Serial.print('$');
  char tmp[5];
  sprintf(tmp, "%04X", number);
  Serial.print(tmp);
}
