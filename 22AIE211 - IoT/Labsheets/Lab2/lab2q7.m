clc;
close all;
clear all;

x = [1 0 0 1 1 0 1];
bp = 0.000001;

A1 = 10;
A2 = 0;

f1 = 10 / bp;
f0 = 5 / bp;

phi1 = 0;
phi0 = pi;

t_bit = bp / 100;

bit = [];
for n = 1:length(x)
    if x(n) == 1
        se = ones(1, 100);
    else
        se = zeros(1, 100);
    end
    bit = [bit se];
end
t1 = t_bit : t_bit : 100 * length(x) * t_bit;

% ASK modulation
f = 10 / bp;
m_ask = [];
for i = 1:length(x)
    if x(i) == 1
        y = A1 * cos(2 * pi * f * t_bit : 2 * pi * f * t_bit : 2 * pi * f * t_bit * 100);
    else
        y = A2 * cos(2 * pi * f * t_bit : 2 * pi * f * t_bit : 2 * pi * f * t_bit * 100);
    end
    m_ask = [m_ask y];
end
t2 = t_bit : t_bit : t_bit * length(x) * 100;

% FSK modulation
m_fsk = [];
for i = 1:length(x)
    if x(i) == 1
        y = cos(2 * pi * f1 * t_bit : 2 * pi * f1 * t_bit : 2 * pi * f1 * t_bit * 100);
    else
        y = cos(2 * pi * f0 * t_bit : 2 * pi * f0 * t_bit : 2 * pi * f0 * t_bit * 100);
    end
    m_fsk = [m_fsk y];
end
t3 = t_bit : t_bit : t_bit * length(x) * 100;

% PSK modulation
m_psk = [];
for i = 1:length(x)
    if x(i) == 1
        y = cos(2*pi*f1*t_bit + phi1:2*pi*f1*t_bit:2*pi*f1*t_bit*100 + phi1);
    else
        y = cos(2*pi*f1*t_bit + phi0:2*pi*f1*t_bit:2*pi*f1*t_bit*100 + phi0);
    end
    m_psk = [m_psk y];
end
t4 = t_bit : t_bit : t_bit * length(x) * 100;

% Plotting
subplot(4,1,1);
plot(t1, bit, 'r');
grid on;
axis([0 bp*length(x) -.5 1.5]);
title('Message Signal (Binary)');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(4,1,2);
plot(t2, m_ask, 'b');
title('ASK Modulated Signal');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(4,1,3);
plot(t3, m_fsk, 'g');
title('FSK Modulated Signal');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(4,1,4);
plot(t4, m_psk, 'k');
title('PSK Modulated Signal');
xlabel('Time (s)');
ylabel('Amplitude');
