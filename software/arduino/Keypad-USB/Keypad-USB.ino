#include "Keyboard.h"

#define DEBOUNCE_VALUE 400
#define REPEAT_DELAY 1200

#define ST_PIN 14
#define RS_PIN 15
#define SST_PIN 18
#define LED_PIN 19

#define NUM_COLS 7
#define NUM_ROWS 3
byte colPins[NUM_COLS] = {2, 3, 4, 5, 6, 7, 8};
byte rowPins[NUM_ROWS] = {9, 10, 16};
int debounceCount[NUM_ROWS + 1][NUM_COLS];

void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);

  pinMode(ST_PIN, INPUT_PULLUP);
  pinMode(RS_PIN, INPUT_PULLUP);
  pinMode(SST_PIN, INPUT_PULLUP);
  pinMode(LED_PIN, OUTPUT);

  // set all pins as inputs and activate pullups
  for (byte c = 0; c < NUM_COLS; c++) {
    pinMode(colPins[c], INPUT);
    digitalWrite(colPins[c], HIGH);

    // clear debounce counts
    for (byte r = 0; r < NUM_ROWS; r++) {
      debounceCount[r][c] = 0;
    }
  }

  // set all pins as inputs
  for (byte r = 0; r < NUM_ROWS; r++) {
    pinMode(rowPins[r], INPUT);
  }
}

void loop() {
  if (checkDebounced(RS_PIN, 3, 0, false)) Serial.println("RESET");
  if (checkDebounced(ST_PIN, 3, 1, false)) Serial.println("STOP");
  if (checkDebounced(SST_PIN, 3, 2, false)) {
    Serial.println("SST");
    digitalWrite(LED_PIN, digitalRead(SST_PIN));
  }

  for (byte r = 0; r < NUM_ROWS; r++) {
    // turn the row on
    pinMode(rowPins[r], OUTPUT);
    digitalWrite(rowPins[r], LOW);

    for (byte c = 0; c < NUM_COLS; c++) {
      if (checkDebounced(colPins[c], r, c, true)) {
        pressKey(r, c);
      }
    }

    // turn the row back off
    pinMode(rowPins[r], INPUT);
  }
}

void pressKey(byte row, byte col) {
  Serial.print("Key: ");
  Serial.print(row);
  Serial.print(" ");
  Serial.println(col);
}

bool checkDebounced(byte pin, byte d_row, byte d_col, bool is_repeatable) {
  if (digitalRead(pin) == LOW) {
    debounceCount[d_row][d_col]++;

    // has the switch been pressed continually for long enough?
    int count = debounceCount[d_row][d_col];
    if (count == DEBOUNCE_VALUE) {
      return true;
    } else if (count > DEBOUNCE_VALUE) {
      if (count == (DEBOUNCE_VALUE + REPEAT_DELAY)) {
        debounceCount[d_row][d_col] = DEBOUNCE_VALUE + 1;

        if (is_repeatable) return true;
        else return false;
      }
    }
  } else {
    // not pressed, reset debounce count
    debounceCount[d_row][d_col] = 0;
  }
  
  return false;
}
