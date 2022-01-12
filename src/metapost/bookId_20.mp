input euclid;

% p. 205

beginfig(1)
  u = 108bp;

  pair A, B, C, D, E, F, G, H, K, L;

  A = origin;
  B = A + u * dir -5;
  C = A + .4 u * down;
  D = C + u * dir 5;

  F = .15 [A, B];
  G = .15 [C, D];

  K = .25 [A, B];
  L = .25 [C, D];

  E = .5 [A, C];
  H = .5 [F, G];

  draw B--A--C--D;

  draw F--G;

  draw K--L;

  drawdots(E, H);

  draw A--G dashed withdots scaled .9;

  label.top("A", A);
  label.top("B", B);
  label.bot("C", C);
  label.bot("D", D);
  label.lft("E", E);
  label.top("F", F);
  label.bot("G", G);
  label.rt("H", H);
  label.top("K", K);
  label.bot("L", L);
endfig;

end;
