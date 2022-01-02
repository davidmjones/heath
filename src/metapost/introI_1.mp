input euclid;

beginfig(1)
  r=100bp;

  pair B, C, D, F, G, H, K;

  D = (-.75r, 0);
  F = ( 1.5r, 0);

  draw line(D, F);

  B = .5[F, D];

  K = B shifted (0, -r);

  path cir;
  cir = circle(K, r);

  draw cir;

  path KF;
  KF = line(K, F);

  H = KF intersectionpoint cir;

  draw KF;

  G = B + whatever * unitvector(H - B);
  G = K + whatever * (1, 0);

  draw line(B, G);

  C = (K--G) intersectionpoint cir;

  draw line(K, G);

  label.top(btex $B$ etex, B);
  label.lrt(btex $C$ etex, C);
  label.top(btex $D$ etex, D);
  label.top(btex $F$ etex, F);
  label.rt (btex $G$ etex, G);
  label.bot(btex $H$ etex, H);
  label.bot(btex $K$ etex, K);

  pickup pencircle scaled 2pt;

  drawdot B;
  drawdot C;
  drawdot D;
  drawdot F;
  drawdot G;
  drawdot H;
  drawdot K;
endfig;

end;
