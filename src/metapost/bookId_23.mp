input euclid;

% p. 208

beginfig(1)
  u = 144bp;
  s = 54bp;

  pair A, B, C, D, E, F, G, H, K, L;

  D = origin;
  C = D + u * right;

  B = D + s * up;
  A = C + 1.3s * up;

  L = .3 [D, C];
  H = .45 [D, C];
  F = .6 [D, C];

  K = .3 [B, A];
  G = .45 [B, A];
  E = .6 [B, A];

  draw D--C;
  draw B--A;
  draw L--K;
  draw H--G;
  draw F--E;

  label.top("A", A);
  label.top("B", B);
  label.bot("C", C);
  label.bot("D", D);
  label.top("E", E);
  label.bot("F", F);
  label.top("G", G);
  label.bot("H", H);
  label.top("K", K);
  label.bot("L", L);
endfig;

end;
