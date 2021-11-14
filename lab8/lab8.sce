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
