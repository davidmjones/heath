input euclid;

% p. 205

beginfig(1)
  u = 72bp;

  pair A, B, C, D, F, G;

  A = origin;
  B = A + u * right;
  C = A + .25 u * down;
  D = B + .25 u * down;

  F = .55 [A, B];
  G = .45 [C, D];

  draw A--B;
  draw C--D;
  draw F--G;

  label.top("A", A);
  label.top("B", B);
  label.bot("C", C);
  label.bot("D", D);

  label.top("F", F);
  label.bot("G", G);
endfig;

end;
