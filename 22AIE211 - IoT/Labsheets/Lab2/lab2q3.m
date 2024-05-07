clc;
close all;
clear all;

mf = 10;
fs = 10000;
fm = 35;
fc = 500;
Am = 1;
Ac = 1;
t = 0:1/fs:0.1;

ym = Am*cos(2*pi*fm*t);
yc = Ac*cos(2*pi*fc*t);
yfm = Ac*cos(2*pi*fc*t + mf*sin(2*pi*fm*t));

subplot(3, 1, 1);
plot(t, ym);
title("Modulated Signal");

subplot(3, 1, 2);
plot(t, yc);
title("Carrier Signal");

subplot(3, 1, 3);
plot(t, yfm);
title("Frequency Modulated Signal");