input euclid;

% p. 197

beginfig(1)
  r = 72bp;

  theta = 20;

  pair A, B, C, D, E, F;

  B = origin;

  A = B + r * left;
  C = B + r * right;

  E = B + r * up;

  D = C rotated theta;
  F = E rotated theta;

  draw A--C;
  draw B--E;
  draw B--F;
  draw B--D;

  label.bot("A", A);
  label.bot("B", B);
  label.bot("C", C);

  label.top("D", D);
  label.top("E", E);
  label.top("F", F);
endfig;

end;
