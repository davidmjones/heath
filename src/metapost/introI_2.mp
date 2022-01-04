input euclid;

% p. 142

beginfig(1)
  numeric r;

  r = 36bp;

  pair A, B, C, D, E, F;

  path ABC;

  ABC = circle(origin, r);

  draw ABC;

  numeric theta;
  theta = 50;

  A = r * up rotated  theta;
  B = r * right rotated -70;
  C = r * up rotated -theta;

  draw triangle(A, B, C);

  D = 1.5[C, B];

  E = whatever[A, B] = whatever[D, D + right];

  F = whatever[A, A + A rotated 90] = whatever[D, D + left];

  draw F--E;

  draw A--F;
  draw A--E;
  draw C--D;

  label.lft("A", A);
  label.rt ("B", B);
  label.top("C", C);
  label.bot("D", D);
  label.bot("E", E);
  label.bot("F", F);

endfig;

end;
