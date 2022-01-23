input euclid;

% p. 214

beginfig(1)
  u = 144bp;

  pair A, B, C, D, E, F;

  F = origin;
  A = F + u * right;
  E = F + .3u * right + .75u * up;

  D = .5[F, E];
  B = .5[A, E];
  C = .5[A, F];

  draw E--A--F--cycle;
  draw D--B--C--cycle;

  label.bot("A", A);
  label.bot("F", F);
  label.bot("C", C);

  label.rt("B", B);
  label.lft("D", D);

  label.top("E", E);

endfig;

end;
