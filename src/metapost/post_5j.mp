input euclid;

% p. 210a

beginfig(1)
  u = 108bp;

  numeric theta;

  theta1 = 30;
  theta2 = 15;

  pair A, B, C, D, E, F;

  F = origin;
  E = origin + u * right;

  A = .75 [F, E];
  B = A + .5 u * up rotated theta1;

  C = .50 [F, E];
  D = C + .5 u * up rotated theta2;

  pair alpha, beta, gamma;

  alpha = C;
  beta  = B + distance(A, C) * left;
  gamma = alpha + distance(A, C) * left;

  D := (xpart D, ypart B);

  draw A--B;

  draw C--D;

  draw F--E;

  draw alpha--beta;

  drawdots(gamma);

  label.bot("A", A);
  label.bot("C", C);
  label.bot("E", E);
  label.bot("F", F);

  label.top("B", B);
  label.top("D", D);

  label.ulft(btex $\scriptscriptstyle\alpha$ etex, alpha shifted up shifted 2 left);
  label.bot (btex $\scriptscriptstyle\beta$ etex, beta shifted 2 left);
  label.bot (btex $\scriptscriptstyle\gamma$ etex, gamma);
endfig;

end;
