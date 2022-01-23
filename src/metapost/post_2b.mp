input euclid;

% p. 197

beginfig(1)
  r = 72bp;

  pair A, B, C, D, F, K[], L, M, P, T[], X;

  A = origin;

  X = A + 1r * up;

  theta := 60;

  B = X + r * up rotated  theta;
  C = X + r * up rotated -theta;

  draw A--X;
  draw X--B;
  draw X--C;

  D = X + r * up;

  draw B..D..C;

  M = X + r * (up rotated (theta -20));

  draw X--M;

  draw A--M;

  K1 = (A--M) intersectionpoint (X--B);
  K2 = X + .25r * dir (90 - theta);

  draw A--K2;
  draw K2--M;

  am = distance(A, M);

  pair Q;

  Q = A + am * up rotated 40;

  l = distance(M, Q)/2;

  pair R;

  R = .5[M, B] + l * (unitvector(M - B) rotated 90);

  path arc;

  arc = Q..R..M;

  draw arc;

  draw A--Q;

  L = arc intersectionpoint ray(X, B);

  draw X--L;

  F = X + r * (up rotated (20 - theta));

  draw X--F;

  draw X--D;

  P = .35 [A, Q];

  T1 = .4r * unitvector(K1 - A);
  T2 = .4r * unitvector(K2 - A);

  label.bot("A", A);
  label.bot("B", B shifted down);
  label.rt ("C", C);
  label.top("D", D);

  label.lft("K", K1 + 2 down);
  label.rt ("K", K2 + 2 down);

  label.lft("L", L);
  label.top("M", M shifted 2 up);
  label.top("F", F shifted 2 up);

  label.lft("T", T1 shifted left);
  label.rt ("T", T2);

  label.lft("P", P shifted 2 down);

  label.rt ("X", X + down);

endfig;

end;
