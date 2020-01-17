        .CR     6502
        .TF     6530-002.bin,bin
        .LF     6530-002.list
;
;
;
;
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
;                      000000  000000  222222
;                      0    0  0    0       2
;              ------  0    0  0    0       2
;              ------  0    0  0    0  222222
;              ------  0    0  0    0  2
;                      0    0  0    0  2
;                      000000  000000  222222
;
;
;
;
;          COPYRIGHT
;          MOS TECHNOLOGY INC.
;          DATE  OCT 13 1975    REV E
;
;    KIM   :TTY INTERFACE
;          :KEYBOARD INTERFACE
;          :7 SEG 6 DIGIT DISPLAY
;
; 
;    TTY CMDS:
;          G   GOEXEC
;          CR  OPEN NEXT CELL
;          LF  OPEN PREV. CELL
;          .   MODIFY OPEN CELL
;          SP  OPEN NEW CELL
;          L   LOAD (OBJECT FORMAT)
;          Q   DUMP  FROM OPEN CELL ADDR TO HI LIMIT
;          RO  RUB OUT  - RETURN TO START  (KIM)
;              ((ALL ILLEGAL CHARS ARE IGNORED))
;
;    KEYBOARD COMMANDS:
;        ADDR  SETS MODE TO MODIFY CELL ADDRESS
;        DATA  SETS MODE TO MODIFY DATA IN OPEN CELL
;        STEP  INCREMENTS TO NEXT CELL
;        RST   SYSTEM RESET
;        RUN   GOEXEC
;        STOP  $1C00 CAN BE LOADED INTO NMIV TO
;              USE STOP FEATURE
;        PC    DISPLAY PC
;
;        CLOCK IS NOT DISABLED IN SIGMA 1
;
;
;
;
        .IN     equates.asm
        .OR     $1C00
        .TA     $0000
SAVE    STA     ACC         KIM ENTRY VIA STOP (NMI)
        PLA                  OR BRK (IRQ)
        STA     PREG
        PLA                 KIM ENTRY VIA JSR (A LOST)
        STA     PCL
        STA     POINTL
        PLA
        STA     PCH
        STA     POINTH
        STY     YREG
        STX     XREG
        TSX
        STX     SPUSER
        JSR     INITS
        JMP     START
;
;       NMI AND IRQ ARE CALLED VIA RAM-VECTOR. THIS
;       ENABLES THE PROGRAMMER TO INSERT HIS OWN ROUTINES.
;
;       COMMENT: 
;        IS NOT INITIALISED ANYWHERE, SO ANY ACCIDENTAL
;        NMI OR IRQ CAN LEAD TO CRASH!
NMIT    JMP     (NMIV)      NON-MASKABLE INTERRUPT TRAP
IRQT    JMP     (IRQV)      INTERRUPT TRAP
;
RST     LDX     #$FF        KIM ENTRY VIA RST
        TXS                 ; set stack
        STX     SPUSER
        JSR     INITS       
;
;       DETERMINE CHARACTERS PER SECOND
;
DETCPS  LDA     #$FF        COUNT START BIT
        STA     CNTH30      ZERO CNTH30
        LDA     #$01        MASK HI ORDER BITS
DET1    BIT     SAD         TEST
        BNE     START       KEYBD SSW TEST
        BMI     DET1        START BIT TEST
        LDA     #$FC
DET3    CLC                 THIS LOOP COUNTS
        ADC     #$01         THE START BIT TIME
        BCC     DET2
        INC     CNTH30
DET2    LDY     SAD         CHECK FOR END OF START BIT
        BPL     DET3
        STA     CNTL30
        LDX     #$08
        JSR     GET5        GET REST OF THE CHAR, TEST CHAR
;
;
;
;       MAKE TTY/KB SELECTION
;
START   JSR     INIT1
        LDA     #$01        
        BIT     SAD         TTY?
        BNE     TTYKB       ; no -> keyboard/display routine
        JSR     CRLF        PRT CR LF
        LDX     #$0A        TYPE OUT KIM
        JSR     PRTST
        JMP     SHOW1
