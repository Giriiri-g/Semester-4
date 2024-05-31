    B = transl2(2, 3)*trot2(30, 'deg');
    disp(B);
    plotvol([0 5 0 5]);
    trplot2(B, 'frame', '1', 'color', 'b')