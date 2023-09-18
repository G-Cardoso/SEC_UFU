num = [1 3 2];
den = [1 8 19 12];
sys = tf(num, den);
state = ss(sys)

sys

sys_min = minreal(sys)