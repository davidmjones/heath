input euclid;

% p. 217a

beginfig(1)
  u = 72bp;

  numeric ab, ac, bc;

  ab =   u;
  ac = .9u;
  bc = .7u;

  pair A, B, C, D, H;

  A = origin;
  B = A + ab * right;
  C = semicircle(A,  ac) intersectionpoint semicircle(B, bc);

  draw A--B--C--cycle;

  H = .5 [B, C];

  D = A + 2 * distance(A, H) * unitvector(H - A);

  draw A--B--D--cycle;

  label.bot("A", A);
  label.bot("B", B);
  label.top("C", C);
  label.top("D", D);
  label.top("H", H);

endfig;

end;
