A = [0 1; -2 -3];
B = [1 0; 0 1];
C = [1 0];
D = [0 0];

[num, den] = ss2tf(A, B, C, D, 1)
[num, den] = ss2tf(A, B, C, D, 2)