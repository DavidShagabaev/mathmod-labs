N=1420;
x0=12;
t=0:0.1:30;
function g=k(t);
    //g=0.7;//(первый случай)
    //g=0.00003;//(второй случай)
    g=0.57*sin(t);//(третий случай)
endfunction

function v=p(t);
    //v=0.000012;//(первый случай)
    //v=0.5;//(второй случай)
    v=0.38*cos(13*t);//(третий случай)
endfunction

function xd=f(t,x);
    xd=(k(t)+p(t)*x)*(N-x);
endfunction

x=ode(x0, 0, t, f);
plot(t,x);
