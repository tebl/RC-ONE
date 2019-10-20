#include "Keyboard.h"

#define ROW0 0
#define ROW0_0 0
#define ROW0_1 1
#define ROW0_2 2
#define ROW0_3 3
#define ROW0_4 4
#define ROW0_5 5
#define ROW0_6 6
#define ROW1 1
#define ROW1_7 0 
#define ROW1_8 1
#define ROW1_9 2 
#define ROW1_A 3 
#define ROW1_B 4 
#define ROW1_C 5 
#define ROW1_D 6 
#define ROW2 2
#define ROW2_E 0 
#define ROW2_F 1 
#define ROW2_AD 2 
#define ROW2_DA 3 
#define ROW2_PLUS 4 
#define ROW2_GO 5 
#define ROW2_PC 6

/* Only used for debouncing */
#define ROW3 3
#define ROW3_RS 0
#define ROW3_ST 1
#define ROW3_SST 2

#define ST_PIN 14
#define RS_PIN 15
#define SST_PIN 18
#define LED_PIN 19
#define NUM_COLS 7
#define NUM_ROWS 3
byte colPins[NUM_COLS] = {2, 3, 4, 5, 6, 7, 8};
byte rowPins[NUM_ROWS] = {9, 10, 16};

#define DEBOUNCE_VALUE 250
#define REPEAT_DELAY 1200
int debounceCount[NUM_ROWS + 1][NUM_COLS];

bool SST_EN = false;

void setup() {
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

  Keyboard.begin();
}

void loop() {
  if (check_debounced(RS_PIN, 3, ROW3_RS, false)) Serial.println("RESET");
  if (check_debounced(ST_PIN, 3, ROW3_ST, false)) Serial.println("STOP");
  check_sst();

  for (byte row = 0; row < NUM_ROWS; row++) {
    // turn the row on
    pinMode(rowPins[row], OUTPUT);
    digitalWrite(rowPins[row], LOW);

    for (byte col = 0; col < NUM_COLS; col++) {
      if (check_debounced(
          colPins[col], 
          row, 
          col, 
          is_repeatable(row, col)
        )) {
        handle_key(row, col);
      }
    }

    // turn the row back off
    pinMode(rowPins[row], INPUT);
  }
}

bool check_debounced(byte pin, byte d_row, byte d_col, bool allow_repeat) {
  if (digitalRead(pin) == LOW) {
    debounceCount[d_row][d_col]++;

    // has the switch been pressed continually for long enough?
    int count = debounceCount[d_row][d_col];
    if (count == DEBOUNCE_VALUE) {
      return true;
    } else if (count > DEBOUNCE_VALUE) {
      if (count == (DEBOUNCE_VALUE + REPEAT_DELAY)) {
        debounceCount[d_row][d_col] = DEBOUNCE_VALUE + 1;

        if (allow_repeat) return true;
        else return false;
      }
    }
  } else {
    // not pressed, reset debounce count
    debounceCount[d_row][d_col] = 0;
  }
  
  return false;
}

bool is_repeatable(byte row, byte col) {
  if (row == ROW2) {
    switch (col) {
      case ROW2_AD:
      case ROW2_DA:
      case ROW2_GO:
      case ROW2_PC:
        return false;
      default:
        return true;
    }
  }
  return true;
}

void check_sst() {
  if (SST_EN) {
    if (digitalRead(SST_PIN) == HIGH) {
      debounceCount[ROW3][ROW3_SST]++;
      int count = debounceCount[ROW3][ROW3_SST];
      if (count == DEBOUNCE_VALUE) {
        SST_EN = false;
        handle_sst_off();
      }
    }
  } else {
    if (check_debounced(SST_PIN, 3, 2, false)) {
      debounceCount[ROW3][ROW3_SST] = 0;
      SST_EN = true;
      handle_sst_on();
    }
  }
}

void handle_sst_on() {
  Serial.println("SST enabled!");
  digitalWrite(LED_PIN, HIGH);
}

void handle_sst_off() {
  Serial.println("SST disabled!");
  digitalWrite(LED_PIN, LOW);
}

void handle_key(byte row, byte col) {
  Serial.print("Key: ");
  Serial.print(row);
  Serial.print(" ");
  Serial.println(col);
}
