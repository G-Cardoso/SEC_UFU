syms s t 

num = [100 1000];
den = [1 10 100 600 0];

[r,p,k] = residue(num, den);

printsys(num, den, 's')

a = (100*s + 1000)/(s^4 + 10*s^3 + 100*s^2 + 600*s);

ilaplace(a)