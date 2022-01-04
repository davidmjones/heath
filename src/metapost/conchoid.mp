input euclid;

% p. 160

numeric conchoid_step_size;
conchoid_step_size := 10;

vardef conchoid_point(expr pole, a, b, x) =
  (pole + ((b ++ x) + a) * unitvector((x, 0) - pole))
enddef;

vardef conchoid_branch(expr pole, a, b, min_x, max_x) =
  pair start;

  start = conchoid_point(pole, a, b, min_x);
  
  draw start
    for i = (min_x + conchoid_step_size) step conchoid_step_size until max_x:
    ..conchoid_point(pole, a, b, i)
  endfor;
enddef;

vardef conchoid(expr a, b, min_x, max_x) =
  path axis;

  axis = (min_x, 0)--(max_x, 0);

  draw axis;

  pair pole;

  pole = (0, -b);

  drawdot pole;

  conchoid_branch(pole, a, b, min_x, max_x);

  conchoid_branch(pole, -a, b, min_x, max_x);
enddef;

beginfig(1)
  b = 18bp;
  a = 36bp;

  numeric limit;
  limit = 100;

  conchoid(a, b, -limit, limit);
endfig;

end;
