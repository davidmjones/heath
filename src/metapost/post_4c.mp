input euclid;

% p. 201

beginfig(1)
  r = 36bp;

  theta = 20;

  pair A, B, C, D, F[], M[], H, L;

  B = origin;
  C = B + 2r * right;

  A = .5 [B, C];

  D = A + 1.5r * up;

  F1 = A + .8r * dir(180 - theta);
  M1 = A + .8r * (dir - theta);

  draw B--C;
  draw A--D;
  draw F1--M1;

  F2 = C  + .5r * right;
  M2 = F2 + 2r * right;
  H = .5 [F2, M2];
  
  L = H + 1.5r * up;
  
  draw F2--M2;
  draw H--L;

  label.bot("A", A);
  label.lft("B", B);
  label.rt ("C", C);
  label.top("D", D);
  label.top("F", F1);
  label.top("M", M1);

  label.lft("F", F2);
  label.rt ("M", M2);
  label.bot("H", H);
  label.top("L", L);
endfig;

end;
