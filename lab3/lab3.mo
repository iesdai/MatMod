model lab3
parameter Real x0 = 19300;
parameter Real y0 = 39000;

parameter Real a1 = 0.46;
parameter Real b1 = 0.7;
parameter Real c1 = 0.82;
parameter Real h1 = 0.5;

parameter Real a2 = 0.38;
parameter Real b2 = 0.73;
parameter Real c2 = 0.5;
parameter Real h2 = 0.28;

Real x1(start = x0);
Real y1(start = y0);

Real x2(start = x0);
Real y2(start = y0);
Real t = time;
equation

der(x1) = -a1*x1-b1*y1+sin(0.5*t);
der(y1) = -c1*x1-h1*y1+cos(1.5*t);

der(x2) = -a2*x2-b2*y2+sin(2*t)+1;
der(y2) = -c2*x2*y2-h2*y2+cos(2*t);

end lab3;
