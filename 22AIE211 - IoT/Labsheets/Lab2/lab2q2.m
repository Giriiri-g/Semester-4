clc;
close all;
clear all;

t = 0:0.001:1;

ym = 2*cos(pi*t); % message signal
yc = 4*sin(100*pi*t + deg2rad(10)); % carrier signal
yam = 4*(1+cos(pi*t)).*sin(100*pi*t + deg2rad(10)); % Amplitude modulated Signal

subplot(3, 1, 1);
plot(t, ym);
title("Message Signal");

subplot(3, 1, 2);
plot(t, yc);
title("Carrier Signal");

subplot(3, 1, 3);
plot(t, yam);
title("Amplitude Modulated Signal");