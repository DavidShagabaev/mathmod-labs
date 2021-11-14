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
