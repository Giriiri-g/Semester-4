% Q1
R = eul2r(0.1,0.2,0.3)

trplot(R, 'R', 'color', 'r');
view(3);

% Q2
EulAngles = tr2eul(R)


% Q3
inverse = inv(R)
transpose = R'

% Q4
R = eul2r(0.1,-0.2,0.3)
EulAngles = tr2eul(R)