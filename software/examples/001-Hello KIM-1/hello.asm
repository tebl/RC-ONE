        .CR     6502
        .TF     hello.hex,INT

POINTL  .EQ     $FA     addressL on display
POINTH  .EQ     $FB     addressH on display
INH     .EQ     $F9     inputbuffer high
SCANDS  .EQ     $1F1F

        .OR     $0200
        .TA     $0000

START   LDA     #$C0
        STA     POINTH
        LDA     #$0C
        STA     POINTL
        LDA     #$00
        STA     INH
LOOP    JSR     SCANDS
        JMP     LOOP