num1    = [1 2 1];
deng1   = [1 0 0];
sys1    = tf(num1, deng1);
sys1_ss = ss(sys1);

num2    = [2];
deng2   = [1 5];
sys2    = tf(num2, deng2);
sys2_ss = ss(sys2);

sysf   = feedback(series(sys1a_ss, sys2a_ss), [1]);
sys_tf = tf(sysaf)