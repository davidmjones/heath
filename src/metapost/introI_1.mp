input euclid;

beginfig(1)
  r = 20bp;

  pair D, F;

  D = (-.75r, 0);
  F = ( 1.5r, 0);

  draw D--F;

  pair B, K;

  B = .5[F, D];

  K = B + r * down;

  path CBx;

  CBx = circle(K, r);

  draw CBx;

  path KF;

  KF = K--F;

  pair H;

  H = KF intersectionpoint CBx;

  draw KF;

  pair G;

  G = B + whatever * unitvector(H - B);
  G = K + whatever * right;

  draw B--G;

  pair C;

  C = (K--G) intersectionpoint CBx;

  draw K--G;

  label.top("B", B);
  label.lrt("C", C);
  label.top("D", D);
  label.top("F", F);
  label.rt ("G", G);
  label.bot("H", H);
  label.bot("K", K);

  drawdots(B, C, D, F, G, H, K);
endfig;

end;
