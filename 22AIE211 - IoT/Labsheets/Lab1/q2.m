% Parameters
amplitude = 10;
frequency = 5;
t = 0:0.01:5/frequency;


% Sine wave
sine_wave = amplitude*sin(2 * pi * frequency * t);

% Square wave
square_wave = amplitude*square(2 * pi * frequency * t);

% Triangular wave
triangular_wave = amplitude*sawtooth(2 * pi * frequency * t, 0.5);


subplot(3,1,1);
plot(t, sine_wave);
title('a. Sine Wave');
xlabel('Time');
ylabel('Amplitude');

subplot(3,1,2);
plot(t, square_wave);
title('b. Square Wave');
xlabel('Time');
ylabel('Amplitude');

subplot(3,1,3);
plot(t, triangular_wave);
title('c. Triangular Wave');
xlabel('Time');
ylabel('Amplitude');
