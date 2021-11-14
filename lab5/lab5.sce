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
