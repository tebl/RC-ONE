CHR     .EQ     $D0         ; INCOMING DATA BUFFER
POS     .EQ     $D1         ; STRING POSITION
POINTL  .EQ     $FA         ; ADDRESS_L ON DISPLAY
POINTH  .EQ     $FB         ; ADDRESS_H ON DISPLAY
INH     .EQ     $F9         ; INPUTBUFFER HIGH
SCANDS  .EQ     $1F1F       ; KIM-1 DISPLAY ROUTINE

AC_DAT  .EQ     ACIA        ; ACIA DATA
AC_STA  .EQ     ACIA+1      ;      STATUS
AC_CMD  .EQ     ACIA+2      ;      COMMAND
AC_CTL  .EQ     ACIA+3      ;      CONTROL

START   JSR     CLEARSS     ; CLEAR KIM-1 DISPLAY
        JSR     SCANDS      ; SHOW THE VALUES
        
        LDA     #0
        STA     AC_STA      ; RESET ACIA
        LDA     #%00001011  ; NO PARITY, NO ECHO, NO INTERRUPT
        STA     AC_CMD
        LDA     #%00011110  ; 8-N-1, 9600 BAUD
        STA     AC_CTL
        
WELCOME LDX     #$0
NEXTCHR JSR     WAITCLR
        LDA     TEXT,X      ; LOAD A CHR.
        BEQ     DONE        ; DONE YET?
        JSR     PUTBYTE     :  SEND CHARACTER
        INX                 ;  INCREMENT POSITION
        JMP     NEXTCHR     ; DO NEXT CHARACTER
DONE    LDA     #$0
        STA     CHR
        JSR     CLEARSS

ECHO    JSR     GETBYTE     ; GET A BYTE
        JSR     PUTBYTE     ; ECHO IT.
        JMP     ECHO        ; DO IT FOREVER.

WAITCLR LDA     AC_STA      ; GET STATUS
        AND     #%00010000  ; BUFFER FULL?
        BEQ     WAITCLR     ;  WAIT FOR TX BUFFER TO CLEAR
        RTS

GETBYTE LDA     AC_STA      ; GET STATUS
        AND     #%00001000  : BYTE WAITING?
        BNE     GOTBYTE     ;  YES, THEN PROCESS IT INSTEAD
DISPLAY LDA     CHR         ;  NO, OUTPUT OLD CHR ON DISPLAY
        STA     INH
        JSR     SCANDS
        JMP     GETBYTE     ; TRY AGAIN
GOTBYTE LDA     AC_DAT      ; RECEIVE CHARACTER
        RTS

PUTBYTE STA     CHR
        JSR     WAITCLR     ; WAIT FOR TX BUFFER TO CLEAR
        LDA     CHR         ; RESTORE CHR
        STA     AC_DAT      ; SEND CHR
        RTS

CLEARSS LDA     #0
        STA     INH
        LDA     #$AC
        STA     POINTH
        LDA     #$1A    
        STA     POINTL
        RTS

TEXT    .AS     "ECHO TEST"
        .HS     0D.0A.00