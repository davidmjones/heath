input euclid;

% p. 175

beginfig(1)
  u = 144bp;

  s = .25 u;

  numeric theta;

  theta = 30;

  pair A, B, C, D;

  A = origin;
  B = A + (u * right);

  C = A shifted (s * up + 5 left);
  D = B shifted (s * up + 5 left);

  pair P, S;

  path r[];

  r2 = A--B;
  r1 = C--D;

  P = origin + .2u * right;

  S = P + .9 * (s/sind theta) * (dir theta);

  draw P--S;

  draw r1;
  draw r2;

  label.rt("r", D);
  label.rt(btex $\scriptscriptstyle r'$ etex, B);

  label.bot("P", P);
  label.rt("S", S);

endfig;

end;
