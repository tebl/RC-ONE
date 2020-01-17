@echo off
sbasm.py 6530-003.asm
sbasm.py 6530-002.asm

copy /b 6530-003.bin+6530-002.bin "system.bin"

del "28c64.bin"
copy /b "blank_2k.bin"+"blank_2k.bin"+"blank_2k.bin"+"system.bin" "28c64.bin"

del "system.bin"
pause