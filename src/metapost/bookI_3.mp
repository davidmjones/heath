input euclid;

beginfig(1)
  numeric ab, c;

  ab = 30;
  c  = 20;

  pair A, B, C, D, E, F, G, H, K, L;

  A = origin;
  B = A + ab * right;

  C = A + 1.2 * c * up;

  draw (C + .5c * left)--(C + .5c * right);

  draw A--B;

  path FED;

  FED = circle(A, c);

  draw FED;

  D = c * up rotated 45;

  draw A--D;

  E = A + c * right;
  F = E rotated -60;

  label.bot("A", A);
  label.bot("B", B);
  label.top("C", C);
  label.top("D", D shifted left);
  label.urt("E", E);
  label.rt("F", F);

  drawdots(A, B, C, D, E, F);

endfig;

end;
