input euclid;

% p. 209

beginfig(1)
  h = 54bp;

  l = h * phi;

  pair A, B, C, D;

  B = origin;
  A = B + l * right;
  D = B + h * up;
  C = D + l * right;

  draw A--B--D--C--cycle;

  draw B--C;

  label.bot("A", A);
  label.bot("B", B);
  label.top("C", C);
  label.top("D", D);
endfig;

end;
