Rx = rotx(45, 'deg');
Ry = roty(90, 'deg');

R1 = Ry * Rx;
R2 = Rx * Ry;

disp('Rotation matrix R1 (Ry * Rx):');
disp(R1);

disp('Rotation matrix R2 (Rx * Ry):');
disp(R2);

isEqual = isequal(round(R1, 10), round(R2, 10));
disp('Are the rotation matrices equal?');
disp(isEqual);

figure;
subplot(1,2,1);
trplot(R1, 'frame', 'R1', 'color', 'r');
title('Rotation: Ry * Rx');

subplot(1,2,2);
trplot(R2, 'frame', 'R2', 'color', 'b');
title('Rotation: Rx * Ry');