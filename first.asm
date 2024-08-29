global _start

extern WriteFile
extern GetStdHandle

section .data
msg: db "Hello Uzbekistan!", 10 

section .text
_start:
    sub rsp, 40
    mov rcx, -11
    call GetStdHandle
    mov rcx, rax
    mov rdx, msg
    mov r8d, 17
    xor r9, r9
    mov qword[rsp + 32], 0
    call WriteFile
    add rsp, 40
    mov rax, 69
    ret