; Program: exit using gcc
;
; Executes a system call with no input
;
; Output: only the exit status ($? in shell)
;
    segment .text
    global main

main:
    mov eax,1    ; 1 is the exit syscall number
    mov ebx,5    ; the status value to return
    int 0x80     ; execute a system call
