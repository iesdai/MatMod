model lab08
parameter Real M0_1 = 2.5;
parameter Real M0_2 = 1.8;
parameter Real p_cr = 20;
parameter Real N = 23;
parameter Real q = 1;
parameter Real tau1 = 16;
parameter Real tau2 = 19;
parameter Real p1 = 13;
parameter Real p2 = 11;

parameter Real a1 = p_cr/(tau1*tau1*p1*p1*N*q);
parameter Real a2 = p_cr/(tau2*tau2*p2*p2*N*q);
parameter Real b = p_cr/(tau1*tau1*p1*p1*tau2*tau2*p2*p2*N*q);
parameter Real c1 = (p_cr-p1)/(tau1*p1);
parameter Real c2 = (p_cr-p2)/(tau2*p2);

Real M1 (start=M0_1);
Real M2 (start=M0_2);

equation
//der(M1) = M1 - (b/c1)*M1*M2 - (a1/c1)*M1*M1;
//der(M2) = (c2/c1)*M2 - (b/c1)*M1*M2 - (a2/c1)*M2*M2;
der(M1) = M1 - (b/c1+0.0017)*M1*M2 - (a1/c1)*M1*M1;
der(M2) = (c2/c1)*M2 - (b/c1)*M1*M2 - (a2/c1)*M2*M2;

end lab08;
