---
## Front matter
lang: ru-RU
title: Лабораторная работа №7
author: |
	Шагабаев Д.А\inst{1}
institute: |
	\inst{1}RUDN University, Moscow, Russian Federation
date: 2021 Moscow, Russia

## Formatting
toc: false
slide_level: 2
theme: metropolis
header-includes: 
 - \metroset{progressbar=frametitle,sectionpage=progressbar,numbering=fraction}
 - '\makeatletter'
 - '\beamer@ignorenonframefalse'
 - '\makeatother'
aspectratio: 43
section-titles: true
---

# Цели 

## Вариант 51

Постройте график распространения рекламы, математическая модель которой описывается следующим уравнением:

При этом объем аудитории N = 1420 , в начальный момент о товаре знает 12 человек. Для случая 2 определите в какой момент времени скорость распространения рекламы будет иметь максимальное значение.

# Ход выполнения работы

## Этапы 


## выполнение работы

![image-20211113213936111](C:\Users\DavidSh\AppData\Roaming\Typora\typora-user-images\image-20211113213936111.png)

## код.

N=1420;

x0=12;

t=0:0.1:30;

function **g**=k(**t**);

  *//g=0.7;//(первый случай)*

  *//g=0.00003;//(второй случай)*

  **g**=0.57*sin(**t**);*//(третий случай)*

endfunction

function **v**=p(**t**);

  *//v=0.000012;//(первый случай)*

  *//v=0.5;//(второй случай)*

  **v**=0.38*cos(13***t**);*//(третий случай)*

endfunction

function **xd**=f(**t**, **x**);

  **xd**=(k(**t**)+p(**t**)***x**)*(N-**x**);

endfunction

x=ode(x0, 0, t, f);

plot(t,x);

# Вывод

задача выполнена.


## {.standout}

Спасибо за внимание!
