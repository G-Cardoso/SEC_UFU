num = [0 0 0 0 0 2];
den = [1 2 10 0 0 0];

[r,p,k] = residue(num, den);

d = [1 2 3 4];
r = roots(d)
pol = poly(r)