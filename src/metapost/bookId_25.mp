input euclid;

% p. 209b

beginfig(1)
  u = 108bp;
  o = 18bp;

  numeric theta;

  theta = 30;

  pair A, B, C, D, E, F, G, H, K, L, M, N, O, P, Q, R, S;

  C = origin;

  E = C + u * right;

  D = C + (.8 * distance(E, C) * sind theta) * up;

  path CD;

  CD = C--D;

  draw CD;

  F = C + o * left;

  path FCE;

  FCE = F..(distance(E, F)) * unitvector(E - F);

  draw FCE;

  A = E +  16 * dir(-theta);
  B = E + .5u * dir(180 - theta);

  path AB;

  AB = A--(A + (distance(E, F)/cosd(theta)) * unitvector(B - A));

  G = .625 [E, B];

  H = FCE intersectionpoint ray(G, G + down);

  draw H--G;

  d1 = distance(H, E);

  Q = G + d1 * right;

  draw G--Q--E;

  K = H + d1 * left;
  L = K + d1 * left;
  M = L + d1 * left;

  d2 = distance(E, G);

  N = G +   d2 * unitvector(G - E);
  O = G + 2 d2 * unitvector(G - E);
  P = G + 3 d2 * unitvector(G - E);

  draw N--K;
  draw O--L;
  draw P--M;

  R = (N--K) intersectionpoint ray(Q, G);

  draw R--G;

  draw A--A + (distance(A, P) + .5o) * unitvector(P - A);

  label.bot("A", A);
  label.top("B", B shifted up);

  label.bot("C", C);
  label.rt("D", D);

  label.bot("H", H);
  label.top("G", G shifted up);

  label.bot("K", K);
  label.top("N", N shifted up);

  label.ulft("S", K shifted up shifted left);

  label.bot("L", L);
  label.top("O", O shifted up);

  label.bot("M", M);
  label.top("P", P shifted up);

  label.lft("R", R);
  label.top("Q", Q);

  label.urt("E", E shifted up);
  label.bot("F", F);


endfig;

end;
