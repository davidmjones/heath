input euclid;

beginfig(1)
  r=1cm;

  pair A, B;

  A = (0, 0);
  B = (r, 0);

  draw A--B;

  path BCD, ACE;

  BCD = circle(A, r);
  ACE = circle(B, r);

  draw BCD;
  draw ACE;

  pair C;
  C = ACE intersectionpoint BCD;

  draw A--C;
  draw B--C;

  pair D, E;
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
