input euclid;

% p. 175

beginfig(1)
  u = 108bp;

  pair A, B, C, M, N, P;

  B = origin;
  A = B + u * up;

  C = .4[B, A];

  M = B +  .9u * dir(10);
  N = A + 1.1u * dir (-20);

  P = .3[M, N];

  draw A--B--M--N--cycle;

  draw A--P;
  draw A--M;

  draw B--N;
  draw B--P;

  draw C--N;
  draw C--P;
  draw C--M;

  label.lft("A", A);
  label.lft("B", B);
  label.lft("C", C);

  label.rt("M", M);
  label.rt("N", N);
  label.rt("P", P);

endfig;

end;
