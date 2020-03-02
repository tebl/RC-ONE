        .CR     6502
        .TF     microchess.hex,hex
        .LF     microchess.list
;
; Microchess, originally written by Peter Jennings for the KIM-1 computer and
; then later changed by Daryl Rictor for use with a 6551-based serial card.
; I've made slight alterations to the code to make it asseble correctly with
; SB-Assembler 3 as well as replaced a few 65c02 instructions to restore 
; NMOS 6502 compatibility.
;
ACIA    .EQ     $7F70

        .OR     0200
        .TA     0200
        .IN     game.asm
        .NO     $0600,$FF
        .IN     data.asm