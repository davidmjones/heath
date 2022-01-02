input euclid;

beginfig(1)
  r=1cm;

  pair A, B, C, D, E;

  A = (0, 0);
  B = (r, 0);

  draw segment(A, B);

  path lcircle, rcircle;

  lcircle = circle(A, r);
  rcircle = circle(B, r);

  draw lcircle;
  draw rcircle;

  C = A + (0, r) rotated 30;

  D = .55[A, C];

  draw segment (A, C);

  path BD;
  BD = segment(B, D);

  draw BD;

  E = rcircle intersectionpoint BD;

  label.lft(btex $A$ etex, A);
  label.rt (btex $B$ etex, B);
  label.top(btex $C$ etex, C);
  label.lft(btex $D$ etex, D);
  label.top(btex $E$ etex, E);

  pickup pencircle scaled 2pt;

  drawdot A;
  drawdot B;
  drawdot C;
  drawdot D;
  drawdot E;

endfig;

end;
