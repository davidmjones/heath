input euclid;

beginfig(1)
  numeric ab, bc;

  ab = 60;
  bc = 25;

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

  path KGL;

  numeric dg;

  dg = ab - bc;

  KGL = circle(D, dg);

  draw KGL;

  pair G, L;

  G = D + dg * up rotated -30;
  L = D + dg * up rotated  30;

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
  label.bot ("D", D);
  label.top("G", G shifted up shifted left);
  label.rt ("H", H);
  label.rt ("K", K);
  label.top("L", L shifted up shifted right);

endfig;

end;
