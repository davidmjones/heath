input euclid;

beginfig(1)
  u = 18bp;

  pair A, B, C, D, E;

  B = (-u, 0);
  C = ( u, 0);

  A = .5[B, C];

  A := A + (2.5u * up);

  draw triangle(A, B, C);

  D := .4 [B, A];
  E := .4 [C, A];

  draw C--D;
  draw B--E;

  label.top("A", A);
  label.lft("B", B);
  label.rt ("C", C);
  label.lft("D", D);
  label.rt ("E", E);
endfig;

end;