;
CLEAR   LDA     #$00
        STA     INL         CLEAR INPUT BUFFER
        STA     INH
READ    JSR     GETCH       GET CHARACTER
        CMP     #$01
        BEQ     TTYKB
        JSR     PACK
        JMP     SCAN
;
;       MAIN ROUTINE FOR KEYBOARD
;       AND DISPLAY
;
TTYKB   JSR     SCAND       IF A=0 NO KEY
        BNE     START
TTYKB1  LDA     #$01
        BIT     SAD
        BEQ     START
        JSR     SCAND
        BEQ     TTYKB1
        JSR     SCAND
        BEQ     TTYKB1
;
GETK    JSR     GETKEY
        CMP     #$15
        BPL     START
        CMP     #$14
        BEQ     PCCMD       DISPLAY PC
        CMP     #$10        ADDR MODE=1
        BEQ     ADDRM
        CMP     #$11        DATA MODE=1
        BEQ     DATAM
        CMP     #$12        STEP
        BEQ     STEP
        CMP     #$13        RUN
        BEQ     GOV
DATA    ASL     A           SHIFT CHARACTER INTO HIGH
        ASL     A           ORDER NIBBLE
        ASL     A
        ASL     A
        STA     TEMP        STORE IN TEMP
        LDX     #$04
DATA1   LDY     MODE        TEST MODE 1=ADDR
        BNE     ADDR        MODE=0 DATA
        LDA     (POINTL),Y  GET DATA
        ASL     TEMP        SHIFT CHAR
        ROL     A           SHIFT DATA
        STA     (POINTL),Y  STORE OUT DATA
        JMP     DATA2
;
ADDR    ASL     A           SHIFT CHAR
        ROL     POINTL      SHIFT ADDR
        ROL     POINTH      SHIFT ADDR HI
DATA2   DEX
        BNE     DATA1       DO 4 TIMES
        BEQ     DATAM2      EXIT HERE
;
ADDRM   LDA     #$01
        BNE     DATAM1
;
DATAM   LDA     #$00
DATAM1  STA     MODE
DATAM2  JMP     START
;
STEP    JSR     INCPT
        JMP     START
;
GOV     JMP     GOEXEC
;
;
;       DISPLAY PC BY MOVING
;       PC TO POINT
;
PCCMD   LDA     PCL
        STA     POINTL
        LDA     PCH
        STA     POINTH
        JMP     START
;
; LOAD PAPER TAPE FROM TTY
;
LOAD    JSR     GETCH       LOOK FOR FIRST CHAR
        CMP     #$3B        SMICOLON
        BNE     LOAD
        LDA     #$00
        STA     CHKSUM
        STA     CHKHI
        
        JSR     GETBYT      GET BYTE CNT
        TAX                 SAVE IN X INDEX
        JSR     CHK         COMPUTE CHKSUM
        
        JSR     GETBYT      GET ADDRESS HI
        STA     POINTH
        JSR     CHK
        JSR     GETBYT      GET ADDRESS LO
        STA     POINTL
        JSR     CHK
        
        TXA                 IF CNT=0 DONT
        BEQ     LOAD3       GET ANY DATA

LOAD2   JSR     GETBYT      GET DATA
        STA     (POINTL),Y  STORE DATA
        JSR     CHK
        JSR     INCPT       NEXT ADDRESS
        DEX
        BNE     LOAD2
        INX                 X=1 DATA RECORD
;                           X=0 LAST RECORD
LOAD3   JSR     GETBYT      COMPARE CHKSUM
        CMP     CHKHI
        BNE     LOADE1
        JSR     GETBYT
        CMP     CHKSUM
        BNE     LOADER
        
        TXA                 X=0 LAST RECORD
        BNE     LOAD
        
LOAD7   LDX     #$0C        X-OFF KIM
LOAD8   LDA     #$27
        STA     SBD         DISABLE DATA IN
        JSR     PRTST
        JMP     START

LOADE1  JSR     GETBYT      DUMMY
LOADER  LDX     #$11        X-OFF ERR KIM
        BNE     LOAD8
