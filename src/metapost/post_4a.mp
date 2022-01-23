input euclid;

% p. 200

beginfig(1)
  r = 72bp;

  theta = 20;

  pair A, B, C, D, E, F, G, H, K;

  B = origin;

  H = B + r * left;
  C = B + r * right;
  A = B + r * up;

  G = C rotated 20;
  K = H rotated 20;

  draw H--C;
  draw B--A;
  draw K--G;

  E = B + 1.5r * right;
  F = E + .75r * right;
  D = E + r * up;

  draw D--E--F;

  label.top("A", A);
  label.bot("B", B);
  label.bot("C", C);

  label.top("G", G);
  label.lft("H", H);
  label.bot("K", K);

  label.lft("D", D);
  label.llft("E", E);
  label.bot("F", F);

endfig;

end;
