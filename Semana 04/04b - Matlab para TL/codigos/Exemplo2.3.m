num = [5 30 55 30];
den = [1 9 33 65];

[z,p,k] = tf2zp(num,den);

a = zpk(z,p,k)

[num, den] = zp2tf(z,p,k);
printsys(num, den, 's')