input euclid;

beginfig(1)
  r=20bp;

  pair B, C, D, F, G, H, K;

  D = (-.75r, 0);
  F = ( 1.5r, 0);

  draw D--F;

  B = .5[F, D];

  K = B shifted (0, -r);

  path cir;
  cir = circle(K, r);

  draw cir;

  path KF;
  KF = K--F;

  H = KF intersectionpoint cir;

  draw KF;

  G = B + whatever * unitvector(H - B);
  G = K + whatever * (1, 0);

  draw B--G;

  C = (K--G) intersectionpoint cir;

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
