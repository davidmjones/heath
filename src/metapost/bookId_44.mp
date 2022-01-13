input euclid;

% p. 238a

beginfig(1)
  r1 = 72bp;
  r2 = 1.25 r1;

  pair O[], A, B, C, Y, X;

  O1 = origin;
  O2 = O1 + .8 * r1 * right;

  A = O1 + r1 * left;
  B = O1 + r1 * right;

  Y = O1 + r1 * (up rotated 45);
  X = O1 + r1 * (up rotated -45);

  draw circle(O1, r1);
  draw circle(O2, r2);

  dashedline(A--B);
  dashedline(O1--Y);
  dashedline(O2--Y);

  label.lft("A", A);
  label.rt ("B", B);
  label.top("O", O1 shifted right shifted up);
  label.top(btex $\scriptscriptstyle O'$ etex, O2 shifted up shifted right);

  label.ulft("Y", Y);
  label.urt("X", X);

  label.ulft("C", O1 + r1 * (left rotated -20));

  label.urt(btex $\scriptscriptstyle C'$ etex, O2 + r2 * (right rotated 30));

  drawdots(X);
endfig;

end;
