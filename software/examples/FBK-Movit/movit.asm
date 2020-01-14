        .CR     6502
        .TF     movit.hex,INT
        .LF     movit.list
        
* ----------------------------------------------------------------------
* THIS IS A TYPE IN CALLED "MOVIT" BY LEW EDWARDS, I FOUND IT IN THE
* FIRST BOOK OF KIM AND THOUGHT IT A GOOD IDEA TO SUBVERT IT TO MY OWN
* PURPOSES. THE PROGRAM HAS BEEN ALTERED SO THAT IT RUNS FROM AN ADDRESS
* ASSOCIATED WITH THE EXRAM EXPANSION ($2770), RUNNING IT WILL COPY 
* ENOUGH DATA FROM $2200 TO $0200 IN ORDER TO FILL THE ENTIRE 5K STATIC
* RAM SUPPORTED BY THE 65K EXPANSION.
*
* THE PROGRAM CAN STILL BE USED IN IT'S ORIGINAL FORM BY RUNNING IT FROM
* $2790; OLD START ADDRESS GOES IN $D0 & $D1, OLD END ADDRESS IN $D2 &
* $D3 AND FINALLY THE NEW START ADDRESS GOES IN $D4 & $D5.
*
OSAL    .EQ     $D0         OLD START ADDRESS, LO BYTE
OSAH    .EQ     $D1          AND HI BYTE
OEAL    .EQ     $D2         OLD END ADDRESS, LO BYTE
OEAH    .EQ     $D3          AND HI BYTE
NSAL    .EQ     $D4         NEW START ADDRESS, LO BYTE   
NSAH    .EQ     $D5          AND HI BYTE
NEAL    .EQ     $D6         NEW END ADDRESS, LO BYTE
NEAH    .EQ     $D7          AND HI BYTE    
BCL     .EQ     $D8
BCH     .EQ     $D9
POINTH  .EQ     $FB         DIGITS 1-2
POINTL  .EQ     $FA         DIGITS 3-4
INH     .EQ     $F9         DIGITS 5-6
SCANDS  .EQ     $1F1F
MONITOR .EQ     $1C4F       KIM-1 MONITOR ENTRY

        .OR     $2770
        .TA     $0770
SETUP   LDA     #$00        SET THE OLD
        STA     OSAL         START
        LDA     #$22         ADDRESS
        STA     OSAH         TO $2200.
        LDA     #$FF        SET THE OLD
        STA     OEAL         END
        LDA     #$23         ADDRESS
        STA     OEAH         TO $2200.
        LDA     #$00        SET THE NEW
        STA     NSAL         START
        LDA     #$02         ADDRESS
        STA     NSAH         TO $0200.   
        JMP     $2790
        .OR     $2790
        .TA     $0790
START   CLD
        LDY     #$FF
        SEC
        LDA     OEAL        HOW MANY BYTES?
        SBC     OSAL        TO MOVE?
        STA     BCL
        LDA     OEAH
        SBC     OSAH
        STA     BCH
        CLC
        LDA     BCL         ADD THE COUNT TO
        ADC     NSAL         THE NEW START TO
        STA     NEAL         GET A NEW END
        STA     POINTL      PUT ON DISPLAY DIGITS 3-4
        LDA     BCH
        ADC     NSAH
        STA     NEAH
        STA     POINTH      PUT ON DISPLAY DIGITS 1-2
        INC     BCL         ADJUST THE BYTE COUNT
        INC     BCH          TO PERMIT ZERO TESTING
        SEC
        LDA     NSAL        IF NEW LOCATION
        SBC     OSAL         HIGHER THAN OLD
        LDA     NSAH         CARRY-FLAG IS SET
        SBC     OSAH
LOOP    LDX     #$00        HIGH POINTER INDEX
        BCC     MOVE
        LDX     #$02        LOW POINTER INDEX 
MOVE    LDA     (OSAL,X)    MOVE OLD
        STA     (NSAL,X)     TO NEW
        BCC     DOWN
        DEC     OEAL        ADJUST UP POINTER, (OLD)
        TYA                 BELOW ZERO?
        EOR     OEAL
        BNE     NOT         NO, ENOUGH
        DEC     OEAH        YES, ADJUST THE HIGH BYTE
NOT     DEC     NEAL        ADJUST THE OTHER ONE (NEW)
        TYA
        EOR     NEAL        NEED HIGH BYTE ADJUSTED?
        BNE     NEIN        NO
        DEC     NEAH        YES, DO IT
NEIN    BCS     COUNT
DOWN    INC     OSAL        ADJUST "OLD" DOWN POINTER
        BNE     NYET
        INC     OSAH        AND THE HIGH BYTE IF NEEDED
NYET    INC     NSAL         AND THE "NEW" ONE
        BNE     COUNT
        INC     NSAH
COUNT   DEC     BCL         TICK OFF THE BYTES,
        BNE     ONE          ENOUGH FINGERS?
        DEC     BCH          USE THE OTHER HAND
ONE     BNE     LOOP        'TIL THEY'RE ALL DONE
        LDA     #$00
        STA     INH
DONE    JMP     MONITOR     RETURN TO KIM-1 MONITOR