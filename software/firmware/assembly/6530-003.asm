        .CR     6502
        .TF     6530-003.bin,bin
        .LF     6530-003.list
;              666666  555555  333333  000000
;              6       5            3  0    0
;              6       5            3  0    0
;              666666  555555  333333  0    0
;              6    6       5       3  0    0
;              6    6       5       3  0    0
;              666666  666666  666666  000000
;
;
;
;                      000000  000000  333333
;                      0    0  0    0       3
;              ------  0    0  0    0       3
;              ------  0    0  0    0  333333
;              ------  0    0  0    0       3
;                      0    0  0    0       3
;                      000000  000000  333333
;
;
;
;
;
;      COPYRIGHT
;      MOS TECHNOLOGY, INC
;      DATE: OCT 18, 1975 REV-D
;
;
;
;      6530-003 I.C. IS AN AUDIO CASSETT TAPE
;      RECORDER ENTENSION OF THE BASIC
;      KIM MONITOR
;
;      IT FEATURES TWO BASIC ROUTINES
;      LOADT-LOAD MEM FROM AUDIO TAPE
;      DUMPT-STOR MEM ONTO AUDIO TAPE
;
;      LOADT
;        ID=00     IGNORE ID
;        ID=FF     IGN. ID USE SA FOR START ADDR
;        ID=01-FE  IGN.ID USE ADDRESS ON TAPE
;
;      DUMPT
;        ID=00     SHOULD NOT BE USED
;        ID=FF     SHOULD NOT BE USED
;        ID=01-FE  NORMAL ID RANGE
;        SAL       LSB STARTING ADDRESS OF PROGRAM
;        SAH       MSB
;        EAL       ENDING ADDRESS OF PROGRAM
;        EAH       MSB
;
        .IN     equates.asm
        .OR     $1800
        .TA     $0000

START   .EQ     $1C4F

;
;       INIT VOLATILE EXECUTION BLOCK
;       DUMP MEM TO TAPE
;
DUMPT   LDA     #$AD        LOAD ABSOLUTE INST
        STA     VEB
        JSR     INTVEB
;
        LDA     #$27        TURN OFF DATAIN PB5
        STA     SBD
        LDA     #$BF        CONVERT PB7 TO OUTPUT
        STA     PBDD  
;
        LDX     #$64        100 CHARS 
DUMPT1  LDA     #$16        SYNC CHAR'S
        JSR     OUTCHT
        DEX
        BNE     DUMPT1
        LDA     #$2A        START CHAR
        JSR     OUTCHT
;
        LDA     ID          OUTPUT ID
        JSR     OUTBT
;
        LDA     SAL         OUTPUT STARTING
        JSR     OUTBTC       ADDRESS
        LDA     SAH   
        JSR     OUTBTC
;
DUMPT2  LDA     VEB+1       CHECK FOR LAST
        CMP     EAL         DATA BYTE
        LDA     VEB+2
        SBC     EAH
        BCC     DUMPT4
;
        LDA     #'/         OUTPUT END OF DATA CHAR
        JSR     OUTCHT
        LDA     CHKL        LAST BYTE HAS BEEN
        JSR     OUTBT       OUTPUT    NOW OUTPUT
        LDA     CHKH        CHKSUM
        JSR     OUTBT
;
;
        LDX     #$02        2 CHAR'S
DUMPT3  LDA     #$04        EOT CHAR
        JSR     OUTCHT
        DEX  
        BNE     DUMPT3
;
        LDA     #$00        DISPLAY 0000
        STA     POINTL       FOR NORMAL EXIT
        STA     POINTH
        JMP     START
;
DUMPT4  JSR     VEB         DATA BYTE OUTPUT
        JSR     OUTBTC
;
        JSR     INCVEB
        JMP     DUMPT2
;
;       LOAD MEMORY FROM TAPE
;
;
TAB     .DA     LOAD12
LOADT   LDA     #$8D        INIT VOLATILE EXECUTION
        STA     VEB         BLOCK WITH STA ABS.
        JSR     INTVEB
;
        LDA     #$4C        JUMP TYPE RTRN
        STA     VEB+3
        LDA     TAB  
        STA     VEB+4
        LDA     TAB+1
        STA     VEB+5
;
        LDA     #$07        RESET PB5=0 (DATA-IN)
        STA     SBD
;
SYNC    LDA     #$FF        CLEAR SAVX FOR SYNC CHAR
        STA     SAVX
;
SYNC1   JSR     RDBIT       GET A BIT   
        LSR     SAVX        SHIFT BIT INTO CHAR
        ORA     SAVX
        STA     SAVX
        LDA     SAVX        GET NEW CHAR
        CMP     #$16        SYNC CHAR
        BNE     SYNC1
;
        LDX     #$0A        TEST FOR 10 SYNC CHARS
