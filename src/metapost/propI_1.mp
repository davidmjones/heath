input euclid;

beginfig(1)
  r=1.5cm;
  path circle, left, right;
  numeric offset;
  offset = .5r;
  circle = fullcircle scaled 2r;
  right  = circle shifted ( offset, 0);
  left   = circle shifted (-offset, 0);
  draw right;
  draw left;
  pair A, B, C, D, E;
  A = (-r + offset, 0);
  E = ( r + offset, 0);
  D = (-r - offset, 0);
  B = ( r - offset, 0);
  C = right intersectionpoint left;
  label.lft(btex $A$ etex, A);
  label.rt (btex $B$ etex, B);
  label.lft(btex $D$ etex, D);
  label.rt (btex $E$ etex, E);
  label.top(btex $C$ etex, C);
  draw A--B--C--cycle;
endfig;

end;
