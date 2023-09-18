syms s t;

x = 3*t*exp(-2*t)*sin(4*t+pi/3);
y = ((s^2+3*s+10)*(s+5))/((s+3)*(s+4)*(s^2+2*s+100));
z = (s^3+4*s^2+2*s+6)/((s+8)*(s^2+8*s+3)*(s^2+5*s+7));

F = laplace(x);
G = ilaplace(z);

simplify(G);
pretty(ans);
