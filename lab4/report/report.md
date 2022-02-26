---
# Front matter
title: "Отчет по лабораторной работе №4"
subtitle: "Модель гармонических колебаний"
author: "Исаханян Эдуард Тигранович"
group: NFIbd-01-19
institute: RUDN University, Moscow, Russian Federation
date: 2022 Feb 25th

# Generic otions
lang: ru-RU
toc-title: "Содержание"

# Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

# Pdf output format
toc: true # Table of contents
toc_depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
### Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
- parentracker=true
- backend=biber
- hyperref=auto
- language=auto
- autolang=other*
- citestyle=gost-numeric
## Misc options
indent: true
header-includes:
- \linepenalty=10 # the penalty added to the badness of each line within a paragraph (no associated penalty node) Increasing the value makes tex try to have fewer lines in the paragraph.
- \interlinepenalty=0 # value of the penalty (node) added after each line of a paragraph.
- \hyphenpenalty=50 # the penalty for line breaking at an automatically inserted hyphen
- \exhyphenpenalty=50 # the penalty for line breaking at an explicit hyphen
- \binoppenalty=700 # the penalty for breaking a line at a binary operator
- \relpenalty=500 # the penalty for breaking a line at a relation
- \clubpenalty=150 # extra penalty for breaking after first line of a paragraph
- \widowpenalty=150 # extra penalty for breaking before last line of a paragraph
- \displaywidowpenalty=50 # extra penalty for breaking before last line before a display math
- \brokenpenalty=100 # extra penalty for page breaking after a hyphenated line
- \predisplaypenalty=10000 # penalty for breaking before a display
- \postdisplaypenalty=0 # penalty for breaking after a display
- \floatingpenalty = 20000 # penalty for splitting an insertion (can only be split footnote in standard LaTeX)
- \raggedbottom # or \flushbottom
- \usepackage{float} # keep figures where there are in the text
- \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы  

Цель данной лабораторной работы научиться строить модели гармонических колебаний на примере линейного гармонического осциллятора. Построить фазовый портрет гармонического осциллятора. Решить уравнения гармонического осциллятора.  


# Задание  

Построить фазовый портрет гармонического осциллятора и решение уравнения гармонического осциллятора для следующих случаев

1. Колебания гармонического осциллятора без затуханий и без действий внешней силы $\ddot {x} + 1.5x = 0$
2. Колебания гармонического осциллятора c затуханием и без действий внешней силы $\ddot {x} + \dot {x} + 10x = 0$
3. Колебания гармонического осциллятора c затуханием и под действием внешней силы $\ddot {x} + \dot {x} + 11x = 2sin(t)$  
На интервале $t \in [0; 60]$(шаг 0.05) с начальными условиями $x_0 = 0, y_0 = 0$  

# Теоретическое введение  

