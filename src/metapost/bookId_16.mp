input euclid;

% p. 201

beginfig(1)
  r = 72bp;

  pair A, B, C, D, E;

  B = origin;
  C = B + 2r * right;

  pair center;

  center = .5 [B, C];

  D = B + r * right + r * up;

  path BCD;

  BCD = semicircle(center, r);

  draw BCD;
  draw B--C;

  draw BCD rotated 90;

  A = B + 2r * up;
  E = B + r * up + r* left;

  draw B--A;

  label.top("A", A);
  label.bot("B", B);
  label.bot ("C", C);
  label.top("D", D);
  label.lft("E", E);
endfig;

end;
