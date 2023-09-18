numg1 = [2];
deng1 = [1 0];
sysg1 = tf(numg1, deng1);

numg2 = [1]; 
deng2 = [1 0];
sysg2 = tf(numg2, deng2);

sysg3 = [1];

sys1 = parallel(sysg1, sysg3);
sys2 = series(sys1, sysg2);
sys  = feedback(sys2, [1])

sys_ss = ss(sys)