model lab7
parameter Real N = 810;
parameter Real n0 = 11;
Real n(start = n0);

function k
  input Real t;
  output Real res;
algorithm
  //res := 0.64;
  //res := 0.000014;
  res := 0.7 * t;
end k;

function p
  input Real t;
  output Real res;
algorithm
  //res := 0.00014;
  //res := 0.63;
  res := 0.4 * cos(t);
end p;

equation
der(n) = (k(time)+p(time)*n)*(N-n);
end lab7;
