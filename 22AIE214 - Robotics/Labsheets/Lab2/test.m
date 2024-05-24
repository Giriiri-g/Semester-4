%Q)Rotate a triangle placed at A(0,0), B(1,1) and C(5,2) by 
%an angle 45 with respect to origin. Plot the points.

% Rotate a triangle placed at A(0,0) , B(1,1) and C(5,2) by an angle 45
% with respect to origin . Plot the points.

% Coordinates of the triangle vertices
x = [0 1 5];
y = [0 1 2];

% Convert the rotation angle to radians
theta = 45 * pi / 180;

% Define the rotation matrix
R = [cos(theta) -sin(theta); sin(theta) cos(theta)];

% Apply the rotation to the points
v = [x; y];
v_rotated = R * v;

% Extract the rotated x and y coordinates
x_rotated = v_rotated(1, :);
y_rotated = v_rotated(2, :);

% Make a plot
figure;
hold on;
plot([x, x(1)], [y, y(1)], 'k-', 'LineWidth', 2); % Original triangle
plot([x_rotated, x_rotated(1)], [y_rotated, y_rotated(1)], 'r-', 'LineWidth', 2); % Rotated triangle
scatter(0, 0, 'k', 'filled'); % Origin point
text(0, 0, ' Origin', 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right'); % Label for origin
legend('Original Triangle', 'Rotated Triangle', 'Location', 'Best');
title('Rotation of Triangle ABC around the Origin');
axis equal;
grid on;
hold off;