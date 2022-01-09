input euclid;

% p. 160

numeric conchoid_step_size;
conchoid_step_size := 10;

path current_branch;
  
vardef conchoid_point(expr pole, a, b, x) =
  (pole + ((b ++ x) + a) * unitvector((x, 0) - pole))
enddef;

vardef conchoid_branch(expr pole, a, b, min_x, max_x) =
  save start;

  pair start;

  start = conchoid_point(pole, a, b, min_x);

  current_branch := start
    for i = (min_x + conchoid_step_size) step conchoid_step_size until max_x:
    ..conchoid_point(pole, a, b, i)
  endfor;

  draw current_branch;
enddef;

vardef conchoid(expr a, b, min_x, max_x) =
  save base, pole, top_branch, ray, midpoint;

  path base;

  base = (min_x, 0)--(max_x, 0);

  draw base;

  pair pole;

  pole = (0, -b);

  label.lft("b", .5[origin, pole]);

  path top_branch;

  conchoid_branch(pole,  a, b, min_x, max_x);

  top_branch := current_branch;

  conchoid_branch(pole, -a, b, 2 min_x, 2 max_x);

  path ray;

  pair midpoint;

  for theta = 0 step 15 until 60:
    ray := (0, -1.25b)--(0, 1.2 * a + b/(cosd theta));
    ray := ray rotated -theta shifted pole;
    draw ray;
    midpoint := .5[ray intersectionpoint base, ray intersectionpoint top_branch];
    label.rt("a", midpoint);
  endfor;

  pickup pencircle scaled 2pt;
  drawdot pole;

  pickup defaultpen;

  clip currentpicture to (min_x, -a -10)--(max_x, -a-10)--(max_x, a+10)--(min_x, a+10)--cycle;
enddef;

beginfig(1)
  a = 36bp;
  b = 24bp;

  numeric limit;
  limit = 100;

  conchoid(a, b, -limit, limit);
endfig;

end;
