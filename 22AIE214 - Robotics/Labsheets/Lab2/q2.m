A = [0; 0];
B = [1; 1];
C = [5; 2];
Triangle = [A B C A];
plot(Triangle(1, :), Triangle(2, :), '-r', 'DisplayName', 'Original Triangle');
hold on;

R = [cosd(45) -sind(45); sind(45) cosd(45)];

A1 = R * A;
B1 = R * B;
C1 = R * C;
Triangle2 = [A1 B1 C1 A1];
plot(Triangle2(1, :), Triangle2(2, :), '-k', 'DisplayName', 'Rotated Triangle');

axis equal;
grid on;
legend();
