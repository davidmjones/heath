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

  C = rcircle intersectionpoint lcircle;

  draw segment(A, C);
  draw segment(B, C);

  D = A - (r, 0);
  E = B + (r, 0);

  label.lft("A", A);
  label.rt ("B", B);
  label.top("C", C);
  label.lft("D", D);
  label.rt ("E", E);

  drawdots(A, B, C, D, E);
endfig;

end;
