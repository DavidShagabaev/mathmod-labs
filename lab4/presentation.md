---
## Front matter
lang: ru-RU
title: Лабораторная работа №4
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

Постройте фазовый портрет гармонического осциллятора и решение уравнения гармонического осциллятора для следующих случаев 

​       На интервале t∈[0; 59] (шаг 0.05) с начальными условиями x(0)=1.7, y(0)=-0.2

# Ход выполнения работы

## Этапы 

1. выполнение работы

2. код


## выполнение работы

1. Колебания гармонического осциллятора без затуханий и без действий внешней силы x"+1.7x=0

2. Колебания гармонического осциллятора c затуханием и без действий внешней силы x"+1.7x'+1.7x=0

3. Колебания гармонического осциллятора c затуханием и под действием внешней силы x"+2x'+1.7x=0.7cos(2.7t)

## код.

//(певрый случай)
 //G=0.0; 
 //W=1.7;
 //function f=f(t)
 //  f=sin(0.0.*t);
 //endfunction

 //(второй случай)
 //G=1.7;
 //W=1.7;
 //function f=f(t)
 //  f=sin(0.0.*t);
 //endfunction

 //(третий случай)
 G=2.0;
 W=1.7;

 function f=f(t)
   f=0.7*cos(2.7.*t);
 endfunction

 function dx=y(t,x)
   dx(1)=x(2);
   dx(2)=-W.*W.*x(1)-G.*x(2)-f(t);
 endfunction

 t=[0:0.05:59];

 x0y0=[1.7;-0.2];

 x=ode(x0y0, 0, t, y);

 n=size(x, "c");

 for i=1:n
   y1(i)=x(1,i);
   y2(i)=x(2,i);
 end

 plot(y1,y2);
 xgrid();

# Вывод

задача выполнена.


## {.standout}

Спасибо за внимание!
