input euclid;

% p. 173

beginfig(1)
  u = 72bp;

  pair A, B, C, D, E, F;

  B = origin;
  C = origin + u * right;
  A = (.3u, .6u);

  D = .2 [B, C];
  E = .3 [A, C];

  draw A--B--C--cycle;

  draw B--E;
  draw A--D;

  F = (A--D) intersectionpoint (B--E);

  label.top("A", A);
  label.bot ("B", B);
  label.bot("C", C);
  label.bot("D", D);
  label.rt("E", E);
  label.rt("F", F);

endfig;

end;
