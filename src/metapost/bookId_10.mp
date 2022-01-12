input euclid;

% p. 188

beginfig(1)
  r = 72bp;

  pair A, B, C, D, E;

  B = origin;

  A = B + r * left;
  D = B + r * right;

  C = B + r * dir(20);

  E = B + r * dir(120);

  draw circle(B, r);

  draw A--D;

  draw B--C;

  label.lft("A", A);
  label.bot("B", B);
  label.rt("C", C);
  label.rt("D", D);
  label.top("E", E shifted up);
endfig;

end;