;
;       DUMP TO TTY
;       FROM OPEN CELL ADDRESS
;       TO LIMHL, LIMHH
;        
DUMP    LDA     #$00
        STA     INL
        STA     INH         CLEAR RECORD COUNT    
DUMP0   LDA     #$00
        STA     CHKHI       CLEAR CHKSUM
        STA     CHKSUM

DUMP1   JSR     CRLF
        LDA     #$3B        PRINT SEMICOLON
        JSR     OUTCH
        LDA     POINTL      TEST POINT GT OR ET
        CMP     EAL         HI LIMIT GOTO EXIT
        LDA     POINTH
        SBC     EAH
        BCC     DUMP4

        LDA     #$00        PRINT LAST RECORD
        JSR     PRTBYT      0 BYTES
        JSR     OPEN
        JSR     PRTPNT

        LDA     CHKHI       PRINT CHKSUM
        JSR     PRTBYT       FOR LAST RECORD    
        LDA     CHKSUM
        JSR     PRTBYT
        JMP     CLEAR

;
DUMP4   LDA     #$18        PRINT 24 BYTE COUNT
        TAX                 SAVE AS INDEX
        JSR     PRTBYT
        JSR     CHK
        JSR     PRTPNT
;
DUMP2   LDY     #$00        PRINT 24 BYTES
        LDA     (POINTL),y  GET DATA
        JSR     PRTBYT      PRINT DATA
        JSR     CHK         COMPUTE CHKSUM
        JSR     INCPT       INCREMENT POINT
        DEX
        BNE     DUMP2
;
        LDA     CHKHI
        JSR     PRTBYT      PRINT CHECKSUM
        LDA     CHKSUM
        JSR     PRTBYT
        INC     INL         INCR RECORD COUNT
        BNE     DUMP3
        INC     INH
DUMP3   JMP     DUMP0
;
SPACE   JSR     OPEN        OPEN NEW CELL
SHOW    JSR     CRLF        PRINT CR LF
SHOW1   JSR     PRTPNT
        JSR     OUTSP       PRINT SPACE
        LDY     #$00        PRINT DATA SPECIFIED
        LDA     (POINTL),y   BY POINT AD=LDA EXT
        JSR     PRTBYT
        JSR     OUTSP       PRINT SPACE
        JMP     CLEAR
;
RTRN    JSR     INCPT       OPEN NEXT CELL
        JMP     SHOW
;
;       START A PROGRAM AT DISPLAYED ADDRESS. RTI IS
;       USED AS A COMFORTABLE WAY TO DEFINE ALL
;       FLAGS IN ONE MOVE.
;
GOEXEC  LDX     SPUSER      USER USER DEFINED STACK
        TXS
        LDA     POINTH      PROGRAM RUNS FROM
        PHA                  OPEN CELL ADDRESS
        LDA     POINTL
        PHA
        LDA     PREG        USER DEFINED
        PHA                  FLAG REGISTER
        LDX     XREG        RESTORE REGS
        LDY     YREG
        LDA     ACC
        RTI                 START PROGRAM 
;
;       TAKE CARE IF TTY-INPUT
;
SCAN    CMP     #$20        OPEN CELL
        BEQ     SPACE
        CMP     #$7F        RUB OUT (RESTART KIM)
        BEQ     STV
        CMP     #$0D        NEXT CELL
        BEQ     RTRN

        CMP     #$0A        PREV CELL
        BEQ     FEED
        CMP     #$2E        MODIFY CELL ('.')
        BEQ     MODIFY

        CMP     #$47        GO EXEC ('G')
        BEQ     GOEXEC

        CMP     #$51        DUMP FROM OPEN CELL
        BEQ     DUMPV        TO HI ('Q')

        CMP     #$4C        LOAD TAPE ('L')
        BEQ     LOADV

        JMP     READ        IGNORE ILLEGAL CHAR
;
STV     JMP     START
DUMPV   JMP     DUMP
LOADV   JMP     LOAD
;
FEED    SEC
        LDA     POINTL      DECREMENT DOUBLE BYTE
        SBC     #$01         AT POINTL AND POINTH          
        STA     POINTL
        BCS     FEED1

        DEC     POINTH
