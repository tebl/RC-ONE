;***********************************************************************
;
;  Kim-1 MicroChess (c) 1976-2005 Peter Jennings, www.benlo.com 
;
;***********************************************************************

; All rights reserved.

; Redistribution and use in source and binary forms, with or without
; modification, are permitted provided that the following conditions
; are met:
; 1. Redistributions of source code must retain the above copyright
;    notice, this list of conditions and the following disclaimer.
; 2. Redistributions in binary form must reproduce the above copyright
;    notice, this list of conditions and the following disclaimer in the
;    documentation and/or other materials provided with the distribution.
; 3. The name of the author may not be used to endorse or promote products
;    derived from this software without specific prior written permission.

; THIS SOFTWARE IS PROVIDED BY THE AUTHOR ''AS IS'' AND ANY EXPRESS OR
; IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
; OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
; IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
; INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
; NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
; DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
; THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
; (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
; THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

;
; modified by Daryl Rictor to work over a 
; serial terminal connection, August 2002.
;
; Updated with corrections to earlier OCR errors by Bill Forster, August 2005.
;

;
; 6551 I/O Port Addresses
;
ACIADat .EQ     ACIA
ACIASta .EQ     ACIA+1
ACIACmd .EQ     ACIA+2
ACIACtl .EQ     ACIA+3
;
; page zero variables
;
BOARD   .EQ     $50 
BK      .EQ     $60 
PIECE   .EQ     $B0 
SQUARE  .EQ     $B1 
SP2     .EQ     $B2 
SP1     .EQ     $B3 
INCHEK  .EQ     $B4 
STATE   .EQ     $B5 
MOVEN   .EQ     $B6 
REV     .EQ     $B7
OMOVE   .EQ     $DC 
WCAP0   .EQ     $DD 
COUNT   .EQ     $DE 
BCAP2   .EQ     $DE 
WCAP2   .EQ     $DF 
BCAP1   .EQ     $E0 
WCAP1   .EQ     $E1 
BCAP0   .EQ     $E2 
MOB     .EQ     $E3 
MAXC    .EQ     $E4 
CC      .EQ     $E5 
PCAP    .EQ     $E6 
BMOB    .EQ     $E3 
BMAXC   .EQ     $E4 
BMCC    .EQ     $E5         ; was BCC (TASS doesn't like it as a label)
BMAXP   .EQ     $E6 
XMAXC   .EQ     $E8 
WMOB    .EQ     $EB 
WMAXC   .EQ     $EC 
WCC     .EQ     $ED 
WMAXP   .EQ     $EE 
PMOB    .EQ     $EF 
PMAXC   .EQ     $F0 
PCC     .EQ     $F1 
PCP     .EQ     $F2 
OLDKY   .EQ     $F3 
BESTP   .EQ     $FB 
BESTV   .EQ     $FA 
BESTM   .EQ     $F9 
DIS1    .EQ     $FB 
DIS2    .EQ     $FA 
DIS3    .EQ     $F9 
temp    .EQ     $FC
temp2   .EQ     $FD
;
;
;
        LDA     #$00        ; REVERSE TOGGLE
        STA     REV
        JSR     Init_6551
CHESS   CLD                 ; INITIALIZE
        LDX     #$FF        ; TWO STACKS
        TXS 
        LDX     #$C8
        STX     SP2
;       
;       ROUTINES TO LIGHT LED
;       DISPLAY AND GET KEY
;       FROM KEYBOARD
;       
OUT     JSR     pout        ; DISPLAY AND
        JSR     KIN         ; GET INPUT   *** my routine waits for a keypress
;       CMP     OLDKY       ; KEY IN ACC  *** no need to debounce
;       BEQ     OUT         ; (DEBOUNCE)
;       STA     OLDKY
;       
        CMP     #$43        ; [C]
        BNE     NOSET       ; SET UP
        LDX     #$1F        ; BOARD
WHSET   LDA     SETW,X      ; FROM
        STA     BOARD,X     ; SETW
        DEX 
        BPL     WHSET
        LDX     #$1B        ; *ADDED
        STX     OMOVE       ; INITS TO $FF
        LDA     #$CC        ; Display CCC
        BNE     CLDSP
;       
NOSET   CMP     #$45        ; [E]
        BNE     NOREV       ; REVERSE
        JSR     REVERSE     ; BOARD IS
        SEC
        LDA     #$01
        SBC     REV
        STA     REV         ; TOGGLE REV FLAG
        LDA     #$EE        ; IS
        BNE     CLDSP
;       
NOREV   CMP     #$40        ; [P]
        BNE     NOGO        ; PLAY CHESS
        JSR     GO
CLDSP   STA     DIS1        ; DISPLAY
        STA     DIS2        ; ACROSS
        STA     DIS3        ; DISPLAY
        BNE     CHESS
;       
NOGO    CMP     #$0D        ; [Enter]
        BNE     NOMV        ; MOVE MAN
        JSR     MOVE        ; AS ENTERED
        JMP     DISP
NOMV    CMP     #$41        ; [Q] ***Added to allow game exit***
        BEQ     DONE        ; quit the game, exit back to system.  
        JMP     INPUT       ; process move
DONE    JMP     $FF00       ; *** MUST set this to YOUR OS starting address
;       
;       THE ROUTINE JANUS DIRECTS THE
;       ANALYSIS BY DETERMINING WHAT
;       SHOULD OCCUR AFTER EACH MOVE
;       GENERATED BY GNM
;       
;       
;
JANUS   LDX     STATE
        BMI     NOCOUNT
;       
;       THIS ROUTINE COUNTS OCCURRENCES
;       IT DEPENDS UPON STATE TO INDEX
;       THE CORRECT COUNTERS
;       
COUNTS  LDA     PIECE
        BEQ     OVER        ; IF STATE=8
        CPX     #$08        ; DO NOT COUNT
        BNE     OVER        ; BLK MAX CAP
        CMP     BMAXP       ; MOVES FOR
        BEQ     XRT         ; WHITE
;       
OVER    INC     MOB,X       ; MOBILITY
        CMP     #$01        ;  + QUEEN
        BNE     NOQ         ; FOR TWO
        INC     MOB,X
;       
NOQ     BVC     NOCAP
        LDY     #$0F        ; CALCULATE
        LDA     SQUARE      ; POINTS
ELOOP   CMP     BK,Y        ; CAPTURED
        BEQ     FOUN        ; BY THIS
        DEY                 ; MOVE
        BPL     ELOOP
FOUN    LDA     POINTS,Y
        CMP     MAXC,X
        BCC     LESS        ; SAVE IF
        STY     PCAP,X      ; BEST THIS
        STA     MAXC,X      ; STATE
;       
LESS    CLC 
        PHP                 ; ADD TO
        ADC     CC,X        ; CAPTURE
        STA     CC,X        ; COUNTS
        PLP 
;       
NOCAP   CPX     #$04
        BEQ     ON4
        BMI     TREE        ;(=00 ONLY)
XRT     RTS 
;       
;      GENERATE FURTHER MOVES FOR COUNT
;      AND ANALYSIS 
;       
ON4     LDA     XMAXC       ; SAVE ACTUAL 
        STA     WCAP0       ; CAPTURE
        LDA     #$00        ; STATE=0
        STA     STATE
        JSR     MOVE        ; GENERATE
        JSR     REVERSE     ; IMMEDIATE
        JSR     GNMZ        ; REPLY MOVES  
        JSR     REVERSE
;       
        LDA     #$08        ; STATE=8
        STA     STATE       ; GENERATE
        JSR     GNM         ; CONTINUATION
        JSR     UMOVE       ; MOVES
;       
        JMP     STRATGY     ; FINAL EVALUATION
NOCOUNT CPX     #$F9
        BNE     TREE
;       
;      DETERMINE IF THE KING CAN BE
;      TAKEN, USED BY CHKCHK
;       
        LDA     BK          ; IS KING
        CMP     SQUARE      ; IN CHECK?
        BNE     RETJ        ; SET INCHEK=0
        LDA     #$00        ; IF IT IS
        STA     INCHEK
RETJ    RTS 
;       
;      IF A PIECE HAS BEEN CAPTURED BY
;      A TRIAL MOVE, GENERATE REPLIES &
;      EVALUATE THE EXCHANGE GAIN/LOSS
;       
TREE    BVC     RETJ        ; NO CAP
        LDY     #$07        ; (PIECES)
        LDA     SQUARE
LOOPX   CMP     BK,Y
        BEQ     FOUNX
        DEY 
        BEQ     RETJ        ; (KING)
        BPL     LOOPX       ; SAVE
FOUNX   LDA     POINTS,Y    ; BEST CAP
        CMP     BCAP0,X     ; AT THIS
        BCC     NOMAX       ; LEVEL
        STA     BCAP0,X
NOMAX   DEC     STATE
        LDA     #$FB        ; IF STATE=FB
        CMP     STATE       ; TIME TO TURN
        BEQ     UPTREE      ; AROUND
        JSR     GENRM       ; GENERATE FURTHER
UPTREE  INC     STATE       ; CAPTURES
        RTS 
;       
;      THE PLAYER'S MOVE IS INPUT
;       
INPUT   CMP     #$08        ; NOT A LEGAL
        BCS     ERROR       ; SQUARE #
        JSR     DISMV
DISP    LDX     #$1F
SEARCH  LDA     BOARD,X
        CMP     DIS2
        BEQ     HERE        ; DISPLAY
        DEX                 ; PIECE AT    
        BPL     SEARCH      ; FROM
HERE    STX     DIS1        ; SQUARE
        STX     PIECE
ERROR   JMP     CHESS
;       
;      GENERATE ALL MOVES FOR ONE
;      SIDE, CALL JANUS AFTER EACH
;      ONE FOR NEXT STEP
;       
;
GNMZ    LDX     #$10        ; CLEAR
GNMX    LDA     #$00        ; COUNTERS
CLEAR   STA     COUNT,X
        DEX 
        BPL     CLEAR
;       
GNM     LDA     #$10        ; SET UP
        STA     PIECE       ; PIECE
NEWP    DEC     PIECE       ; NEW PIECE
        BPL     NEX         ; ALL DONE?
        RTS                 ;    -YES
;       
NEX     JSR     RESET       ; READY
        LDY     PIECE       ; GET PIECE
        LDX     #$08
        STX     MOVEN       ; COMMON START
        CPY     #$08        ; WHAT IS IT?
        BPL     PAWN        ; PAWN
        CPY     #$06
        BPL     KNIGHT      ; KNIGHT
        CPY     #$04
        BPL     BISHOP      ; BISHOP
        CPY     #$01
        BEQ     QUEEN       ; QUEEN
        BPL     ROOK        ; ROOK
;       
KING    JSR     SNGMV       ; MUST BE KING!
        BNE     KING        ; MOVES
        BEQ     NEWP        ; 8 TO 1
QUEEN   JSR     LINE
        BNE     QUEEN       ; MOVES
        BEQ     NEWP        ; 8 TO 1
;       
ROOK    LDX     #$04
        STX     MOVEN       ; MOVES
AGNR    JSR     LINE        ; 4 TO 1
        BNE     AGNR
        BEQ     NEWP
;       
BISHOP  JSR     LINE
        LDA     MOVEN       ; MOVES
        CMP     #$04        ; 8 TO 5
        BNE     BISHOP
        BEQ     NEWP
;       
KNIGHT  LDX     #$10
        STX     MOVEN       ; MOVES
AGNN    JSR     SNGMV       ; 16 TO 9
        LDA     MOVEN
        CMP     #$08
        BNE     AGNN
        BEQ     NEWP
;       
PAWN    LDX     #$06
        STX     MOVEN
P1      JSR     CMOVE       ; RIGHT CAP?
        BVC     P2
        BMI     P2
        JSR     JANUS       ; YES
P2      JSR     RESET
        DEC     MOVEN       ; LEFT CAP?
        LDA     MOVEN
        CMP     #$05
        BEQ     P1
P3      JSR     CMOVE       ; AHEAD
        BVS     NEWP        ; ILLEGAL
        BMI     NEWP
        JSR     JANUS
        LDA     SQUARE      ; GETS TO
        AND     #$F0        ; 3RD RANK?
        CMP     #$20
        BEQ     P3          ; DO DOUBLE
        JMP     NEWP
;       
;      CALCULATE SINGLE STEP MOVES
;      FOR K,N  
;       
SNGMV   JSR     CMOVE       ; CALC MOVE
        BMI     ILL1        ; -IF LEGAL
        JSR     JANUS       ; -EVALUATE
ILL1    JSR     RESET
        DEC     MOVEN
        RTS 
;       
;     CALCULATE ALL MOVES DOWN A
;     STRAIGHT LINE FOR Q,B,R
;       
LINE    JSR     CMOVE       ; CALC MOVE
        BCC     OVL         ; NO CHK
        BVC     LINE        ; NOCAP       
OVL     BMI     ILL         ; RETURN
        PHP 
        JSR     JANUS       ; EVALUATE POSN
        PLP 
        BVC     LINE        ; NOT A CAP
ILL     JSR     RESET       ; LINE STOPPED
        DEC     MOVEN       ; NEXT DIR
        RTS 
;       
;      EXCHANGE SIDES FOR REPLY
;      ANALYSIS 
;       
REVERSE LDX     #$0F
ETC     SEC 
        LDY     BK,X        ; SUBTRACT
        LDA     #$77        ; POSITION
        SBC     BOARD,X     ; FROM 77
        STA     BK,X
        STY     BOARD,X     ; AND
        SEC 
        LDA     #$77        ; EXCHANGE
        SBC     BOARD,X     ; PIECES
        STA     BOARD,X
        DEX 
        BPL     ETC
        RTS 
;       
;        CMOVE CALCULATES THE TO SQUARE
;        USING SQUARE AND THE MOVE
;       TABLE,  FLAGS SET AS FOLLOWS:
;       N - ILLEGAL MOVE
;       V - CAPTURE (LEGAL UNLESS IN CH)
;       C - ILLEGAL BECAUSE OF CHECK
;       [MY THANKS TO JIM BUTTERFIELD
;        WHO WROTE THIS MORE EFFICIENT
;        VERSION OF CMOVE]
;       
CMOVE   LDA     SQUARE      ; GET SQUARE
        LDX     MOVEN       ; MOVE POINTER
        CLC 
        ADC     MOVEX,X     ; MOVE LIST
        STA     SQUARE      ; NEW POS'N
        AND     #$88
        BNE     ILLEGAL     ; OFF BOARD
        LDA     SQUARE
;           
        LDX     #$20
LOOP    DEX                 ; IS TO
        BMI     NO          ; SQUARE
        CMP     BOARD,X     ; OCCUPIED?
        BNE     LOOP
;           
        CPX     #$10        ; BY SELF?
        BMI     ILLEGAL
;           
        LDA     #$7F        ; MUST BE CAP!
        ADC     #$01        ; SET V FLAG
        BVS     SPX         ; (JMP)
;           
NO      CLV                 ; NO CAPTURE
;           
SPX     LDA     STATE       ; SHOULD WE
        BMI     RETL        ; DO THE
        CMP     #$08        ; CHECK CHECK?
        BPL     RETL
;           
;        CHKCHK REVERSES SIDES
;       AND LOOKS FOR A KING
;       CAPTURE TO INDICATE
;       ILLEGAL MOVE BECAUSE OF
;       CHECK  SINCE THIS IS
;       TIME CONSUMING, IT IS NOT
;       ALWAYS DONE 
;       
CHKCHK  PHA                 ; STATE
        PHP 
        LDA     #$F9
        STA     STATE       ; GENERATE
        STA     INCHEK      ; ALL REPLY
        JSR     MOVE        ; MOVES TO
        JSR     REVERSE     ; SEE IF KING
        JSR     GNM         ; IS IN
        JSR     RUM         ; CHECK
        PLP 
        PLA 
        STA     STATE
        LDA     INCHEK
        BMI     RETL        ; NO - SAFE
        SEC                 ; YES - IN CHK
        LDA     #$FF
        RTS 
;       
RETL    CLC                 ; LEGAL
        LDA     #$00        ; RETURN
        RTS 
;       
ILLEGAL LDA     #$FF
        CLC                 ; ILLEGAL
        CLV                 ; RETURN
        RTS 
;       
;       REPLACE PIECE ON CORRECT SQUARE
;       
RESET   LDX     PIECE       ; GET LOGAT
        LDA     BOARD,X     ; FOR PIECE
        STA     SQUARE      ; FROM BOARD
        RTS 
;       
;       
;       
GENRM   JSR     MOVE        ; MAKE MOVE
GENR2   JSR     REVERSE     ; REVERSE BOARD
        JSR     GNM         ; GENERATE MOVES
RUM     JSR     REVERSE     ; REVERSE BACK
;       
;       ROUTINE TO UNMAKE A MOVE MADE BY
;       MOVE
;       
UMOVE   TSX                 ; UNMAKE MOVE
        STX     SP1
        LDX     SP2         ; EXCHANGE
        TXS                 ; STACKS
        PLA                 ; MOVEN
        STA     MOVEN
        PLA                 ; CAPTURED
        STA     PIECE       ; PIECE
        TAX 
        PLA                 ; FROM SQUARE
        STA     BOARD,X
        PLA                 ; PIECE
        TAX 
        PLA                 ; TO SOUARE
        STA     SQUARE
        STA     BOARD,X
        JMP     STRV
;       
;       THIS ROUTINE MOVES PIECE
;       TO SQUARE, PARAMETERS
;       ARE SAVED IN A STACK TO UNMAKE
;       THE MOVE LATER
;       
MOVE    TSX 
        STX     SP1         ; SWITCH
        LDX     SP2         ; STACKS
        TXS 
        LDA     SQUARE
        PHA                 ; TO SQUARE
        TAY 
        LDX     #$1F
CHECK   CMP     BOARD,X     ; CHECK FOR
        BEQ     TAKE        ; CAPTURE
        DEX 
        BPL     CHECK
TAKE    LDA     #$CC
        STA     BOARD,X
        TXA                 ; CAPTURED
        PHA                 ; PIECE
        LDX     PIECE
        LDA     BOARD,X
        STY     BOARD,X     ; FROM
        PHA                 ; SQUARE
        TXA 
        PHA                 ; PIECE
        LDA     MOVEN
        PHA                 ; MOVEN
STRV    TSX 
        STX     SP2         ; SWITCH
        LDX     SP1         ; STACKS
        TXS                 ; BACK
        RTS 
;           
;       CONTINUATION OF SUB STRATGY
;       -CHECKS FOR CHECK OR CHECKMATE
;       AND ASSIGNS VALUE TO MOVE
;       
CKMATE  LDX     BMAXC       ; CAN BLK CAP
        CPX     POINTS      ; MY KING?
        BNE     NOCHEK  
        LDA     #$00        ; GULP!
        BEQ     RETV        ; DUMB MOVE!
;       
NOCHEK  LDX     BMOB        ; IS BLACK
        BNE     RETV        ; UNABLE TO
        LDX     WMAXP       ; MOVE AND
        BNE     RETV        ; KING IN CH?
        LDA     #$FF        ; YES! MATE
;       
RETV    LDX     #$04        ; RESTORE
        STX     STATE       ; STATE=4
;       
;       THE VALUE OF THE MOVE (IN ACCU)
;       IS COMPARED TO THE BEST MOVE AND
;       REPLACES IT IF IT IS BETTER
;       
PUSH    CMP     BESTV       ; IS THIS BEST
        BCC     RETP        ; MOVE SO FAR?
        BEQ     RETP
        STA     BESTV       ; YES!
        LDA     PIECE       ; SAVE IT
        STA     BESTP
        LDA     SQUARE
        STA     BESTM       ; FLASH DISPLAY
RETP    LDA     #"."        ; print ... instead of flashing disp
        JMP     syschout    ; print . and return
;       
;       MAIN PROGRAM TO PLAY CHESS
;       PLAY FROM OPENING OR THINK
;       
GO      LDX     OMOVE       ; OPENING?
        BMI     NOOPEN      ; -NO   *ADD CHANGE FROM BPL
        LDA     DIS3        ; -YES WAS
        CMP     OPNING,X    ; OPPONENT'S
        BNE     END         ; MOVE OK?
        DEX 
        LDA     OPNING,X    ; GET NEXT
        STA     DIS1        ; CANNED
        DEX                 ; OPENING MOVE
        LDA     OPNING,X
        STA     DIS3        ; DISPLAY IT
        DEX 
        STX     OMOVE       ; MOVE IT
        BNE     MV2         ; (JMP)
;           
END     LDA     #$FF        ; *ADD - STOP CANNED MOVES
        STA     OMOVE       ; FLAG OPENING
NOOPEN  LDX     #$0C        ; FINISHED
        STX     STATE       ; STATE=C
        STX     BESTV       ; CLEAR BESTV
        LDX     #$14        ; GENERATE P
        JSR     GNMX        ; MOVES

        LDX     #$04        ; STATE=4
        STX     STATE       ; GENERATE AND
        JSR     GNMZ        ; TEST AVAILABLE MOVES

        LDX     BESTV       ; GET BEST MOVE
        CPX     #$0F        ; IF NONE
        BCC     MATE        ; OH OH!
;       
MV2     LDX     BESTP       ; MOVE
        LDA     BOARD,X     ; THE
        STA     BESTV       ; BEST
        STX     PIECE       ; MOVE
        LDA     BESTM
        STA     SQUARE      ; AND DISPLAY
        JSR     MOVE        ; IT
        JMP     CHESS
;       
MATE        LDA #$FF        ; RESIGN
        RTS                 ; OR STALEMATE
;       
;       SUBROUTINE TO ENTER THE
;       PLAYER'S MOVE
;       
DISMV   LDX     #$04        ; ROTATE
DROL    ASL     DIS3        ; KEY
        ROL     DIS2        ; INTO
        DEX                 ; DISPLAY
        BNE     DROL        ;
        ORA     DIS3
        STA     DIS3
        STA     SQUARE
        RTS 
;       
;       THE FOLLOWING SUBROUTINE ASSIGNS
;       A VALUE TO THE MOVE UNDER
;       CONSIDERATION AND RETURNS IT IN
;       THE ACCUMULATOR
;       

STRATGY CLC 
        LDA     #$80
        ADC     WMOB        ; PARAMETERS
        ADC     WMAXC       ; WITH WEIGHT
        ADC     WCC         ; OF 0.25
        ADC     WCAP1
        ADC     WCAP2
        SEC 
        SBC     PMAXC
        SBC     PCC
        SBC     BCAP0
        SBC     BCAP1
        SBC     BCAP2
        SBC     PMOB
        SBC     BMOB
        BCS     POS         ; UNDERFLOW
        LDA     #$00        ; PREVENTION
POS     LSR 
        CLC                 ; **************
        ADC     #$40
        ADC     WMAXC       ; PARAMETERS
        ADC     WCC         ; WITH WEIGHT
        SEC                 ; OF 0.5
        SBC     BMAXC
        LSR                 ; **************
        CLC 
        ADC     #$90
        ADC     WCAP0       ; PARAMETERS
        ADC     WCAP0       ; WITH WEIGHT
        ADC     WCAP0       ; OF 1.0
        ADC     WCAP0
        ADC     WCAP1
        SEC                 ; [UNDER OR OVER-
        SBC     BMAXC       ; FLOW MAY OCCUR
        SBC     BMAXC       ; FROM THIS
        SBC     BMCC        ; SECTION]
        SBC     BMCC
        SBC     BCAP1
        LDX     SQUARE      ; ***************
        CPX     #$33
        BEQ     POSN        ; POSITION
        CPX     #$34        ; BONUS FOR
        BEQ     POSN        ; MOVE TO
        CPX     #$22        ; CENTRE
        BEQ     POSN        ; OR
        CPX     #$25        ; OUT OF
        BEQ     POSN        ; BACK RANK
        LDX     PIECE
        BEQ     NOPOSN
        LDY     BOARD,X
        CPY     #$10
        BPL     NOPOSN
POSN    CLC
        ADC     #$02
NOPOSN  JMP     CKMATE      ; CONTINUE


;-----------------------------------------------------------------
; The following routines were added to allow text-based board
; display over a standard RS-232 port.
;
POUT    JSR     pout9       ; print CRLF
        JSR     pout13      ; print copyright
        JSR     POUT10      ; print column labels
        LDY     #$00        ; init board location
        JSR     POUT5       ; print board horz edge
POUT1   lDA     #"|"        ; print vert edge
        JSR     syschout    ; PRINT ONE ASCII CHR - SPACE
        LDX     #$1F
POUT2   TYA                 ; scan the pieces for a location match
        CMP     BOARD,X     ; match found?
        BEQ     POUT4       ; yes; print the piece's color and type
        DEX                 ; no
        BPL     POUT2       ; if not the last piece, try again
        TYA                 ; empty square  
        AND     #$01        ; odd or even column?               
        STA     temp        ; save it
        TYA                 ; is the row odd or even
        LSR                 ; shift column right 4 spaces 
        LSR                 ;
        LSR                 ;
        LSR                 ;
        AND     #$01        ; strip LSB  
        CLC
        ADC     temp        ; combine row & col to determine square color  
        AND     #$01        ; is board square white or blk?
        BEQ     pout25      ; white, print space
        LDA     #"*"        ; black, print *
        .DB     $2c         ; used to skip over LDA #$20
POUT25  LDA     #$20        ; ASCII space
        JSR     syschout    ; PRINT ONE ASCII CHR - SPACE
        JSR     syschout    ; PRINT ONE ASCII CHR - SPACE
POUT3   INY                 ; 
        TYA                 ; get row number
        AND     #$08        ; have we completed the row?     
        BEQ     POUT1       ; no, do next column
        LDA     #"|"        ; yes, put the right edge on
        JSR     syschout    ; PRINT ONE ASCII CHR - |             
        JSR pout12          ; print row number
        JSR     POUT9       ; print CRLF
        JSR     POUT5       ; print bottom edge of board
        CLC                 ; 
        TYA                 ; 
        ADC     #$08        ; point y to beginning of next row
        TAY                 ;
        CPY     #$80        ; was that the last row?
        BEQ     POUT8       ; yes, print the LED values
        BNE     POUT1       ; no, do new row

POUT4   LDA     REV         ; print piece's color & type
        BEQ     POUT41      ;
        LDA     cpl+16,X    ;
        BNE     POUT42      ;
POUT41  LDA     cpl,x       ;
POUT42  JSR     syschout    ;
        LDA     cph,x       ;
        JSR     syschout    ; 
        BNE     POUT3       ; branch always

POUT5   TXA                 ; print "-----...-----<crlf>"
        PHA
        LDX     #$19
        LDA     #"-"
POUT6   JSR     syschout    ; PRINT ONE ASCII CHR - "-"
        DEX
        BNE     POUT6
        PLA
        TAX
        JSR     POUT9
        RTS         

POUT8   JSR     pout10      ; 
        LDA     $FB
        JSR     hexout      ; PRINT 1 BYTE AS 2 HEX CHRS    
        LDA     #$20
        JSR     syschout    ; PRINT ONE ASCII CHR - SPACE
        LDA     $FA
        JSR     hexout      ; PRINT 1 BYTE AS 2 HEX CHRS    
        LDA     #$20
        JSR     syschout    ; PRINT ONE ASCII CHR - SPACE
        LDA     $F9
        JSR     hexout      ; PRINT 1 BYTE AS 2 HEX CHRS    

POUT9   LDA     #$0D
        JSR     syschout    ; PRINT ONE ASCII CHR - CR
        LDA     #$0A
        JSR     syschout    ; PRINT ONE ASCII CHR - LF
                RTS 

pout10  LDX     #$00        ; print the column labels
POUT11  LDA     #$20        ; 00 01 02 03 ... 07 <CRLF>
        JSR     syschout
        TXA
        JSR     hexout
        INX
        CPX     #$08
        BNE     POUT11
        BEQ     POUT9
POUT12  TYA
        AND     #$70
        JSR     hexout
        RTS

Pout13  LDX     #$00        ; Print the copyright banner
Pout14  LDA     banner,x
        BEQ     POUT15
        JSR     syschout
        inx
        bne     POUT14
POUT15  RTS         

KIN     LDA     #"?"
        JSR     syschout    ; PRINT ONE ASCII CHR - ?
        JSR     syskin      ; GET A KEYSTROKE FROM SYSTEM
        AND     #$4F        ; MASK 0-7, AND ALPHA'S
        RTS
;
; 6551 I/O Support Routines
;
;
Init_6551      LDA   #$1F               ; 19.2K/8/1
               STA   ACIActl            ; control reg 
               LDA   #$0B               ; N parity/echo off/rx int off/ dtr active low
               STA   ACIAcmd            ; command reg 
               RTS                      ; done
;
; input chr from ACIA1 (waiting)
;
syskin         LDA   ACIASta            ; Serial port status             
               AND   #$08               ; is recvr full
               BEQ   syskin             ; no char to get
               Lda   ACIAdat            ; get chr
               RTS                      ;
;
; output to OutPut Port
;
syschout       PHA                      ; save registers
ACIA_Out1      LDA   ACIASta            ; serial port status
               AND   #$10               ; is tx buffer empty
               BEQ   ACIA_Out1          ; no
               PLA                      ; get chr
               STA   ACIAdat            ; put character to Port
               RTS                      ; done

hexout  PHA                 ;  prints AA hex digits
        LSR                 ;  MOVE UPPER NIBBLE TO LOWER
        LSR
        LSR
        LSR
        JSR     PrtHex
        PLA
PrtHex  AND     #$0F        ;  prints A hex nibble (low 4 bits)
;       PHY                 ; Push Y to stack (65c02)
        STA     temp2       ; Save accumulator 
        TYA                 ; Y->A
        PHA                 ; A->S
        LDA     temp2       ; Restore accumulator

        TAY
        LDA     Hexdig,Y

        STA     temp2       ; Save accumulator
        PLA
        TAY
;       PLY                 ; Pull Y from stack (65c02)    
        LDA     temp2       ; Restore accumulator
        JMP     syschout

Hexdig  .AS     "0123456789ABCDEF"
banner  .AS     "MicroChess (c) 1996-2005 Peter Jennings, www.benlo.com"
        .DB     $0d, $0a, $00
cpl     .AS     "WWWWWWWWWWWWWWWWBBBBBBBBBBBBBBBBWWWWWWWWWWWWWWWW"
cph     .AS     "KQRRBBNNPPPPPPPPKQRRBBNNPPPPPPPP"
        .DB     $00
;
; end of added code
;
