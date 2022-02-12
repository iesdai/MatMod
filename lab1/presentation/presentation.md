---
# Front matter
lang: ru-RU
title: Защита лабораторной работы №1. Использование git
author: "Исаханян Эдуард Тигранович"
group: NFIbd-01-19
institute: RUDN University, Moscow, Russian Federation
date: 2022 Feb 11th

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

# Результат выполнения лабораторной работы №1  
## Цель  
Цель данной работы является изучение основ git.  

## Задачи  
- Научится создавать и изменять проекты;  
- Научится индексировать и удалять изменения;  
- Научится добавлять, удалять и изменять коммиты;  
- Научится перемещать файлы;  
- Научится создавать новые ветки и перемещаться по веткам;  
- Научится слиять, решать конфликты при слиянии и перебазировать ветки;  
- Научится клонировать репозитории и создавать чистые репозитории.  

## Результаты
- Научились создавать и изменять проекты;
- Научились индексировать и удалять изменения;
- Научились добавлять, удалять и изменять коммиты;
- Научились перемещать файлы;
- Научились создавать новые ветки и перемещаться по веткам;
- Научились слиять, решать конфликты при слиянии и перебазировать ветки;
- Научились клонировать репозитории и создавать чистые репозитории.  
