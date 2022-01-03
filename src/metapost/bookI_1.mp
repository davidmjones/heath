input euclid;

beginfig(1)
  ab = 36bp;

  pair A, B;

  A = origin;
  B = A + ab * right;

  draw A--B;

  path ACE, BCD;

  BCD = circle(A, ab);
  ACE = circle(B, ab);

  draw BCD;
  draw ACE;

  pair C;
  C = ACE intersectionpoint BCD;

  draw A--C;
  draw B--C;

  pair D, E;

  D = A + ab * left;
  E = B + ab * right;

  label.lft("A", A);
  label.rt ("B", B);
  label.top("C", C);
  label.lft("D", D);
  label.rt ("E", E);

  drawdots(A, B, C, D, E);
endfig;

end;
