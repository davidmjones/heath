input euclid;

beginfig(1)
  u = 18bp;

  pair A, B, C, D, E, F, G;

  B = (-u, 0);
  C = ( u, .6u);

  A = .2 [B, C] + (1.8u * up);

  draw triangle(A, B, C);

  D = A + 3u * right;
  E = B + 3u * right;
  F = C + 3u * right;

  draw triangle(D, E, F);

  G = D + .8u * right + .1u * down;

  draw E--G;
  draw F--G;

  label.top("A", A);
  label.bot("B", B);
  label.bot("C", C);

  label.top("D", D);
  label.bot("E", E);
  label.bot("F", F);

  label.rt("G", G);
endfig;

end;
