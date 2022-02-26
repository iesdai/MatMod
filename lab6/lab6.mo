model lab6
parameter Real n = 14000;
parameter Real i0 = 114;
parameter Real r0 = 14;
parameter Real s0 = n-i0-r0;
parameter Real a = 0.01;
parameter Real b = 0.02;

Real s1(start=s0);
Real i1(start=i0);
Real r1(start=r0);

Real s2(start=s0);
Real i2(start=i0);
Real r2(start=r0);
Real t = time;
equation

der(s1) = 0;
der(i1) = -b*i1;
der(r1) = b*i1;

der(s2) = -a*s2;
der(i2) = a*s2-b*i2;
der(r2) = b*i2;

end lab6;
