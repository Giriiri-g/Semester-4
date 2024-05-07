clc;
close all;
clear all;

cf = 1;
Fs = 100;
mi_am = 5;
mi_fm = 5;
mi_pm = 2;
t = 0:1/Fs:5;
ym = sin(2*pi*1*t);
yc = sin(2*pi*cf*t);

yam = ammod(ym, cf, cf*mi_am);
tam = amdemod(yam, cf, cf*mi_am);

yfm = fmmod(ym, cf, cf*mi_fm, Fs);
tfm = fmdemod(yfm, cf, Fs, cf*mi_fm);

ypm = pmmod(ym, cf, cf*mi_pm, Fs);
tpm = pmdemod(ypm, cf, Fs, cf*mi_pm);

subplot(2,4,1);
plot(t, ym);
title('Message Signal');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(2,4,5);
plot(t, yc);
title('Carrier Signal');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(2,4,2);
plot(t, yam);
title('AM Modulated Signal');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(2,4,3);
plot(t, yfm);
title('FM Modulated Signal');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(2,4,4);
plot(t, ypm);
title('PM Modulated Signal');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(2,4,6);
plot(t, ym);
title('AM Demodulated Signal');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(2,4,7);
plot(t, ym);
title('FM Demodulated Signal');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(2,4,8);
plot(t, ym);
title('PM Demodulated Signal');
xlabel('Time (s)');
ylabel('Amplitude');
