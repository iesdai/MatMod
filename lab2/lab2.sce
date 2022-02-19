function dr=f(tetha, r)
    dr = r/sqrt(n*n-1);
endfunction
function xt = f2(t)
    xt = tan(fi)*t;
endfunction
s = 6.5;
n = 2.6;
fi = %pi/4;
//1 
r0 = s/(n+1);
tetha0 = 0;
tetha = tetha0:0.01: 2*%pi;
r = ode(r0, tetha0, tetha, f);
t = 0: 1: 25;
scf(1);
polarplot(tetha, r, style=color('green'));
plot2d(t, f2(t), style=color('red'));
//2 
r0 = s/(n-1);
tetha0 = -%pi;
tetha = tetha0:0.01: -tetha0;
r = ode(r0, tetha0, tetha, f);
t = 0: 1: 25;
scf(2);
polarplot(tetha, r, style=color('green'));
plot2d(t, f2(t), style=color('red'));
