input euclid;

beginfig(1)
  numeric ab, bc;

  ab = 30;
  bc = 50;

  pair A, B, C;

  B = origin;
  A = B + ab * left;
  C = B + bc * dir 120;

  draw A--B;
  draw B--C;

  pair D;

  D = A + ab * (unitvector(B - A) rotated -60);

  draw triangle(A, B, D);

  path CHG;

  CHG = circle(B, bc);

  draw CHG;

  path KGx;

  numeric dg;

  dg = bc - ab;

  draw circle(D, dg);

  pair G, L;

  G = D + dg * dir(-120);
  L = CHG intersectionpoint ray(A, D);

  draw D--G;
  draw D--L;

  pair K;

  K = D + dg * right;

  % TODO: The arcs should extend slightly past D.

  draw circle(B, ab) cutbefore A cutafter D;
  draw circle(A, ab) cutbefore D;

  pair H;

  H = B + bc * dir 30;

  label.lft("A", A);
  label.rt ("B", B);
  label.top("C", C);
  label.rt ("D", D);
  label.bot("G", G shifted left);
  label.rt ("H", H);
  label.rt ("K", K);
  label.bot("L", L);

endfig;

end;
