input euclid;

beginfig(1)
  u = 24bp;

  pair A, B, C, D;

  A = (-u, 0);
  B = ( u, 0);

  C = .6 [A, B];

  C := C + (2u * up);

  draw triangle(A, B, C);

  D = .9 [A, B];

  D := D + (1.8u * up);

  draw A--D;
  draw B--D;
  draw C--D;

  label.bot("A", A);
  label.bot("B", B);
  label.top("C", C);
  label.rt ("D", D);
endfig;

end;
