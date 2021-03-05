mov  ah, 0x0e

mov al, 'H'
int 0x10
mov al, 'E'
int 0x10
mov al, 'L'
int 0x10
mov al, 'L'
int 0x10
mov al, 'O'
int 0x10
mov al, '!'
int 0x10

; set vga memory
mov ax, 0xb800
mov ds, ax        ; 不允许直接把立即数赋给段寄存器

; set value to ds:0x00
mov byte [0x00], 0x41         ; A
mov byte [0x01], 0x04         ; black-red, no flicker

jmp $

times 510 - ($-$$)	db 0
dw 0xaa55