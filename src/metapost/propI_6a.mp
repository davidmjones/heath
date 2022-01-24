input euclid;

beginfig(1)
  u = 18bp;

  pair A, B, C, D, E, F, G, H;

  B = (-u, 0);
  C = ( u, 0);

  A = .5[B, C];

  A := A + (2.5u * up);

  draw triangle(A, B, C);

  H := .7 [B, A];

  draw C--H;

  D = 1.6 [A, B];
  E = 1.6 [A, C];

  F = .7 [B, D];
  G = .7 [C, E];

  draw B--D;
  draw C--E;

  dashedline(F--G);

  draw C--F;
  draw B--G;

  label.top("A", A);
  label.lft("B", B);
  label.rt ("C", C);
  label.bot("D", D);
  label.bot("E", E);
  label.lft("F", F);
  label.rt ("G", G);
  label.lft("H", H);
endfig;

end;
