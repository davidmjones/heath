input euclid;

% p. 229

beginfig(1)
  u = 72bp;

  pair A, B, C;

  B = origin;
  C = B + u * right;

  A = B + (.85 * u * right) + (.6 * u * up);

  path abc;

  abc = A--B--C--cycle;

  draw abc;

  transform T;

  T = identity shifted (1.2 u * right);

  draw abc transformed T;

  pair D;

  D = (B transformed T) + (.75 u * right);

  dashedline((A transformed T)--D);

  label.top("A", A);
  label.bot("B", B);
  label.bot("C", C);

  label.bot("D", D);

  label.top(btex $\scriptscriptstyle A'$ etex, A transformed T);
  label.bot(btex $\scriptscriptstyle B'$ etex, B transformed T);
  label.bot(btex $\scriptscriptstyle C'$ etex, C transformed T);

endfig;

end;
