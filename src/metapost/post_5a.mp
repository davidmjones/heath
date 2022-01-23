input euclid;

% p. 204

beginfig(1)
  u = 72bp;

  pair A, B, C, D, E, F, G, H, K, L;

  A = origin;
  B = A + u * right;
  C = A + .25 u * down;
  D = B + .25 u * down;

  L = .5 [A, C] + .15 u * left;
  K = .5 [B, D] + .15 u * right;

  F = .45 [A, B];
  G = .25 [C, D];

  E = F + .25u * unitvector(F-G);
  H = G + .25u * unitvector(G-F);

  draw L--A--B--K--D--C--cycle;

  draw H--E;

  label.top("A", A);
  label.top("B", B);
  label.bot("C", C);
  label.bot("D", D);

  label.lft("L", L);
  label.rt ("K", K);

  label.rt("H", H);
  label.lrt("G", G);
  label.rt("E", E);
  label.lrt("F", F);
endfig;

end;
