cd C:\NASM
nasm boot.asm -f bin -o boot.bin
C:/qemu/qemu-system-i386 boot.bin
pause