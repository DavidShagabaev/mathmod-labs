n=5.1
k=17.3
fi=3*%pi/8
function dr=f(tetha,r)
    dr=r/sqrt(n*n-1);
endfunction;

r0=k/(n+1);
tetha0=0;
tetha=0:0.01:2*%pi;
r=ode(r0,tetha0,tetha,f);

function xt=f2(t)
    xt=cos(fi)*t;
endfunction

t=0:800;

plot2d(t,f2(t),style=color('red'));

polarplot(tetha,r,style=color('green'), rect=[2.8,1,2.9,1.1]);

r0=k/(n-1);
tetha0=-%pi;
figure();
r=ode(r0,tetha0,tetha,f);

plot2d(t,f2(t),style=color('red'));

polarplot(tetha,r,style=color('green'), rect=[7.9,3,8,3.1]);
