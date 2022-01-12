input euclid;

% p. 205

beginfig(1)
  u = 72bp;

  pair A, B, C, D, E, F, G, H, K;

  A = origin;
  B = A + .8 u * dir 20;
  C = A + .25 u * down + 10 left;
  D = C + u * right;

  F = .55 [A, B];
  G = .45 [C, D];

  K = D + .25u * dir 70;

  E = F + 15 unitvector(F - G);
  H = G + 15 unitvector(G - F);

  draw A--B;
  draw C--D;
  draw E--H;
  draw B--K--D;

  label.bot("A", A);
  label.top("B", B);
  label.bot("C", C);
  label.bot("D", D);
  label.rt("K", K);

  label.lft("E", E);
  label.rt("H", H);

  label.rt("F", F shifted 2down);
  label.lrt("G", G);
endfig;

end;
