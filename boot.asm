; AliCanBoot

mov ah, 0x0E ;Yazı Girişi
mov al, 'A'
int 0x10
mov al, 'L'
int 0x10
mov al, 'I'
int 0x10
mov al, 'C'
int 0x10
mov al, 'A'
int 0x10
mov al, 'N'
int 0x10
; include değeri bitiş
; Bootloader
jmp $
times 510-($-$$) db 0
dw 0xAA55