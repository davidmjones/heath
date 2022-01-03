input euclid;

beginfig(1)
  ab = 36bp;

  pair A, B;

  A = origin;
  B = A + ab * right;

  draw A--B;

  path lcircle, rcircle;

  lcircle = circle(A, ab);
  rcircle = circle(B, ab);

  draw lcircle;
  draw rcircle;

  pair C, D;

  C = A + ab * dir 120;

  D = .55[A, C];

  draw A--C;

  path BD;

  BD = B--D;

  draw BD;

  pair E;

  E = rcircle intersectionpoint BD;

  label.lft("A", A);
  label.rt ("B", B);
  label.top("C", C);
  label.lft("D", D);
  label.urt("E", E shifted down);

  drawdots(A, B, C, D, E);
endfig;

end;
