input euclid;

% p. 238b

beginfig(1)
  r1 = 72bp;
  r2 = 1.25 r1;

  pair O[], A, B, C, Y, X;

  O1 = origin;
  O2 = O1 + 1.5 * r1 * right;

  A = O1 + r1 * right;
  B = O1 + r1 * left;

  Y = O1 + r1 * (up rotated 45);
  X = O1 + r1 * (right rotated 30);

  draw circle(O1, r1);
  draw circle(O2, r2);

  dashedline(B--O2);
  dashedline(O1--X);
  dashedline(O2--X);

  label.lrt("A", A shifted down);
  label.lft ("B", B);
  label.bot("O", O1 shifted down);
  label.bot(btex $\scriptscriptstyle O'$ etex, O2);

  label.ulft("Y", Y);
  label.urt("X", X);

  label.ulft("C", O1 + r1 * (left rotated -20));

  label.urt(btex $\scriptscriptstyle C'$ etex, O2 + r2 * (right rotated 30));
endfig;

end;
