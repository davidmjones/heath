input euclid;

% p. 205

beginfig(1)
  u = 72bp;

  theta = 10;

  pair A, B, C, D, E, F, K, H;

  K = origin;
  H = K + u * right;

  E = .45 [K, H];
  F = .55 [C, D];

  A = E + .5u * dir (180-theta);
  B = E + .5u * dir(-theta);

  C = K + .4 u * down;
  D = C + u * right;

  draw A--B;
  draw K--H;
  draw C--D;
  draw E--F;

  label.lft("A", A);
  label.rt ("B", B);
  label.bot("C", C);
  label.bot("D", D);
  label.top("E", E);
  label.bot("K", K);
  label.rt ("H", H);
endfig;

end;