SYNC2   JSR     RDCHT
        CMP     #$16
        BNE     SYNC        IF NOT 10 CHAR, RE-SYNC
        DEX
        BNE     SYNC2
;
;
LOADT4  JSR     RDCHT       LOOK FOR START OF
        CMP     #$2A        DATA CHAR
        BEQ     LOAD11
        CMP     #$16        IF NOT, SHOULD BE SYN
        BNE     SYNC
        BEQ     LOADT4
;
LOAD11  JSR     RDBYT       READ ID FROM TAPE
        CMP     ID           COMPARE WITH REQUESTED ID
        BEQ     LOADT5
        LDA     ID          DEFAULT 00, READ RECORD
        CMP     #$00         ANYWAY
        BEQ     LOADT5
        CMP     #$FF        DEFAULT FF, IGNORE SA ON
        BEQ     LOADT6       TAPE
        BNE     LOADT
;
LOADT5  JSR     RDBYT       GET SA FROM TAPE
        JSR     CHKT
        STA     VEB+1       SAVX IN VEB+1,2
        JSR     RDBYT
        JSR     CHKT
        STA     VEB+2
        JMP     LOADT7
;
LOADT6  JSR     RDBYT       GET SA BUT IGNORE
        JSR     CHKT
        JSR     RDBYT
        JSR     CHKT
;
;
LOADT7  LDX     #$02        GET 2 CHARS
LOAD13  JSR     RDCHT       GET CHAR (X)
        CMP     #$2F        LOOK FOR LAST CHAR
        BEQ     LOADT8
        JSR     PACKT       CONVERT TO HEX
        BNE     LOADT9      Y=1 NON-HEX CHAR
        DEX
        BNE     LOAD13
;
        JSR     CHKT        COMPUTE CHECKSUM
        JMP     VEB         SAVX DATA IN MEMORY
LOAD12  JSR     INCVEB      INCREMENT DATA POINTER
        JMP     LOADT7
;
LOADT8  JSR     RDBYT       END OF DATA, COMPARE CHKSUM
        CMP     CHKL
        BNE     LOADT9
        JSR     RDBYT
        CMP     CHKH
        BNE     LOADT9
        LDA     #$00        NORMAL EXIT
        BEQ     LOAD10
;
LOADT9  LDA     #$FF        ERROR EXIT
LOAD10  STA     POINTL
        STA     POINTH
        JMP     START
;
;
;       SUBROUTINES FOLLOW
;
;       SUB TO MOVE SA TO VEB+1,2
;
INTVEB  LDA     SAL         MOVE SA TO VEB+1,2
        STA     VEB+1
        LDA     SAH
        STA     VEB+2
        LDA     #$60        RTS INST
        STA     VEB+3
        LDA     #$00        CLEAR CHKSUM AREA
        STA     CHKL
        STA     CHKH
        RTS
;
;       COMPUTE CHKSUM FOR TAPE LOAD
;       RTN USES Y TO SAVEX A
;
CHKT    TAY
        CLC
        ADC     CHKL
        STA     CHKL
        LDA     CHKH
        ADC     #$00
        STA     CHKH
        TYA
        RTS
;
;       OUTPUT ONE BYTE USE Y
;       TO SAVX BYTE
;
OUTBTC  JSR     CHKT        COMPARE CHKSUM
OUTBT   TAY                 SAVX DATA BYTE
        LSR     A           SHIFT OFF LSD
        LSR     A
        LSR     A
        LSR     A
        JSR     HEXOUT      OUTPUT MSD
        TYA
        JSR     HEXOUT      OUTPUT LSD
        TYA
        RTS
;
;       CONVERT LSD OF A TO ASCII
;       OUTPUT TO TAPE
;
HEXOUT  AND     #$0F
        CMP     #$0A
        CLC
        BMI     HEX1
        ADC     #$07
HEX1    ADC     #$30
;
;       OUTPUT TO TAPE ONE ASCII
;       CHAR  USE SUB'S ONE + ZRO
;
OUTCHT  STX     SAVX
        STY     SAVX+1
        LDY     #$08        START BIT
CHT1    JSR     ONE
        LSR     A           GET DATA BIT
        BCS     CHT2
        JSR     ONE         DATA BIT=1
        JMP     CHT3
CHT2    JSR     ZRO         DATA BIT=0
CHT3    JSR     ZRO
        DEY
        BNE     CHT1
        LDX     SAVX
        LDY     SAVX+1
        RTS
;
;
;       OUTPUT 1 TO TAPE
;       9 PULSES, 138 MICROSEC EACH
;
ONE     LDX     #$09
        PHA                 SAVX A
ONE1    BIT     CLKRDI      WAIT FOR TIME OUT
        BPL     ONE1
        LDA     #126
        STA     CLK1T
        LDA     #$A7 
        STA     SBD         SET PB7=1
