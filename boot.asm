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

;Alternatif Kod

; AliCanBoot
BITS 16
start:
mov ax, 07C0h
add ax, 288
mov ss, ax
mov sp, 4096
mov ax, 07C0h
mov ds, ax
mov si, metin_giris

;Yazıyı gir
call yazdir_yazi
metin_giris db 'ALICAN', 0

yazdir_yazi:
mov ah, 0Eh

.tekrar:
lodsb
cmp al, 0
je .bitti
int 10h
jmp .tekrar

.bitti
ret

; Bootloader
times 510-($-$$) db 0
dw 0xAA55
