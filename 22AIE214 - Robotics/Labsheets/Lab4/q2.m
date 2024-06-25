R = transl2(2,5) * trot2(90,"deg");
disp('Homogenous Transformation Matrix');
disp(R);

t=Twist(R);
disp(t);
disp('Twist Vector in 2D (3x1) [for 3D the twist vector is 6x1]');
disp(t.S);
disp('Twist Vector converted to Rotation Matrix');
disp(t.T);