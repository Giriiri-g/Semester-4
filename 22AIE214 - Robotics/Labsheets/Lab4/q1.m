Rx = rotx(90, 'deg');
Ry = roty(90, 'deg');

R1 = Ry * Rx;
R2 = Rx * Ry;

disp('Rotation matrix R1 = Rx and Ry:');
disp(R1);

disp('Rotation matrix R2 = Ry and Rx:');
disp(R2);

isEqual = isequal(round(R1, 10), round(R2, 10));
disp('Are the rotation matrices equal?');
disp(isEqual);

figure;
subplot(1,2,1);
trplot(R1, 'frame', 'R1', 'color', 'r');
title('Rotation: Ry * Rx');
view(45, 30);

subplot(1,2,2);
trplot(R2, 'frame', 'R2', 'color', 'b');
title('Rotation: Rx * Ry');
view(45, 30);

