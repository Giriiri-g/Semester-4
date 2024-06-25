T0 = eye(4);
T1 = trotz(90); 
figure;
axis([-1 1 -1 1 -1 1]);
view(3);
tranimate(T0, T1, 'frames', 50, 'rgb');
