* ----------------------------------------------------------------------
* COPY SHORT PROGRAM FROM $2000 TO $0200. THIS REQUIRES SOMETHING THAT
* SITS AT $2000, IN MY CURRENT SETUP THAT'S THE EXRAM EXPANSION THOUGH
* YOU CAN CHANGE IT TO SOME OTHER LOCATION IN RAM IF REQUIRED.
* 
        .CR     6502
        .TF     copy2000.hex,INT
        .OR     $2400
        .TA     $0400

START   LDX     #$00
NXTBYT  LDA     $2000,X
        STA     $0200,X
        INX
        CPX     #$FF
        BNE     NXTBYT
DONE    BRK