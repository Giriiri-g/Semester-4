clc;
close all;
clear all;
      
t = 0:0.001:1;

ym = 5 * sin(2*pi*10*t);
yc = 5 * sin(2*pi*50*t);
ypm = 5 * sin(2*pi*50*t + 4*ym);

subplot(3,1,1);
plot(t, ym);
title('Message Signal');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(3,1,2);
plot(t, yc);
title('Carrier Signal');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(3,1,3);
plot(t, ypm);
title('PM Modulated Signal (mp = 4)');
xlabel('Time (s)');
ylabel('Amplitude');