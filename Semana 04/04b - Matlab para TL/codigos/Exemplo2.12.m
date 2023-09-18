num1 = [10];
den1 = [1 2 10];
num2 = [5];
den2 = [1 5];

[num, den] = series(num1, den1, num2, den2);
printsys(num, den)

[num, den] = parallel(num1, den1, num2, den2);
printsys(num, den)

[num, den] = feedback(num1, den1, num2, den2);
printsys(num, den)