FEED1   JMP     SHOW
;
MODIFY  LDY     #$00        GET CONTENTS OF INPUT BUFFER
        LDA     INL         INL AND STORE IN LOCATION
        STA     (POINTL),y  SPECIFIED BY POINT
        JMP     RTRN
;
;       END OF MAIN LINE
;       SOBROUTINES FOLLOW
;
;       SUB to PRINT POINTL,POINTH
PRTPNT  LDA     POINTH
        JSR     PRTBYT
        JSR     CHK
        LDA     POINTL
        JSR     PRTBYT
        JSR     CHK
        RTS
;
;       PRINT STRING OF ASCII CHARS FROM
;       TOP+X TO TOP
;
CRLF    LDX     #$07        OUTPUT <RETURN> AND <LF>
PRTST   LDA     TOP,x
        JSR     OUTCH
        DEX                 EVERYTHING?
        BPL     PRTST        REPEAT THEN
PRT1    RTS
;
;       PRINT 1 HEX BYTE AS TWO ASCII CHARS
;
PRTBYT  STA     TEMP        KEEP UNTIL LATER
        LSR                 SHIFT CHAR RIGHT 4 BITS
        LSR
        LSR
        LSR
        JSR     HEXTA       CONVERT BIT 4..7 TO HEX AND PRINT
        LDA     TEMP        GET OTHER HALF
        JSR     HEXTA       CONVERT BIT 0..7 TO HEX AND PRINT
        LDA     TEMP        RESTORE A
        RTS
;
HEXTA   AND     #$0F        MASK BIT 0..4
        CMP     #$0A         > 10 ?
        CLC
        BMI     HEXTA1      ALPHANUMERIC (A..F)?
        ADC     #$07         
HEXTA1  ADC     #$30        CONVERT TO ASCII-CHAR
        JMP     OUTCH        AND PRINT IT
;
;       GET 1 CHAR FROM TTY
;       CHAR IN A
;       X IS PRESERVED AND Y RETURNED = FF
GETCH   STX     TMPX        SAVE X REG
        LDX     #$08        COUNT 8 BITS
        LDA     #$01
GET1    BIT     SAD         CHECK IF TTY-MODE
        BNE     GET6         IF NO

; PA7 is input TTY
        BMI     GET1        WAIT FOR STARTBIT
        JSR     DELAY       DELAY 1 BIT
;
; By delaying another half bit time, you read the bit in the middle
; of every bit.
GET5    JSR     DEHALF      DELAY 1/2 BIT TIME 
GET2    LDA     SAD         GET 8 BITS
        AND     #$80        MASK BIT 7
        LSR     CHAR        SHIFT RIGHT CHAR
        ORA     CHAR         OR IT WITH NEW BIT
        STA     CHAR         AND STORE IT AGAIN
        JSR     DELAY
        DEX
        BNE     GET2        GET NEXT CHAR
        JSR     DEHALF      EXIT THIS RTN
;
        LDX     TMPX
        LDA     CHAR
        ROL                 SHIFT OFF PARITY
        LSR
GET6    RTS
;
;       INITIALIZATION FOR SIGMA (6530)
;
INITS   LDX     #$01        SET KB MODE TO ADDR
        STX     MODE
;
INIT1   LDX     #$00
        STX     PADD        PA0..PA7 = INPUT
        LDX     #$3F
        STX     PBDD        PB0..PB5 = OUTPUT
;                           PB6, PB7 = INPUT
        LDX     #$07        ENABLE 74145 OUTPUT 3 TO
        STX     SBD          CHECK KB/TTY-MODE
        CLD
        SEI
        RTS
;
;       PRINT 1 CHAR (CHAR IN A)
;       X IS PRESERVED Y RETURNED = FF
;
OUTSP   LDA     #$20        PRINT SPACE
OUTCH   STA     CHAR
        STX     TMPX
        JSR     DELAY       10/11 BIT CODE SYNC
        LDA     SBD         START BIT
        AND     #$FE        
        STA     SBD         
        JSR     DELAY
        LDX     #$08        SEND CHARACTER
