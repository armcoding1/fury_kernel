[bits 32]
[global _start]

_start:
    mov ax, 0xB800
    mov es, ax
    mov di, 0x0000
    mov al, 'H'
    mov ah, 0x0F
    mov [es:di], ax
    inc di
    mov al, 'e'
    mov [es:di], ax
    inc di
    mov al, 'l'
    mov [es:di], ax
    inc di
    mov al, 'l'
    mov [es:di], ax
    inc di
    mov al, 'o'
    mov [es:di], ax
    inc di
    mov al, 0x0A
    mov [es:di], ax
    inc di

hang:
    jmp hang