sysg1 = [4];

numg2 = [2]; 
deng2 = [1 9 8];
sysg2 = tf(numg2, deng2);

numg3 = [1];
deng3 = [1 0];
sysg3 = tf(numg3, deng3);

sysh = [0.2];

sys1 = feedback(sysg2, sysh);
sys2 = series(sys1, sysg3);
sys3 = series(sysg1, sys2);
sys  = feedback(sys3, [1])