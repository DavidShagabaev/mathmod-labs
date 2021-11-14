---
## Front matter
lang: ru-RU
title: Лабораторная работа №3
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

Между страной Х и страной У идет война. Численность состава войск исчисляется от начала войны, и являются временными функциями x(t) и y(t). В начальный момент времени страна Х имеет армию численностью 25 000 человек, а в распоряжении страны У армия численностью в 39 000 человек. Для упрощения модели считаем, что коэффициенты a, b, c, h постоянны. Также считаем P(t) и Q (t) непрерывные функции. Постройте графики изменения численности войск армии Х и армии У для следующих случаев: 

# Ход выполнения работы

## Этапы 

1. выполнение работы

2. код


## выполнение работы

1. Модель боевых действий между регулярными войсками
2. Модель ведение боевых действий с участием регулярных войск и партизанских отрядов

## код.

x0=25000;
 y0=39000;
 v0=[x0;y0];

 c=0.55;
 a=0.441;

 function p=P(t)
 p=sin(2*t)+1;
 endfunction

 b=0.773;
 d=0.664;

 function q=Q(t)
 q=cos(2*t)+1;
 endfunction

 c_G=0.299;
 a_G=0.399;

 function p=P_G(t)
 p=sin(2*t)+2;
 endfunction

 b_G=0.688;
 d_G=0.811;

 function q=Q_G(t)
 q=cos(3*t)+1;
 endfunction

 t0=0;
 dt=0.05;
 tmax=1;
 t=t0:dt:tmax;

 function dy=f_y(t,y)
 dy(1)=-a*y(1)-b*y(2)+P(t);
 dy(2)=-c*y(1)-d*y(2)+Q(t);
 endfunction

 y=ode(v0,t0,t,f_y);

 function dy=f_y_G(t,y_G)
 dy(1)=-a_G*y_G(1)-b_G*y_G(2)+P_G(t);
 dy(2)=-c_G*y_G(1)*y_G(2)-d_G*y_G(2)+Q_G(t);
 endfunction

 y_G=ode(v0,t0,t,f_y_G);

 //Graphic
 plot2d(t,y(1,:),style=color('blue'));
 plot2d(t,y(2,:),style=color('red'));

 plot2d(t,y_G(1,:),style=color('green'));
 plot2d(t,y_G(2,:),style=color('yellow'));

 xtitle('Модель боевых действий','Шаг','Численность армии');
 xgrid();

# Вывод

задача выполнена.


## {.standout}

Спасибо за внимание!
