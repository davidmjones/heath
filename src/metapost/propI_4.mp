input euclid;

beginfig(1)
  u = 54bp;

  pair A, B, C;

  A = origin;
  B = A + u * right;
  C = (.8u, .9u);

  draw triangle(A, B, C);

  transform T;

  T = identity shifted (1.5u * right);

  pair D, E, F;

  D = A transformed T;
  E = B transformed T;
  F = C transformed T;

  draw triangle(D, E, F);

  pair G;

  G = .5[D, E];
  G := G shifted 4down;

  draw D..G..E;

  label.bot("A", A);
  label.bot("B", B);
  label.top("C", C);
  label.bot("D", D);
  label.bot("E", E);
  label.top("F", F);
endfig;

end;
