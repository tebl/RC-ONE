* ----------------------------------------------------------------------
* THIS IS A TYPE IN CALLED "KIM-1 CLOCK" BY JIM MILLER, ORIGINALLY
* PUBLISHED IN KILOBAUD MAGAZINE FROM FEBRUARY 1977.
* 
* DISPLAYS HHMMSS ON THE KIM-1 DISPLAYS. HOURS, MINUTES AND SECONDS
* MUST BE CONFIGURED BY ENTERING THE RELEVANT INFORMATION IN ADDRESSES
* $60 THROUGH $62. CHANGES HAVE BEEN MADE TO COMPLETE THE ASSEMBLY AS
* PARTS OF IT WERE ONLY INCLUDED IN THE SUPPLIED MACHINE CODE.
*
        .CR     6502
        .TF     clock.hex,INT

SET_HH  .EQ     $60     HOURS
SET_MM  .EQ     $61     MINUTES
SET_SS  .EQ     $62     SECONDS
RAM1    .EQ     $63
RAM2    .EQ     $64    

POINTH  .EQ     $FB     DIGITS 1-2
POINTL  .EQ     $FA     DIGITS 3-4
INH     .EQ     $F9     DIGITS 5-6

SCANDS  .EQ     $1F1F
BLANK   .EQ     $185C

        .OR     $0200
        .TA     $0200

START   LDX     #$EA    SET NO. OF LOOPS FOR 1 SECOND
LOOP    DEX
        LDA     SET_HH  STORE SET HOURS ON
        STA     POINTH   DIGITS 1-2
        LDA     SET_MM  STORE SET MINUTES ON
        STA     POINTL   DIGITS 3-4
        LDA     SET_SS  STORE SET SECONDS ON
        STA     INH      DIGITS 5-6
        STX     RAM1    SAVE X
        STY     RAM2    SAVE Y (NOT NECESSARY, FILLER)
        JSR     SCANDS  DISPLAY TIME
        LDX     RAM1    RESTORE X
        LDY     RAM2    RESTORE Y
        CPX     #$00
        BNE     LOOP
SECONDS SED             SET DECIMAL MODE TO AVOID HEX DIGITS
        SEC             SET CARRY BIT
        LDA     #$00
        ADC     SET_SS  ADD A+C+M -> (0+1+SEC -> ACC.)
        STA     SET_SS  STORE IN $62 (SEC) (ACC -> 62)
        CLD             CLEAR DECIMAL MODE FOR "SCANDS"
        CMP     #$60    TO START (TO 0200) (RESETTING LOOP FOR NEW SECOND)
        BNE     START
MINUTES SED             SAME AS SECONDS
        SEC             
        LDA     #$00
        STA     SET_SS  RESET SECONDS TO 00
        ADC     SET_MM  ADD 0+1+MIN -> ACC
        STA     SET_MM  STORE IN $61 (MIN) (ACC -> 61)
        CLD
        CMP     #$60    CMP TO START (TO 0200)
        BNE     START
HOURS   SED             SAME AS MINUTES
        SEC
        LDA     #$00
        STA     SET_SS  RESET SECONDS TO 00
        STA     SET_MM  RESET MINUTS TO 00
        ADC     SET_HH  ADD 0+1+HRS -> ACC
        STA     SET_HH
        CLD
        CMP     #$24
        BNE     START
        LDA     #$00    WHEN HOURS REACH 24,
        STA     SET_HH   RESET HOURS TO 1
        CMP     #$00    CMP TO START (TO 0200)
        BEQ     START
        JSR     BLANK