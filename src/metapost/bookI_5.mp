input euclid;

beginfig(1)
  u = 18bp;

  pair A, B, C;

  B = (-u, 0);
  C = ( u, 0);

  A = .5[B, C];

  A := A + (2u * up);

  draw triangle(A, B, C);

  pair D, E;

  D = 1.75[A, B];
  E = 1.75[A, C];

  draw B--D;
  draw C--E;

  pair F, G;

  F = 1.4[A, B];
  G = 1.4[A, C];

  draw B--G;
  draw F--C;

  label.top("A", A);
  label.lft("B", B);
  label.rt ("C", C);
  label.bot("D", D);
  label.bot("E", E);
  label.lft("F", F);
  label.rt("G", G);

  % drawdots(A, B, C, D, E, F);
endfig;

end;
