input euclid;

% p. 216

beginfig(1)
  l = 4 * 72bp;
  s = 54bp;
  b = 36bp;

  path baseline, topline;

  baseline = origin--(origin + l * right);
  topline  = baseline shifted (s * up);

  draw baseline;
  draw topline;

  pair A, B, C, D, E, F, G, H, J, K, L, M;

  A = origin + 36 right;
  C = A + b * right;
  B = .6[A, C] + s * up;

  E = C + b * right;
  G = E + b * right;
  J = G + b * right;

  L = J + b * right;

  D = B + b * right;
  F = D + b * right;
  H = F + b * right;
  K = H + b * right;

  M = K + b * right;

  draw A--B--C--D--E--F--G--H--J--K;

  draw L--M;

  label.bot("A", A);
  label.bot("C", C);
  label.bot("E", E);
  label.bot("G", G);
  label.bot("J", J);

  label.top("B", B);
  label.top("D", D);
  label.top("F", F);
  label.top("H", H);
  label.top("K", K);
endfig;

end;
