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
#define ROW3 3 /* virtual row for debouncing */
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
  if (check_debounced(RS_PIN, 3, ROW3_RS, false)) handle_key(ROW3, ROW3_RS);
  if (check_debounced(ST_PIN, 3, ROW3_ST, false)) handle_key(ROW3, ROW3_ST);
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

/*
 * Reads the specified digital pins, debouncing is performed in order
 * to ignore erroneous key-presses due to the mechanical nature of the
 * switches themselves. d_row/d_col is indexes used to keep track of how
 * long a key has been depressed, a key will normally only register as
 * pressed as long as the reading has been stable for a reasonable amount
 * of time. allow_repeat specifies wether a key held down will register as
 * subsequent presses, or if it should be ignored until key has been
 * released.
 */
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

/*
 * Evaluates wether a key should be directly repeatable, a key
 * that is not repeatable will not recognize any further presses
 * until it has been released.
 */
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

/*
 * Monitor SST switch for changes, both state transitions are
 * debounced like the rest of the keys. Handled separately as
 * it is a locking key, something not normally found on a
 * keyboard.
 */
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
  handle_key(ROW3, ROW3_SST);
  Serial.println("SST enabled!");
  digitalWrite(LED_PIN, HIGH);
}

void handle_sst_off() {
  handle_key(ROW3, ROW3_SST);
  Serial.println("SST disabled!");
  digitalWrite(LED_PIN, LOW);
}

/*
 * Translate keypad keys to their equivalents found on a modern
 * keyboard.
 */
void handle_key(byte row, byte col) {
  if (row == ROW0) {
    switch(col) {
      case ROW0_0: Keyboard.write('0'); return;
      case ROW0_1: Keyboard.write('1'); return;
      case ROW0_2: Keyboard.write('2'); return;
      case ROW0_3: Keyboard.write('3'); return;
      case ROW0_4: Keyboard.write('4'); return;
      case ROW0_5: Keyboard.write('5'); return;
      case ROW0_6: Keyboard.write('6'); return;
    }
  }

  if (row == ROW1) {
    switch(col) {
      case ROW1_7: Keyboard.write('7'); return;
      case ROW1_8: Keyboard.write('8'); return;
      case ROW1_9: Keyboard.write('9'); return;
      case ROW1_A: Keyboard.write('A'); return;
      case ROW1_B: Keyboard.write('B'); return;
      case ROW1_C: Keyboard.write('C'); return;
      case ROW1_D: Keyboard.write('D'); return;
    }
  }

  if (row == ROW2) {
    switch(col) {
      case ROW2_E: Keyboard.write('E'); return;
      case ROW2_F: Keyboard.write('F'); return;
      case ROW2_AD: Keyboard.write('/'); return;
      case ROW2_DA: Keyboard.write('*'); return;
      case ROW2_PLUS: Keyboard.write('+'); return;
      case ROW2_GO: Keyboard.write('F'); return;
      case ROW2_PC: Keyboard.write('F'); return;
    }
  }

  if (row == ROW3) {
    switch(col) {
      case ROW3_RS: Keyboard.write(0xB1); return;
      case ROW3_ST: Keyboard.write('S'); return;
      case ROW3_SST: Keyboard.write(0x2A); return;
    }
  }
}
