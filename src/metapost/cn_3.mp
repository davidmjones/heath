input euclid;

beginfig(1)
  u = 54bp;
  v = 18bp;

  pair A, B, C, D, E, F, G;

  A = origin;
  B = origin + u * up;

  C = A + 18 right;
  D = B + 18 right;

  E = B + 1.4 * v * up;
  F = D + v * up;

  G = B + v * up;

  draw A--E;
  draw C--F;

  label.lft("A", A);
  label.lft("B", B);
  label.lft("E", E);
  label.lft("G", G);

  label.rt("C", C);
  label.rt("D", D);
  label.rt("F", F);

  drawdots(B, G);
endfig;

end;
