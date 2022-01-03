input euclid;

beginfig(1)
  numeric ab, bc;

  bc = 30;
  ab = 15;

  pair A, B, C, D, E, F, G, H, K, L;

  A = origin;
  B = A + ab * ((1, 0) rotated 30);
  C = B + bc * (0, 1);

  drawdot A;
  drawdot B;
  drawdot C;

  draw B--C;

  draw A--B;

  D = A + ab * (unitvector(B - A) rotated 60);

  drawdot D;

  draw triangle(A, B, D);

  E = D + 1.2 * (ab + bc) * unitvector(A - D);
  F = D + 1.2 * (ab + bc) * unitvector(B - D);

  path DE, DF;

  DE = D--E;
  DF = D--F;

  draw DE;
  draw DF;

  path CGH, GKL;

  CGH = circle(B, bc);

  G = CGH intersectionpoint DF;

  draw CGH;
  drawdot G;

  GKL = circle(D, ab + bc);

  draw GKL;

  draw D--G;
  
  L = GKL intersectionpoint DE;

  H = CGH intersectionpoint ray(B, D);
  K = GKL intersectionpoint ray(B, D);

  label.lft("A", A);
  label.rt ("B", B);
  label.top("C", C);
  label.top("D", D);
  label.bot("E", E);
  label.rt("F", F);
  label.rt ("G", G);
  label.lft("H", H);
  label.lft("K", K);
  label.llft("L", L);

  drawdots(A, B, C, D, G, L);

endfig;

end;
