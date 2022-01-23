input euclid;

% p. 173

beginfig(1)
  u = 72bp;

  pair O, P[], R[], Q[], X;

  O = origin;

  X = O + .8u * right + 5 up;

  path Xx, l;

  Xx = X--(10, .6u);

  pair ll, lr;

  ll = (.8u, .5u);
  lr = (.4u, u);

  l = ll--lr;

  draw Xx;
  draw l;

  P2 = .1[lr, ll];
  Q2 = .1[ll, lr];

  draw O--P2;
  draw O--Q2;

  P1 = (O--P2) intersectionpoint Xx;
  Q1 = (O--Q2) intersectionpoint Xx;

  R1 = .4[P1, Q1];

  R2 = l intersectionpoint ray(O, R1);

  draw O--R2;

  draw P2--(P2 + 7 * unitvector(P2 - O));
  draw R2--(R2 + 10 * unitvector(R2 - O));
  draw Q2--(Q2 + 13 * unitvector(Q2 - O));

  label.bot("O", O);
  label.bot("X", X);

  label.top("P", P1 shifted (-2, 2));
  label.bot("R", R1 shifted (0, -1));
  label.bot("Q", Q1 shifted (0, -1));

  label.top(btex $\scriptscriptstyle P'$ etex, P2 + (-2, 2));
  label.top(btex $\scriptscriptstyle R'$ etex, R2 + (0, 3));
  label.top(btex $\scriptscriptstyle Q'$ etex, Q2 + (1, 1));

endfig;

end;
