input euclid;

% p. 237

beginfig(1)
  r = 72bp;

  pair O, P, A, B, M[], r[];

  O = origin;

  P = O + .75 r * up;

  A  = P  + .2r * right;
  B  = P  + 1.1r * right;

  M1 = A  + .2r * right;
  M2 = M1 + .15r * right;

  r1 = P + 1.25r * left;
  r2 = P + 1.25r * right;

  draw circle(O, r);

  draw r1--r2;

  draw O--P;

  dashedline(O--A);
  dashedline(O--B);
  dashedline(O--M1);
  dashedline(O--M2);

  label.bot("O", O);
  label.top("P", P);
  label.top("A", A);
  label.top("B", B);

  label("C", O shifted (.25r * left));

  label.top("r", r2);

  label.top("M", M1);
  label.lrt(btex $\scriptscriptstyle M'$ etex, M2 shifted 2 down shifted 2 left);
endfig;

end;
