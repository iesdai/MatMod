model lab5
parameter Real a = 0.19;
parameter Real b = 0.048;
parameter Real c = 0.39;
parameter Real d = 0.036;

parameter Real x0 = 13;
parameter Real y0 = 18;

Real t = time;
Real x(start=x0);
Real y(start=y0);
Real stat1;
Real stat2;

equation

der(x) = -a*x+b*x*y;
der(y) = c*y-d*x*y;
stat1 = a/b;
stat2 = c/d;

end lab5;
