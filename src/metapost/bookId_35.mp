input euclid;

% p. 219

beginfig(1)
  u = 144bp;

  path r;

  r = origin..(origin + u * right);

  draw r;

  pair P;

  P = (18, 45);

  path s;

  s = r shifted (ypart P * up);

  draw s;

  pair Q, R, R[];

  Q = r intersectionpoint ray(P, P + down);

  draw P--Q;

  R = Q + distance(P, Q) * right;

  draw P--R;

  R1 = R + distance(P, R) * right;

  draw P--R1;

  label.top("P", P);
  label.bot("Q", Q);
  label.bot("R", R);
  label.bot(btex $\scriptscriptstyle R'$ etex, R1);

  label.top("s", P + .75 u * right);
  label.bot("r", Q + .6 u * right);

  label(btex $\scriptscriptstyle\omega$ etex, P shifted 8 down shifted 3 right);
  label(btex $\scriptscriptstyle\omega$ etex, R shifted 7 left shifted 3 up);

endfig;

end;
