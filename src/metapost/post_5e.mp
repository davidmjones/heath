input euclid;

% p. 205

beginfig(1)
  u = 72bp;

  pair A, B, C, D, E, F, G;

  A = origin;
  B = A + u * right;
  C = A + .4 u * down;
  D = C + u * right;

  F = .5 [A, B];

  E = F + .25u * up rotated 45;
  G = E + .5u * unitvector(F-E);

  draw A--B;
  draw C--D;
  draw E--G;

  label.lft("A", A);
  label.rt("B", B);
  label.lft("C", C);
  label.rt("D", D);
  label.rt("E", E shifted right);
  label.bot("F", F shifted 3 left);
  label.rt("G", G);
endfig;

end;