ONE2    BIT     CLKRDI
        BPL     ONE2 
        LDA     #126
        STA     CLK1T
        LDA     #$27 
        STA     SBD         RESET PB7=0
        DEX
        BNE     ONE1
        PLA
        RTS
;
;
;       OUTPUT 0 TO TAPE
;       6 PULSES, 207 MICROSEC EACH
;
ZRO     LDX     #$06
        PHA                 SAVX A
ZRO1    BIT     CLKRDI
        BPL     ZRO1
        LDA     #$C3
        STA     CLK1T
        LDA     #$A7
        STA     SBD         SET PB7=1
ZRO2    BIT     CLKRDI
        BPL     ZRO2
        LDA     #195
        STA     CLK1T
        LDA     #$27 
        STA     SBD         RESET PB7=0
        DEX
        BNE     ZRO1
        PLA                 RESTORE A
        RTS
;
;       SUB TO INC VEB+1,2
;
INCVEB  INC     VEB+1
        BNE     INCVE1
        INC     VEB+2
INCVE1  RTS
;
;       SUB TO READ BYTE FROM TAPE
;
RDBYT   JSR     RDCHT
        JSR     PACKT
        JSR     RDCHT
        JSR     PACKT
        RTS
;
;       PACK A=ASCII INTO SAVX
;       AS HEX DATA
;
PACKT   CMP     #$30
        BMI     PACKT3
        CMP     #$47
        BPL     PACKT3
        CMP     #$40
        BMI     PACKT1
        CLC
        ADC     #$09
PACKT1  ROL     A
        ROL     A
        ROL     A
        ROL     A
        LDY     #$04
PACKT2  ROL     A
        ROL     SAVX
        DEY          
        BNE     PACKT2
        LDA     SAVX
        LDY     #$00        Y=0 VALID HEX CHAR
        RTS
PACKT3  INY                 Y=1 NOT HEX
        RTS
;
;       GET 1 CHAR FROM TAPE AND RETURN 
;       WITH CHAR IN A  USE SAVX+1 TO ASM CHAR
;
RDCHT   STX     SAVX+2
        LDX     #$08        READ 8 BITS
RDCHT1  JSR     RDBIT       GET NEXT DATA BIT
        LSR     SAVX+1      RIGHT SHIFT CHAR
        ORA     SAVX+1      OR IN SIGN BIT
        STA     SAVX+1      REPLACE CHAR
        DEX
        BNE     RDCHT1
;
        LDA     SAVX+1      MOVE CHAR INTO A
        ROL     A           SHIFT OFF PARITY
        LSR     A
        LDX     SAVX+2
        RTS
;
;       THIS SUB GETS ONE BIT FROM
;       TAPE AND RETURNS IT IN SIGN OF A
;
RDBIT   BIT     SBD         WAIT FOR END OF START BIT
        BPL     RDBIT
        LDA     CLKRDT      GET START BIT TIME
        LDY     #$FF        A=256-T1
        STY     CLK64T      SET UP TIMER
;
        LDY     #$14
RDBIT3  DEY                 DELAY 100 MICROSEC
        BNE     RDBIT3
;
RDBIT2  BIT     SBD
        BMI     RDBIT2      WAIT FOR NEXT START BIT
        SEC
        SBC     CLKRDT      (256-T1)-(256-T2)=T2-T1
        LDY     #$FF
        STY     CLK64T      SET UP TIMER FOR NEXT BIT
        LDY     #$07
RDBIT4  DEY                 DELAY 50 MICROSEC
        BNE     RDBIT4
;
        EOR     #$FF        COMPLEMENT SIGN OF A
        AND     #$80         MASK ALL EXCEPT SIGN
        RTS
;
;       DIAGNOSTICS
;          MEMORY
;          PLLCAL
;
;
;
;       PLLCAL OUTPUT 166 MICROSEC
;       PULSE STRING
; 
PLLCAL  LDA     #$27
        STA     SBD         TURN OFF DATIN PB5=1
        LDA     #$BF        CONVERT PB7 TO OUTPUT
        STA     PBDD
;
PLL1    BIT     CLKRDI
        BPL     PLL1
        LDA     #154        WAIT 166 MICROSEC
        STA     CLK1T
        LDA     #$A7        OUTPUT PB7=1
        STA     SBD
;
PLL2    BIT     CLKRDI
        BPL     PLL2
        LDA     #154
        STA     CLK1T
        LDA     #$27        PB7=0
        STA     SBD
        JMP     PLL1
;
;
;       INTERRUPTS PAGE 27
;
        .BS     356,$FF
NMIP27  .DA     PLLCAL
RSTP27  .DA     PLLCAL
IRQP27  .DA     PLLCAL
;