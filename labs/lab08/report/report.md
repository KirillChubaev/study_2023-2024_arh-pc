---
## Front matter
title: "Отчёт по лабораторной работе №8"
subtitle: "По теме: Программирование цикла. Обработка аргументов командной строки."
author: "Выполнил: Чубаев Кирилл Евгеньевич, НММбд-04-24"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: false
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Целью данной лабораторной работы является приобретение навыков написания программ с использованием циклов, а также обработки аргументов командной строки.

# Ход выполнения лабораторной работы

1. Сначала я создал каталог lab08 и файл lab8-1.asm:

![](image/image001.png)

2. Далее я ввёл текст первой программы с помощью листинга 8.1. Потом создал исполняемый файл и запустил его:

![](image/image002.png)
![](image/image003.png)

3. Я изменил текст программы, в теле цикла label добавил строку "sub eax, 1". Цикл закольцевался и стал бесконечным:

![](image/image004.png)
![](image/image005.png)

4. Далее изменил часть программы так, чтобы цикл и счетчик работал правильно. В итоге, после изменения кода программы, число проходки цикла стало соответствовать числу, введенному с клавиатуры:

![](image/image006.png)
![](image/image007.png)

5. Я создал файл lab8-2.asm и с помощью листинга 8.2 написал код программы, которая выводит в терминал все введённые ранее аргументы:

![](image/image008.png)
![](image/image009.png)

6. Потом создал исполняемый файл и запустил его. В результате программа вывела все 3 аргумента, которые были введены, но в разной вариации:

![](image/image010.png)

7. Я создал файл lab8-3.asm. Ввел текст программы с помощью листинга 8.3. Я создал исполняемый файл и запустил ее. Программа вывела в терминал сумму чисел, которые я написал ранее:

![](image/image011.png)
![](image/image012.png)

8. Далее изменил программу так, чтобы она выводила произведение введенных чисел. Затем я создал исполняемый файл и запустил его. В качестве проверки я ввел несколько комбинаций чисел. Программа работает корректно:

![](image/image013.png)
![](image/image014.png)
![](image/image015.png)

# Выполнение самостоятельной работы

1. Для выполнения самостоятельной работы сначала я создал файл lab8-test.asm:

![](image/image016.png)

2. Далее я написал программу, которая выводит сумму всех решений определённого выражения. В лабораторной работе №6 я получил 14 вариант, поэтому я написал код программы для функции f(x)=7*(x+1):

![](image/image017.png)
![](image/image018.png)

3. Затем я создал исполняемый файл и запустил программу. В качестве проверки работоспособности программы я ввел числа из примера (1, 2, 3, 4), а затем еще несколько комбинаций чисел. Программа работает исправно:

![](image/image019.png)

# Вывод

Во время выполнения данной лабораторной работы я приобрел полезные навыки написания программ с использованием цикла, а также обработки аргументов командной строки.

# Список литературы

1\. GDB: The GNU Project Debugger. — URL: https://www.gnu.org/software/gdb/.

2\. GNU Bash Manual. — 2016. — URL: https://www.gnu.org/software/bash/manual/.

3\. Midnight Commander Development Center. — 2021. — URL: https://midnight-commander.org/.

4\. NASM Assembly Language Tutorials. — 2021. — URL: https://asmtutor.com/.

5\. *Newham C.* Learning the bash Shell: Unix Shell Programming. — O’Reilly Media, 2005. — 354 с. — (In a Nutshell). — ISBN 0596009658. — URL: http://www.amazon.com/Learningbash-Shell-Programming-Nutshell/dp/0596009658.

6\. *Robbins A.* Bash Pocket Reference. — O’Reilly Media, 2016. — 156 с. — ISBN 978-1491941591.

7\. The NASM documentation. — 2021. — URL: https://www.nasm.us/docs.php.

8\. *Zarrelli G.* Mastering Bash. — Packt Publishing, 2017. — 502 с. — ISBN 9781784396879.

9\. *Колдаев В. Д.*, *Лупин С. А.* Архитектура ЭВМ. — М. : Форум, 2018.

10\. *Куляс О. Л.*, *Никитин К. А.* Курс программирования на ASSEMBLER. — М. : Солон-Пресс, 2017.

11\. *Новожилов О. П.* Архитектура ЭВМ и систем. — М. : Юрайт, 2016.

12\. Расширенный ассемблер: NASM. — 2021. — URL: https://www.opennet.ru/docs/RUS/nasm/.

13\. *Робачевский А.*, *Немнюгин С.*, *Стесик О.* Операционная система UNIX. — 2-е изд. — БХВ-Петербург, 2010. — 656 с. — ISBN 978-5-94157-538-1.

14\. *Столяров А.* Программирование на языке ассемблера NASM для ОС Unix. — 2-е изд. — М. : МАКС Пресс, 2011. — URL: http://www.stolyarov.info/books/asm\_unix.

15\. *Таненбаум Э.* Архитектура компьютера. — 6-е изд. — СПб. : Питер, 2013. — 874 с. — (Классика Computer Science).

16\. *Таненбаум Э.*, *Бос Х.* Современные операционные системы. — 4-е изд. — СПб. : Питер, 2015. — 1120 с. — (Классика Computer Science).


