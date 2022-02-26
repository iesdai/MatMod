model lab4_3
parameter Real w = sqrt(11);
parameter Real g = 1;
parameter Real x0 =0;
parameter Real y0 =0;

Real t = time;
Real x(start = x0);
Real y(start = y0);
equation
der(x) = y;
der(y) = -w*w*x-g*y-2*cos(t);

end lab4_3;
