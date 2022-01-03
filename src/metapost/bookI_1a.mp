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

  pair C, D, E;

  C = ACE intersectionpoint BCD;

  D = A + ab * left;
  E = B + ab * right;

  draw D--E;

  path EFx, DFx;

  EFx = circle(A, 2ab);
  DFx = circle(B, 2ab);

  draw EFx;
  draw DFx;

  pair F;

  F = DFx intersectionpoint EFx;

  draw A--F;
  draw B--F;

  label.llft("A", A);
  label.lrt ("B", B);
  label.top("C", C);
  label.lft("D", D);
  label.rt ("E", E);
  label.top("F", F);

  drawdots(A, B, C, D, E, F);
endfig;

end;
