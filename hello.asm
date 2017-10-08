; 
;Hello World! in assembly. Some nerds told me this is an impressive thing to do
;so here we go.
;

section .data
    hello       db  `Hello, world!\n`    
    processor   db  `Mmm so efficient.\n`

section .text
    global _start

_start:
    mov rax,    1       ;syswrite system call (syswrite(fd, buf, count)).
    mov rdi,    1       ;first argument of syswrite - stdout.
    mov rsi,    hello   ;second argument - output buffer.
    mov rdx,    14      ;third argument - string length.
    syscall             ;finally, call the function.      

    mov rax,    1
    mov rdi,    1
    mov rsi,    processor
    mov rdx,    18
    syscall

    mov rax,    60      ;exit syscall.
    mov rdi,    0       
    syscall             ;execute exit.
