input euclid;

% p. 239a

beginfig(1)
  r1 = 72bp;
  r2 = 1.25 r1;

  pair O[], A, B, C, Y, X;

  O1 = origin;
  O2 = O1 + .8 * r1 * right;

  A = O1 + r1 * right;
  B = O1 + r1 * left;

  Y = O1 + r1 * (up rotated 45);
  X = O1 + r1 * (up rotated -45);

  draw circle(O1, r1);
  draw circle(O2, r2);

  dashedline(A--B);
  dashedline(O1--X);
  dashedline(O2--X);

  label.rt("A", A);
  label.lft("B", B);
  label.bot("O", O1 shifted down);
  label.bot(btex $\scriptscriptstyle O'$ etex, O2);

  label.ulft("Y", Y);
  label.urt("X", X);

  label.lft("C", O1 + r1 * (left rotated 30) shifted left);

  label.urt(btex $\scriptscriptstyle C'$ etex, O2 + r2 * (right rotated 30));

  drawdots(X);
endfig;

end;