OUT1    LDA     SBD
        AND     #$FE        CLEAR BIT 0
        LSR     CHAR        SHIFT BYTE 
        ADC     #$00        ADD CARRY = FORMER BIT 0
        STA     SBD         OUTPUT BIT
        JSR     DELAY       
        DEX                 ALL BITS DONE?
        BNE     OUT1         THEN GO ON
        LDA     SBD         STOP BIT
        ORA     #$01
        STA     SBD         
        JSR     DELAY       STOP BIT
        LDX     TMPX        RESTORE INDEX
        RTS
;
;       DELAY 1 BIT TIME
;       AS DETERMINED BY DETCPS
;
DELAY   LDA     CNTH30      THIS LOOP SIMULATES
        STA     TIMH         DETCPS SECTION AND WILL DELAY
        LDA     CNTL30       1 BIT TIME
DE2     SEC
DE4     SBC     #$01
        BCS     DE3         A<>$FF ->
        DEC     TIMH
DE3     LDY     TIMH        TIMH > 0 ?
        BPL     DE2          IF YES
        RTS
;
;                           DELAY 1/2 BIT TIME
DEHALF  LDA     CNTH30      DOUBLE RIGHT SHIFT OF DELAY
        STA     TIMH        CONSTANT FOR A DIV BY 2
        LDA     CNTL30
        LSR
        LSR     TIMH
        BCC     DE2
        ORA     #$80
        BCS     DE4         ALWAYS
; Why not:
;  LSR  TIMH
;  ror
;  JMP  DE2
; ????
;
;       SUB TO DETERMINE IF KEY IS
;       DEPRESSED OR CONDITION OF SSW
;       KEY NOT DEP OR TTY MODE A=0
;       KEY DEP OR KB MODE A NOT ZERO
;
;       DETERMINE IF KEY IS DEPRESSED: 
;        NO -> A=0, YES -> A>0
AK      LDY     #$03        3 ROWS
        LDX     #$01        SELECT 74145 OUTPUT 0
;
ONEKEY  LDA     #$FF
AKA     STX     SBD         OUTPUT DIGIT
        INX                 GET NEXT DIGIT
        INX                 
        AND     SAD         A := A && (PA0..PA7)
        DEY                 ALL ROWS DONE?
        BNE     AKA          DO MORE
;
        LDY     #$07
        STY     SBD         SELECT 74145 OUTPUT 3 (NOT USED)
;
        ORA     #$80        MASK BIT 7 OF A
        EOR     #$FF        IF A STILL IS $FF -> A := 0
        RTS
;
;       SUB OUTPUT TO 7-SEGMENT DISPLAY
;
SCAND   LDY     #$00        GET DATA SPECIFIED    
        LDA     (POINTL),Y   BY POINT
        STA     INH         SET UP DISPLAY BUFFER 
SCANDS  LDA     #$7F        CHANGE SEG
        STA     PADD         TO OUTPUT

        LDX     #$09        INIT DIGIT NUMBER
        LDY     #$03        OUTPUT 3 BYTES
;
SCAND1  LDA     INL,y       GET BYTE
        LSR                 GET MSD BY SHIFTING A
        LSR
        LSR
        LSR
        JSR     CONVD       OUTPUT CHAR
        LDA     INL,y       GET BYTE AGAIN
        AND     #$0F        GET LSD
        JSR     CONVD       OUTPUT CHAR
        DEY                 SET UP FOR NXT BYTE    
        BNE     SCAND1      
        STX     SBD         ALL DIGITS OFF
        LDA     #$00        CHANGE SEGMENT
        STA     PADD         TO INPUTS
        JMP     AK          GET ANY KEY
;
;       CONVERT AND DISPLAY HEX
;       USED BY SCAND ONLY
;
CONVD   STY     TEMP        SAVE Y
        TAY                 USE CHAR AS INDEX
        LDA     TABLE,Y     LOOKUP CONVERSION
        LDY     #$00        TURN OFF SEGMENTS
        STY     SAD
        STX     SBD         OUTPUT DIGIT ENABLE
        STA     SAD         OUTPUT SEGMENTS
