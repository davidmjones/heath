input euclid;

beginfig(1)
  r=1cm;

  pair A, B, C, D, E;

  A = (0, 0);
  B = (r, 0);

  draw segment(A, B);

  path lcircle, rcircle;

  lcircle = circle(A, r);
  rcircle = circle(B, r);

  draw lcircle;
  draw rcircle;

  C = A + (0, r) rotated 30;

  D = .55[A, C];

  draw segment (A, C);

  path BD;
  BD = segment(B, D);

  draw BD;

  E = rcircle intersectionpoint BD;

  label.lft("A", A);
  label.rt ("B", B);
  label.top("C", C);
  label.lft("D", D);
  label.top("E", E);

  drawdots(A, B, C, D, E);
endfig;

end;
