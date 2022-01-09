input euclid;

% p. 186

beginfig(1)
  r = 36bp;

  pair A, D, H, K, N, M;

  A = origin;

  draw circle(A, r);

  M = A + r * left;
  N = A + r * right;

  H = A + r * dir(30);
  K = A + r * dir(-30);

  D = A + r * dir(110);

  draw M--N;
  draw A--D;
  draw A--H;
  draw A--K;

  label.bot("A", A shifted left);
  label.top("D", D);
  label.rt("H", H);
  label.rt("K", K);
  label.rt("N", N);
  label.lft("M", M);

endfig;

end;