;
        LDY     #$7F        DELAY 500 CYCLES APPROX.
CONVD1  DEY
        BNE     CONVD1
;
        INX                 GET NEXT DIGIT NUMBER
        INX                 ADD 2
        LDY     TEMP        RESTORE Y
        RTS
;
;       SUB TO INCREMENT POINT
;
INCPT   INC     POINTL
        BNE     INCPT2
        INC     POINTH
INCPT2  RTS
;
;       GET KEY FROM KEY BOARD
;       RETURN WITH A=KEY VALUE
;       GT. 15 THEN ILLEGAL OR NO KEY
;
GETKEY  LDX     #$21        START AT DIGIT 0
GETKE5  LDY     #$01        GET 1 ROW
        JSR     ONEKEY      
        BNE     KEYIN       A=0 NO KEY
        CPX     #$27        TEST FOR DIGIT 2
        BNE     GETKE5
        LDA     #$15        15=NOKEY
        RTS
KEYIN   LDY     #$FF
KEYIN1  ASL                 SHIFT LEFT
        BCS     KEYIN2       UNTIL Y=KEY NUM
;
; Comment: bit 7 is always 0 so Carry is always 0 the first time
;  and allowing Y to become 0 (key $FF does not exist)
        INY     
        BPL     KEYIN1

KEYIN2  TXA
        AND     #$0F        MASK MSD
        LSR                 DIVIDE BY 2
        TAX             
        TYA
        BPL     KEYIN4 

;
; Add 7 to A for every row above 0 to get actual key number
KEYIN3  CLC
        ADC     #$07        ADD (X-1) TIMES 7 TO A
KEYIN4  DEX                 COUNTDOWN TO 0
        BNE     KEYIN3  
        RTS                 A IS ALWAYS < 21 EG. < $15
;
;       SUB TO COMPUTE CHECK SUM
;
CHK     CLC
        ADC     CHKSUM
        STA     CHKSUM
        LDA     CHKHI
        ADC     #0
        STA     CHKHI
        RTS
;
;       GET 2 HEX CHAR'S AND PACK
;       INTO INL AND INH
GETBYT  JSR     GETCH
        JSR     PACK
        JSR     GETCH
        JSR     PACK
        LDA     INL
        RTS
;
;       SHIFT CHAR IN A INTO
;       INL AND INH
;
PACK    CMP     #$30        CHECK FOR HEX
        BMI     UPDAT2
        CMP     #$47        NOT HEX EDIT
        BPL     UPDAT2      
HEXNUM  CMP     #$40        CONVERT TO HEX?
        BMI     UPDATE       IF A..F
HEXALP  CLC
        ADC     #$09
UPDATE  ROL
        ROL
        ROL
        ROL
        LDY     #$04        SHIFT INTO I/O BUFFER
UPDAT1  ROL
        ROL     INL
        ROL     INH
        DEY                 4 TIMES?
        BNE     UPDAT1       IF NO
        LDA     #$00        A=0 IF HEX NUM
UPDAT2  RTS
;
OPEN    LDA     INL         MOVE I/O BUFFER TO POINT
        STA     POINTL
        LDA     INH         TRANSFER INH- POINTH
        STA     POINTH
        RTS
;
;
;       END OF SUBROUTINES
;
;       TABLES
TOP     .HS     0000000000000A0D
        .AS     /MIK/
        .HS     2013
        .AS     /RRE/
        .HS     2013
;
;       TABLE HEX TO 7 SEGMENT
;                0  1  2  3  4  5  6  7
TABLE   .HS     BF.86.DB.CF.E6.ED.FD.87
;                8  9  A  B  C  D  E  F
        .HS     FF.EF.F7.FC.B9.DE.F9.F1
        .HS     FF.FF.FF            
;
;
;
;       INTERRUPT VECTORS
;
NMIENT  .DA     NMIT
RSTENT  .DA     RST
IRQENT  .DA     IRQT