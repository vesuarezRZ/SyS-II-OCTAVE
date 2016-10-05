close all
clear all
%PARTE A
num=[1 -sqrt(2) 1];
den=[1 0 0];
figure(1)
freqz(num, den)
%PARTE B
num==[1 0 0];
den=[1 -1.26 0.7938];
figure(2)
freqz(num, den)
%PARTE C
a=j*0.9;
b=0.63+j*0.63;
c=-0.63+j*0.63;
num=conv([1 -0.9],conv([1 0.9],conv([1 a],conv([1 conj(a)],conv([1 b],conv([1 conj(b)],conv([1 c],[1 conj(c)])))))));
den=[1 0 0 0 0 0 0 0 0];
figure(3)
freqz(num, den)
%PARTE D
a=j*0.9;
num=conv([1 1],[1 -1]);
den=conv([1 a],conv([1 conj(a)],conv([1 a],[1 conj(a)])));
figure(4)
freqz(num, den)
