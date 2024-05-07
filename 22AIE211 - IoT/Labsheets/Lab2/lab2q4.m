clc;
close all;
clear all;

t = 0:0.001:5;

ym = sin(2*pi*5*t);
yc = square(5*t);
yam = sin(2*pi*5*t + ym);

subplot(3, 1, 1);
plot(t, ym);
title("Message Signal");

subplot(3, 1, 2);
plot(t, yc);
title("Carrier Signal");

subplot(3, 1, 3);
plot(t, yam);
title("Amplitude Modulated Signal");