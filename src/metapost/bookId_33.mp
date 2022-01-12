input euclid;

% p. 217a

beginfig(1)
  u = 72bp;

  numeric ab, ac, bc;

  ab =   u;
  ac = .9u;
  bc = .7u;

  pair A, B, C, D, H;

  B = origin;
  C = B + ab * right;
  A = semicircle(B,  ac) intersectionpoint semicircle(C, bc);

  draw A--B--C--cycle;

  D = .4[B, C];

  draw A--D;

  label.top("A", A);
  label.bot("B", B);
  label.bot("C", C);
  label.bot("D", D);

endfig;

end;
