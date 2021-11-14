---
## Front matter
lang: ru-RU
title: Лабораторная работа №6
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

На одном острове вспыхнула эпидемия. Известно, что из всех проживающих на острове (N=8124) в момент начала эпидемии (t=0) число заболевших людей (являющихся распространителями инфекции) I(0)=124, А число здоровых людей с иммунитетом к болезни R(0)=30. Таким образом, число людей восприимчивых к болезни, но пока здоровых, в начальный момент времени S(0)=N-I(0)- R(0). Постройте графики изменения числа особей в каждой из трех групп. Рассмотрите, как будет протекать эпидемия в случае: 

# Ход выполнения работы

## Этапы 

1. выполнение работы

2. код


## выполнение работы

1. если I(0)=<I

2. если I(0)>I

## код.

a=0.01; 
 b=0.02; 
 N=8124; 
 I0=124; 
 R0=30; 
 S0=N-I0-R0; 
 t=0:0.01:200; 
 x0y0=[S0;I0;R0]; 

 function dxdy=x_der(t,x) 
   dxdy(1)=0; 
   dxdy(2)=-b*x(2); 
   dxdy(3)=b*x(2); 
 endfunction 

 x=ode(x0y0, 0, t, x_der); 


 function dxdy=y_der(t,x) 
   dxdy(1)=-a*x(1); 
   dxdy(2)=a*x(1)-b*x(2); 
   dxdy(3)=b*x(2); 
 endfunction 

 y=ode(x0y0, 0, t, y_der); 

 plot(t,y); 

 h1=legend(['Возможные больные';'Заболели';'Вылечились']);

# Вывод

задача выполнена.


## {.standout}

Спасибо за внимание!
