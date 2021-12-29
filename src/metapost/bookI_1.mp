input euclid;

beginfig(1)
  r=1cm;

  pair A, B, C, D, E;
  A = (0, 0);
  B = (r, 0);

  draw line(A, B);

  path lcircle, rcircle;
  lcircle = circle(A, r);
  rcircle = circle(B, r);

  draw lcircle;
  draw rcircle;

  C = rcircle intersectionpoint lcircle;

  draw line(A, C);
  draw line(B, C);

  D = A - (r, 0);
  E = B + (r, 0);

  label.lft(btex $A$ etex, A);
  label.rt (btex $B$ etex, B);
  label.top(btex $C$ etex, C);
  label.lft(btex $D$ etex, D);
  label.rt (btex $E$ etex, E);
endfig;

end;
