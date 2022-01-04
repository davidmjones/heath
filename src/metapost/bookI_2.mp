input euclid;

beginfig(1)
  numeric ab, bc;

  bc = 30;
  ab = 15;

  pair A, B, C;

  A = origin;
  B = A + ab * dir 30;
  C = B + bc * up;

  path BC;

  BC = B--C;

  draw BC;

  draw_marked(BC, 1);

  draw A--B;

  pair D;

  D = A + ab * (unitvector(B - A) rotated 60);

  draw triangle(A, B, D);

  pair E, F;

  E = D + 1.2 * (ab + bc) * unitvector(A - D);
  F = D + 1.2 * (ab + bc) * unitvector(B - D);

  path DE, DF;

  DE = D--E;
  DF = D--F;

  draw DE;
  draw DF;

  path CGH, GKL;

  CGH = circle(B, bc);

  pair G;
  G = CGH intersectionpoint DF;

  draw CGH;

  GKL = circle(D, ab + bc);

  draw GKL;

  draw D--G;
  
  pair H, K, L;

  H = CGH intersectionpoint ray(B, D);
  K = GKL intersectionpoint ray(B, D);
  L = GKL intersectionpoint DE;

  label.lft("A", A);
  label.rt ("B", B shifted 1.5up);
  label.top("C", C);
  label.top("D", D);
  label.bot("E", E);
  label.rt("F", F);
  label.rt ("G", G shifted up);
  label.lft("H", H);
  label.lft("K", K);
  label.llft("L", L);

  drawdots(A, B, C, D, G, L);

endfig;

end;
