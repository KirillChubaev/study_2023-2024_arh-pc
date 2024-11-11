%include 'in_out.asm'
SECTION .data
msg: DB 'Введите значение x: ',0
rem: DB 'Результат f(x): ',0

SECTION .bss
x: RESB 80

SECTION .text
GLOBAL _start
_start:

mov eax, msg
call sprintLF

mov ecx, x
mov edx, 80
call sread

mov eax,x
call atoi 

; Вычисление f(x) = ((x / 2) + 8) * 3
xor edx, edx
mov ebx, 2
div ebx ; eax = x / 2, edx = остаток от деления
add eax, 8
imul eax, 3
mov [x], eax

mov eax,rem
call sprint
mov eax,[x]
call iprintLF

call quit
