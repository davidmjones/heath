input euclid;

% p. 188

beginfig(1)
  r = 72bp;

  pair A, X, B[], C[], D[];

  A = origin;
  X = A + r * up;

  D[1] = (1/3)[A, X];
  D[2] = (2/3)[A, X];

  B[1] = D[1] + .12r * left;
  B[2] = D[2] + .12r * left;
  C[1] = D[1] + .12r * right;
  C[2] = D[2] + .12r * right;

  draw A--X;

  draw A..B1..B2..X;
  draw A..C1..C2..X;

  label.bot("A", A);
  label.lft("B", B1);
  label.lft("B", B2);
  label.lft("D", D1);
  label.lft("D", D2);
  label.rt("C", C1);
  label.rt("C", C2);

  drawdots(B1, B2, C1, C2, D1, D2)
endfig;

end;
