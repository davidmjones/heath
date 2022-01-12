input euclid;

% p. 217a

beginfig(1)
  u = 72bp;

  pair A, A[], B, C, C[];

  B = origin;
  A = B + u * left;
  C = B + .75 * u * up;

  draw A--B--C--cycle;

  A1 = B + 1.25 u * left;
  C1 = B + 1.25 u * up;

  draw A1--B--C1--cycle;

  draw A--C1 dashed withdots scaled .25;

  label.bot("A", A);
  label.bot(btex $\scriptscriptstyle B (B')$ etex, B);
  label.rt ("C", C);

  label.bot(btex $\scriptscriptstyle A'$ etex, A1);
  label.rt (btex $\scriptscriptstyle C'$ etex, C1);
endfig;

end;
