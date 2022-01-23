input euclid;

% p. 210a

beginfig(1)
  u = 108bp;

  numeric theta;

  theta1 = 27;
  theta2 =  5;

  pair A, B, C, D, E, F, P;

  F = origin;
  E = origin + u * right;

  A = .75 [F, E];
  B = A + .5 u * up rotated theta1;

  C = .50 [F, E];
  D = C + .5 u * up rotated theta2;

  D := (xpart D, ypart B);

  P = ray(C, D) intersectionpoint ray(A, B);

  pair alpha, beta, gamma, pi;

  transform T;
  T = identity shifted (.7 * distance(A, C) * left);

  alpha = A transformed T;
  beta  = B transformed T;
  gamma = C transformed T;

  pi = (alpha--beta) intersectionpoint (C--D);

  draw A--B;

  draw B--P dashed withdots scaled .25;

  draw C--D;

  draw D--P dashed withdots scaled .25;

  draw F--E;

  draw alpha--beta;

  drawdots(gamma);

  label.bot("A", A);
  label.bot("C", C);
  label.bot("E", E);
  label.bot("F", F);

  label.rt("B", B);
  label.lft("D", D);
  label.top("P", P);

  label.ulft(btex $\scriptscriptstyle\alpha$ etex, alpha shifted up shifted 2 left);
  label.bot (btex $\scriptscriptstyle\beta$ etex, beta shifted 2 left);
  label.bot (btex $\scriptscriptstyle\gamma$ etex, gamma);
  label.lft (btex $\scriptscriptstyle\pi$ etex, pi);
endfig;

end;
