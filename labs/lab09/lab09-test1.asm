%include 'in_out.asm'

SECTION .data
prim DB 'f(x)=7*(x+1)',0
otv DB 'Результат: ',0

SECTION .text
GLOBAL _start

_start:
    pop ecx              ; Получаем количество аргументов (argc)
    pop edx              ; Пропускаем имя программы (argv[0])
    sub ecx, 1           ; Уменьшаем счетчик аргументов (не учитываем имя программы)

    mov esi, 0           ; Инициализируем сумму результатом 0

    mov eax, prim        ; Выводим строку с описанием функции
    call sprintLF

next:
    cmp ecx, 0           ; Если больше нет аргументов, завершаем цикл
    jz _end

    pop eax              ; Получаем следующий аргумент (в ASCII)
    call atoi            ; Преобразуем его в число
    call resh
    add esi, eax         ; Добавляем результат к общей сумме

    loop next

_end:
    mov eax, otv         ; Выводим строку с результатом
    call sprint

    mov eax, esi         ; Выводим итоговую сумму
    call iprintLF

    call quit
    
    resh:
    add eax, 1           ; Вычисляем x + 1
    mov ebx, 7           ; Умножаем на 7
    mul ebx
    ret
