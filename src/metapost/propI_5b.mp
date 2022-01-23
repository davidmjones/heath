input euclid;

beginfig(1)
  u = 18bp;

  pair A, B, C;

  B = (-u, 0);
  C = ( u, 0);

  A = .5[B, C];

  A := A + (2.5u * up);

  draw triangle(A, B, C);

  label.top("A", A);
  label.lft("B", B);
  label.rt ("C", C);
endfig;

end;
