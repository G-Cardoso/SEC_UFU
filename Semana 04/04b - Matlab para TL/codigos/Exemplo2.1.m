num = [2 5 3 6];
den = [1 6 11 6];

[r,p,k] = residue(num, den);
[a, b] = residue(r,p,k);
printsys(num,den,'s')
