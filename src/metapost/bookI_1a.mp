input euclid;

beginfig(1)
  r=1cm;

  pair A, B, C, D, E, F;

  A = (0, 0);
  B = (r, 0);

  draw line(A, B);

  path lcircle[], rcircle[];

  lcircle1 = circle(A, r);
  rcircle1 = circle(B, r);

  draw lcircle1;
  draw rcircle1;

  C = rcircle1 intersectionpoint lcircle1;

  D = A - (r, 0);
  E = B + (r, 0);

  draw line(D, E);

  lcircle2 = circle(A, 2r);
  rcircle2 = circle(B, 2r);

  draw lcircle2;
  draw rcircle2;

  F = rcircle2 intersectionpoint lcircle2;

  draw line(A, F);
  draw line(B, F);

  label.lft(btex $A$ etex, A shifted ( 3, -5));
  label.rt (btex $B$ etex, B shifted (-3, -5));
  label.top(btex $C$ etex, C);
  label.lft(btex $D$ etex, D);
  label.rt (btex $E$ etex, E);
  label.top(btex $F$ etex, F);

  pickup pencircle scaled 2pt;

  drawdot A;
  drawdot B;
  drawdot C;
  drawdot D;
  drawdot E;
  drawdot F;

endfig;

end;
