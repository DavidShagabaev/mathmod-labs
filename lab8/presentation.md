---
## Front matter
lang: ru-RU
title: Лабораторная работа №8
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

Рассмотрим две фирмы, производящие взаимозаменяемые товары одинакового качества и находящиеся в одной рыночной нише. Считаем, что в рамках нашей модели конкурентная борьба ведётся только рыночными методами. То есть, конкуренты могут влиять на противника путем изменения параметров своего производства: себестоимость, время цикла, но не могут прямо вмешиваться в ситуацию на рынке («назначать» цену или влиять на потребителей каким-либо иным способом.) 

# Ход выполнения работы

## Этапы 


## выполнение работы

в первом случае R=0

во втором случае R=0,00041

## код.

t=0:0.01:30; 

 //R=0;(первый случай) 
 R=0.00041;//(второй случай) 

 x0=[8;10]; 
 p_cr=50; 
 V=50; 
 q=1; 
 tau1=36; 
 tau2=30; 
 p1=10; 
 p2=12; 

 a1=p_cr/(tau1*tau1* p1*p1* V* q); 
 a2=p_cr/(tau2*tau2* p2*p2* V* q); 
 b=p_cr/(tau1*tau1*tau2*tau2* p1*p1* p2*p2* V * q); 
 c1=(p_cr-p1)/(tau1*p1); 
 c2=(p_cr-p2)/(tau2*p2); 

 function dxdy=syst(t, x) 
   dxdy(1)= x(1)-((b/c1)+R)* x(1)*x(2)-(a1/c1)* x(1)*x(1); 
   dxdy(2)= (c2/c1)*x(2)-(b/c1)*x(1)*x(2)-(a2/c1)*x(2)*x(2); 
 endfunction 
 x=ode(x0, 0, t, syst); 

 plot(t, x);

# Вывод

задача выполнена.


## {.standout}

Спасибо за внимание!
