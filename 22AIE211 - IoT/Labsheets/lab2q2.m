t = 0:0.001:1;


% message signal
ym = 2*cos(pi*t);

% carrier signal

yc = 4*sin(100*pi*t + deg2rad(10));

% Amplitude modulated Signal

yam = 4*(1+cos(pi*t)).*sin(100*pi*t + deg2rad(10));

subplot(3, 1, 1);
plot(t, ym);
title("Message Signal");

subplot(3, 1, 2);
plot(t, yc);
title("Carrier Signal");

subplot(3, 1, 3);
plot(t, yam);
title("Amplitude Modulated Signal");