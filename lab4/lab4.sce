//(певрый случай)
//G=0.0; 
//W=1.7;
//function f=f(t)
//    f=sin(0.0.*t);
//endfunction

//(второй случай)
//G=1.7;
//W=1.7;
//function f=f(t)
//    f=sin(0.0.*t);
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
