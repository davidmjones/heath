input euclid;

% p. 200

beginfig(1)
  r = 144bp;

  theta = 20;

  pair A, B, C, D, X;

  A = origin;
  B = A + r * right;

  X = .4 [A, B];

  C = X + .4r * left rotated   25;
  D = X + .4r * right rotated -40;

  draw A--B;
  draw C--X--D;

  label.lft("A", A);
  label.rt ("B", B);
  label.bot("C", C);
  label.bot("D", D);
  label.top("X", X);
endfig;

end;
