input euclid;

beginfig(1)
  r=1cm;

  pair A, B, C, D, E, F;

  A = (0, 0);
  B = (r, 0);

  draw segment(A, B);

  path lcircle[], rcircle[];

  lcircle1 = circle(A, r);
  rcircle1 = circle(B, r);

  draw lcircle1;
  draw rcircle1;

  C = rcircle1 intersectionpoint lcircle1;

  D = A - (r, 0);
  E = B + (r, 0);

  draw segment(D, E);

  lcircle2 = circle(A, 2r);
  rcircle2 = circle(B, 2r);

  draw lcircle2;
  draw rcircle2;

  F = rcircle2 intersectionpoint lcircle2;

  draw segment(A, F);
  draw segment(B, F);

  label.lft("A", A shifted ( 3, -5));
  label.rt ("B", B shifted (-3, -5));
  label.top("C", C);
  label.lft("D", D);
  label.rt ("E", E);
  label.top("F", F);

  drawdots(A, B, C, D, E, F);
endfig;

end;
