input euclid;

% p. 231

beginfig(1)
  u = 72bp;

  pair A, Ap, B, C;

  B = origin;
  C = B + u * right;

  A = B + (.75 * u * right) + (.6 * u * up);

  Ap = A yscaled -1;

  path abc;

  abc = A--B--C--cycle;

  draw abc;

  draw B--Ap--C;
  draw A--Ap;

  transform T;

  T = identity shifted (1.5 u * right);

  draw abc transformed T;

  label.top("A", A);
  label.lft("B", B);
  label.rt("C", C);

  label.bot(btex $\scriptscriptstyle A''$ etex, Ap);

  label.top(btex $\scriptscriptstyle A'$ etex, A transformed T);
  label.lft(btex $\scriptscriptstyle B'$ etex, B transformed T);
  label.rt(btex $\scriptscriptstyle C'$ etex, C transformed T);

endfig;

end;
