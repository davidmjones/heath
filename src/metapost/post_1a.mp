input euclid;

% p. 188

beginfig(1)
  r = 36bp;

  pair A, B, C, D, E, F;

  B = origin;
  A = B + r * left;

  C = .5[A, B] + .15r * up;
  D = .5[A, B] + .15r * down;

  E = B + r * dir(30);
  F = B + r * dir(-30);

  draw circle(B, r);

  draw A..C..B..F;
  draw A..D..B..E;

  label.lft("A", A);
  label.top("B", B);
  label.top("C", C);
  label.bot("D", D);
  label.rt("E", E);
  label.rt("F", F);

endfig;

end;
