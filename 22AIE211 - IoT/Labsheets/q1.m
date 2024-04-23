clear all;
f = 2;
T = 1/f;
t = 0:0.01:6;

%Sinusoidal signal
x1 = sin(2*pi*f*t);
subplot (4,2,1) ;
plot (t,x1);
title ('a. Sinusoidal Signal');
ylabel("x1(t) "), xlabel ("t");

%Square signal
x2=square(2*pi*t);

subplot(4,2,2) ;
plot(t,x2);
title('b. Square Signal');

%exponential signal
x3=exp(-2*t);
subplot(4,2, 3) ;
plot(t, x3) ;
title('c. Exponential Signal');

%Sawtooth signal
x4=sawtooth(2*pi*t);
subplot(4, 2, 4) ;
plot(t, x4);
title("d. Sawtooth Signal");


%  X1 = sin(2*pi*t/T).*exp(-2*t)

x5 = sin(2*pi*t/T).*exp(-2*t);
subplot(4, 2, 5)
plot(t, x5);
title("e. X = sin(2*pi*t/T).*exp(-2*t)");

x6 = 2*cos(2*pi*t/T).*sin(2*pi*t/T);
subplot(4, 2, 6);
plot(t, x6);
title("f. X = 2*cos(2*pi*t/T).*sin(2*pi*t/T)")

x7 = sin(2*pi*t/T).*exp(-2*t)+sin(2*pi*t/T).*exp(-4*t);
subplot(4, 2, 7);
plot(t, x7);
title("g. X = sin(2*pi*t/T).*exp(-2*t)+sin(2*pi*t/T).*exp(-4*t)")