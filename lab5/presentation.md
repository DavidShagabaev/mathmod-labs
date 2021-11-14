---
## Front matter
lang: ru-RU
title: Лабораторная работа №5
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

Постройте график зависимости численности хищников от численности жертв, а также графики изменения численности хищников и численности жертв при следующих начальных условиях: x(0)=7, y(0)=21. Найдите стационарное состояние системы.

# Ход выполнения работы

## Этапы 

1. выполнение работы

2. код


## выполнение работы

![image-20211113213659548](C:\Users\DavidSh\AppData\Roaming\Typora\typora-user-images\image-20211113213659548.png)

## код.

a=0.28; 
 b=0.29; 
 c=0.028; 
 d=0.029; 

 t=[0:0.1:400]; 
 x0y0=[21;7]; 

 function dxdy=x_der(t,x) 
   dxdy(1)=b*x(1)-d*x(1)*x(2); 
   dxdy(2)=-a*x(2)+c*x(1)*x(2); 
 endfunction 

 x=ode(x0y0,0,t,x_der); 

 n=size(x,"c"); 
 for i=1:n 
   x_der1(i)=x(1,i); 
   x_der2(i)=x(2,i); 
 end 

 //plot(t,x_der1); 
 //plot(t,x_der2); 
 //plot(x_der1,x_der2);

# Вывод

задача выполнена.


## {.standout}

Спасибо за внимание!
