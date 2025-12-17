@echo off
echo Compiling...
windres resource.rc -o .temp.o && gcc -Wall -Wextra -std=c99 -finput-charset=UTF-8 -fexec-charset=GBK -g -gdwarf-2 -O0 -o ech-win-gui.exe main.c .temp.o -luser32 -lkernel32 -lcomctl32 -lgdi32 -mwindows && del .temp.o

if exist ech-win-gui.exe (
    echo Compilation successful!
) else (
    echo Compilation failed!
)
pause