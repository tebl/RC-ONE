@echo off
del "system.bin"
copy /b original\6530-003.bin+original\6530-002.bin "system.bin"

del "28c64.bin"
copy /b "original\blank_2k.bin"+"original\blank_2k.bin"+"original\blank_2k.bin"+"system.bin" "28c64.bin"

del "28c64_65K.bin"
copy /b "original\blank_2k.bin"+"original\blank_2k.bin"+"original\blank_2k.bin"+"system.bin" "28c64_65K.bin"

del "system.bin"
pause