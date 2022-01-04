input euclid;

% p. 160

beginfig(1)
  b = 18bp;
  a = 36bp;

  numeric limit;
  limit = 100;

  path base;

  base = (-limit, 0)--(limit, 0);

  pair pole;

  pole = (0, -b);

  drawdot pole;

  draw base;

  pair start;

  numeric bound;
  bound = 70;

  start = pole + ((b ++ bound) + a) * unitvector((-bound, 0) - pole);

  draw start
  for i = (-bound + 10) step 10 until bound:
    ..(pole + ((b ++ i) + a) * unitvector((i, 0) - pole))
  endfor;
endfig;

end;
