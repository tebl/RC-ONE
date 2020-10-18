        .CR     6502
        .TF     echo_test.hex,INT
        .LF     echo_test.list
;
; SIMPLE ASYNCHRONOUS COMMUNICATIONS INTERFACE ADAPTER (ACIA) TEST PROGRAM THAT
; JUST READS BACK DATA RECEIVED VIA THE SERIAL PORT, THEN ECHOES THE DATA BACK
; TO THE TERMINAL.
;
ACIA    .EQ     $D600

        .OR     $0200
        .TA     $0200
        .IN     program.asm
