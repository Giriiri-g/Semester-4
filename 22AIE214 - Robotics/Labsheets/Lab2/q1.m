A = [0; 0];
B = [1; 1];
C = [5; 2];
P = [-1; -1];
Triangle = [A B C A];
plot(Triangle(1, :), Triangle(2, :), '-k', 'DisplayName', 'Original');
hold on;

R = [cosd(45) -sind(45); sind(45) cosd(45)];


A1 = A - P;
B1 = B - P;
C1 = C - P;

A2 = R * A1;
B2 = R * B1;
C2 = R * C1;

A3 = A2 + P;
B3 = B2 + P;
C3 = C2 + P;
Triangle2 = [A3 B3 C3 A3];
plot(Triangle2(1, :), Triangle2(2, :), '-r', 'DisplayName', 'Rotated');
plot(P(1), P(2), 'bo', 'DisplayName', 'Point P');
axis equal;
grid on;
legend();