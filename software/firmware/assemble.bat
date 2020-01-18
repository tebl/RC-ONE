@echo off
pushd monitor
call assemble.bat
popd
copy /b monitor\6530-003.bin+monitor\6530-002.bin "system.bin"

del "28c64.bin"
copy /b "blank_2k.bin"+"blank_2k.bin"+"blank_2k.bin"+"system.bin" "28c64.bin"

del "system.bin"
pause