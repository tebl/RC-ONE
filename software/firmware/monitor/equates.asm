;
;       EQUATES
;       SET UP FOR 6530-002 I/O
;
SAD     .EQ     $1740       6530 A DATA
PADD    .EQ     SAD+1       6530 A DATA DIRECTION
SBD     .EQ     SAD+2       6530 B DATA
PBDD    .EQ     SAD+3       6530 B DATA DIRECTION
CLK1T   .EQ     SAD+4       DIV BY 1 TIME
CLK8T   .EQ     SAD+5       DIV BY 8 TIME
CLK64T  .EQ     SAD+6       DIV BY 64 TIME
CLKKT   .EQ     SAD+7       DIV BY 1024 TIME
CLKRDI  .EQ     SAD+7       READ TIME OUT BIT
CLKRDT  .EQ     SAD+6       READ TIME
;
;       MPU REG. SAVX AREA IN PAGE 0        
;
PCL     .EQ     $EF         PROGRAMCOUNTER LO
PCH     .EQ     $F0         PROGRAMCOUNTER HI
PREG    .EQ     $F1         CURRENT STATUS REG
SPUSER  .EQ     $F2         CURRENT STACK POINTER
ACC     .EQ     $F3         ACCUMULATOR
YREG    .EQ     $F4         Y INDEX
XREG    .EQ     $F5         X INDEX
;
;       KIM FIXED AREA IN PAGE 0
;
CHKHI   .EQ     $F6
CHKSUM  .EQ     $F7
INL     .EQ     $F8         INPUT BUFFER LO
INH     .EQ     $F9         INPUT BUFFER HI
POINTL  .EQ     $FA         LSB OF OPEN CELL
POINTH  .EQ     $FB         MSB OF OPEN CELL
TEMP    .EQ     $FC
TMPX    .EQ     $FD
CHAR    .EQ     $FE
MODE    .EQ     $FF
;
;       KIM FIXED AREA IN PAGE 23
;
CHKL    .EQ     $17E7
CHKH    .EQ     CHKL+1      CHKSUM
SAVX    .EQ     CHKL+2
VEB     .EQ     CHKL+5      VOLATILE EXECUTION BLOCK    
CNTL30  .EQ     CHKL+11     TTY DELAY
CNTH30  .EQ     CHKL+12     TTY DELAY    
TIMH    .EQ     CHKL+13
SAL     .EQ     CHKL+14     STARTING ADDRESS LO
SAH     .EQ     CHKL+15     STARTING ADDRESS HI
EAL     .EQ     CHKL+16     ENDING ADDRESS LO
EAH     .EQ     CHKL+17     ENDING ADDRESS HI
ID      .EQ     CHKL+18     TAPE PROGRAM ID NUMBER
;
;       INTERRUPT VECTORS
;
NMIV    .EQ     CHKL+19     STOP VECTOR (STOP=1C00)
RSTV    .EQ     CHKL+21     RST VECTOR
IRQV    .EQ     CHKL+23     IRQ VECTOR (BRK=1C00)