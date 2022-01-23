input euclid;

% p. 215

beginfig(1)
  u = 72bp;

  numeric ab, ac, bc;

  ab =   u;
  ac = .9u;
  bc = .8u;

  pair A, B[], C[], D[], E, K[];

  % base triangle

  A = origin;
  B1 = A + ab * right;
  C1 = semicircle(A,  ac) intersectionpoint semicircle(B1, bc);

  draw A--B1--C1--cycle;

  % second triangle

  D1 = .5 [B1, C1];

  C2 = A +   distance(A, B1) * unitvector(D1 - A);
  B2 = A + 2 distance(A, D1) * right;

  K1 = .5[A, B2];

  draw A--B2--C2--cycle;

  draw C2--K1;

  % third triangle

  D2 = .5 [B2, C2];

  C3 = A +     distance(A, B2) * unitvector(D2 - A);
  B3 = A + 2 * distance(A, D2) * right;

  K2 = .5[A, B3];

  draw A--B3--C3--cycle;

  draw C3--K2;

  % fourth triangle;

  E = A + distance(A, B2) * unitvector(C2 - A);
  draw C2--E dashed withdots scaled 0.25;
  draw B1--E dashed withdots scaled 0.25;

  label.bot("A", A);

  label.bot("B", B1);
  label.bot("B2", B2);
  label.bot("B3", B3);

  label.top("C", C1);
  label.top("C2", C2);
  label.top("C3", C3);

  label.lft("D", D1);
  label.lft("D2", D2);

  label.bot("K", K1);
  label.bot("K2", K2);

endfig;

end;
