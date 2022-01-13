input euclid;

% p. 239b

beginfig(1)
  r2 = 72bp;
  r1 = 1.25 r2;

  pair O[], A, B, C, P, Q;

  O1 = origin;
  O2 = O1 + (r1 + .75 r2) * right;

  A = O1 + r1 * right;
  B = O1 + r1 * left;

  P = O1 + r1 * (up rotated -30);
  Q = O1 + r1 * (up rotated  20);

  draw circle(O1, r1);
  draw circle(O2, r2);

  draw B--(O2 + r2 * right);
  dashedline(O1--P);
  dashedline(O1--Q);
  dashedline(O2--P);
  dashedline(O2--Q);

  label.lrt("A", A shifted down);
  label.lft("B", B);
  label.bot("O", O1 shifted down);
  label.bot(btex $\scriptscriptstyle O'$ etex, O2);

  label.top("P", P);
  label.top("Q", Q);

  label.lft("C", O1 + r1 * (left rotated 30) shifted left);

  label.urt(btex $\scriptscriptstyle C'$ etex, O2 + r2 * (right rotated -30) shifted right);
endfig;

end;
