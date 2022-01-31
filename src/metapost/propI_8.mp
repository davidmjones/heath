input euclid;

beginfig(1)
  u = 36bp;

  pair A, B, C, D, E, F, G;

  B = origin;
  A = B + (.3u, 1.2u);
  C = B + (u, .4u);

  draw triangle(A, B, C);

  transform T;

  T = identity shifted (2u * right);

  D = A transformed T;
  E = B transformed T;
  F = C transformed T;

  draw triangle(D, E, F);

  G = .95 [F, D] + (.3u, 0);

  draw triangle(G, E, F);

  label.top("A", A);
  label.bot("B", B);
  label.rt("C", C);

  label.top("D", D);
  label.bot("E", E);
  label.rt ("F", F);

  label.rt ("G", G);

endfig;

end;
