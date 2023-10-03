section .data
    hello db 'Hello, World!', 0   ; Null-terminated string to be printed
    hello_len equ $ - hello        ; Compute the length of the string

section .text
    global _start                  ; Entry point for the program

_start:
    ; write(STDOUT, hello, hello_len)
    mov rax, 1                     ; The syscall number for sys_write (1)
    mov rdi, 1                     ; File descriptor STDOUT
    mov rsi, hello                 ; Pointer to the string to be printed
    mov rdx, hello_len             ; Length of the string
    syscall                        ; Invoke syscall

    ; exit(0)
    mov rax, 60                    ; The syscall number for sys_exit (60)
    xor rdi, rdi                   ; Status 0
    syscall                        ; Invoke syscall