Уравнение свободных колебаний гармонического осциллятора имеет следующий вид:  
$$ \ddot {x} + 2 \gamma \dot {x} + w_0^2x = f(t) $$   
$x$ — переменная, описывающая состояние системы (смещение грузика, заряд конденсатора и т.д.)  
$t$ — время  
$w$ — частота  
$\gamma$ — затухание  
При отсутствии потерь в системе получаем уравнение консервативного осциллятора, энергия колебания которого сохраняется во времени:  
$$ \ddot {x} + w_0^2x = 0 $$  
Для однозначной разрешимости уравнения второго порядка необходимо задать два начальных условия вида:  
$$ \left\{ 
\begin{array}{c}
x(t_0) = x_0 \\ 
\dot{x}(t_0) = y_0 
\end{array} 
\right. $$  
Уравнение второго порядка можно представить в виде системы двух уравнений первого порядка:  
$$ \left\{ 
\begin{array}{c} 
\dot{x} = y \\ 
\dot{y} = -w_0^2x 
\end{array} 
\right.$$  
Начальные условия для системы примут вид:  
$$ \left\{ 
\begin{array}{c} 
x(t_0) = x_0 \\ 
y(t_0) = y_0 
\end{array} 
\right.$$  
Независимые переменные x, y определяют пространство, в котором «движется» решение. Это фазовое пространство системы, поскольку оно двумерно будем называть его фазовой плоскостью.  
Значение фазовых координат x, y в любой момент времени полностью определяет состояние системы. Решению уравнения движения как функции времени отвечает гладкая кривая в фазовой плоскости. Она называется фазовой траекторией. Если множество различных решений (соответствующих различным начальным условиям) изобразить на одной фазовой плоскости, возникает общая картина поведения системы. Такую картину, образованную набором фазовых траекторий, называют фазовым портретом.  

# Выполнение лабораторной работы  

1. Напишем код для случая колебания гармонического осциллятора без затуханий и без действий внешней силы.  
   ![Код 1 случая](images/image1.png){ #fig:001 width=70% }  
2. Решение уравнения гармонического осциллятора для колебания гармонического осциллятора без затуханий и без действий внешней силы.   
   ![График 1 случая](images/image2.png){ #fig:002 width=70% }  
3. Фазовый портрет гармонического осциллятора для колебания гармонического осциллятора без затуханий и без действий внешней силы.  
   ![Фазовый портрет 1 случая](images/image3.png){ #fig:003 width=70% }  
4. Напишем код для случая колебания гармонического осциллятора с затуханием и без действий внешней силы.  
   ![Код 2 случая](images/image4.png){ #fig:004 width=70% }  
5. Решение уравнения гармонического осциллятора для колебания гармонического осциллятора с затуханием и без действий внешней силы.   
   ![График 2 случая](images/image5.png){ #fig:005 width=70% }  
6. Фазовый портрет гармонического осциллятора для колебания гармонического осциллятора с затуханием и без действий внешней силы.  
   ![Фазовый портрет 2 случая](images/image6.png){ #fig:006 width=70% }  
7. Напишем код для случая колебания гармонического осциллятора с затуханием и под действием внешней силы.  
   ![Код 3 случая](images/image7.png){ #fig:007 width=70% }  
8. Решение уравнения гармонического осциллятора для колебания гармонического осциллятора с затуханием и под действием внешней силы.   
   ![График 3 случая](images/image8.png){ #fig:008 width=70% }  
9. Фазовый портрет гармонического осциллятора для колебания гармонического осциллятора с затуханием и под действием внешней силы.  
   ![Фазовый портрет 3 случая](images/image9.png){ #fig:009 width=70% }  

# Ответы на вопросы   

### Запишите простейшую модель гармонических колебаний  
$x = x_m cos (ωt + φ0)$ - простейшая модель гармонических колебаний.  

### Дайте определение осциллятора  
Осциллятор - модель, которую в теории колебаний можно описать одним и тем же дифференциальным уравнением.  

### Запишите модель математического маятника  

Период колебаний математического маятника выражается по формуле:  
$$ T = 2 \pi \sqrt(\frac{L}{g})$$  
где:  
L -  длина нити маятника.  
g - ускорение свободного падения.  

### Запишите алгоритм перехода от дифференциального уравнения второго порядка к двум дифференциальным уравнениям первого порядка  
Пусть у нас есть дифференциальное уравнение 2-го порядка:  
$\ddot {x} + \dot {x} + 11x = 2sin(t)$ 

По методу Ранге-Кутты делаем замену, а также переносим $\dot {x} + 11x$ в правую часть:  
$$ \dot {x} = y $$  

Тогда получим систему уравнений:  
$$ \left\{
\begin{array}{c}
\dot {x} = y \\
y = -y - 11x -2sin(t) \\
\end{array}
\right.$$

### Что такое фазовый портрет и фазовая траектория?  
Фазовый портрет — это совокупность фазовых траекторий для всевозможных начальных условий.  

Фазовая траектория — траектория движения изображающей точки, сопоставленной изменению состояний системы.  

# Выводы  

В ходе работы, мы научились строить модели гармонических колебаний на примере линейного гармонического осциллятора.
Построили фазовый портрет гармонического осциллятора и решили уравнения гармонического осциллятора для случаев:

1. Колебания гармонического осциллятора без затуханий и без действий внешней силы.
2. Колебания гармонического осциллятора c затуханием и без действий внешней силы.
3. Колебания гармонического осциллятора c затуханием и под действием внешней силы.

# Список литературы{.unnumbered}  
1. Методические материалы к лабораторной работе, представленные на сайте "ТУИС РУДН" https://esystem.rudn.ru/  
   ::: {#refs}
   :::