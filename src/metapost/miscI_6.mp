input euclid;

% p. 240

beginfig(1)
  r = 72bp;

  sigma = 72bp;

  pair O, M, M[], P, Q, S;

  O = origin;

  M = O + r * right rotated 30;

  P = M + (sigma/2) * up;

  path kuklos;

  kuklos = circle(O, r);

  pair X, Y;

  % There's probably a better way to cut off an arc.  It's probably
  % also not necessary to be this slavish to the original.

  theta = 20;

  X = O + r * left rotated theta;

  draw (kuklos cutafter X) rotated -theta;

  draw O--M;

  draw M--(M + .75 * sigma * up);

  draw O--P;

  M1 = M reflectedabout(O, P);

  Q = O + 1.2r * unitvector(M1 - O);

  draw O--Q;

  dashedline(M--M1);

  S = .5[M, M1];

  label.bot("O", O);
  label.rt("P", P);
  label.top("Q", Q);
  label.bot("S", S shifted down);
  label.bot("M", M shifted 2down shifted 2left);
  label.lft(btex $\scriptscriptstyle M'$ etex, M1 shifted 3down);

endfig;

end;
