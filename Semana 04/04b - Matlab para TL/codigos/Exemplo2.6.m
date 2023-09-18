z1 = [];
p1 = [-1+2*j; -1-2*j];
k1 = [10];

[num1,den1] = zp2tf(z1,p1,k1);
printsys(num1, den1, 's')

z2 = [0];
p2 = [-1+2*j; -1-2*j];
k2 = [10];

[num2,den2] = zp2tf(z2,p2,k2);
printsys(num2, den2, 's')

z3 = [-1];
p3 = [-2; -4; -8];
k3 = [12];

[num3,den3] = zp2tf(z3,p3,k3);
printsys(num3, den3, 's')