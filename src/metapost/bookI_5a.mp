input euclid;

beginfig(1)
  r = 36bp;

  pair O;

  O = origin;

  pair A, B;

  numeric angle;
  angle = 30;

  A = r * (left  rotated  angle);
  B = r * (right rotated -angle);

  path BAx;

  BAx = circle(O, r);

  draw BAx;

  draw triangle(A, O, B);

  pair a, b;

  a = BAx intersectionpoint ray(A, O);
  b = BAx intersectionpoint ray(B, O);

  label.top("O", O);
  label.lft("A", A);
  label.rt("B", B);

  draw O--a dashed withdots scaled .25;
  draw O--b dashed withdots scaled .25;

  save mark_pattern;

  picture mark_pattern;

  save angle_radius;

  angle_radius := 16pt;

  mark_pattern := withdots scaled .25;

  % from BO to BA
  mark_angle(O, B, A, 0);

  % from AO to AB
  mark_angle(B, A, O, 0);

  angle_radius := 12pt;

  % The placement of these arcs could probably be improved.

  a := A rotated 30;

  % from AB to Aa
  mark_angle(a, A, B, 0);

  b := B rotated -30;

  % from BA to Bb
  mark_angle(A, B, b, 0);

  label.urt ("E", A shifted 6right);
  label.ulft("F", B shifted 7.5left);

  label.lrt ("C", A shifted 3right);
  label.llft("D", B shifted 3left);
endfig;

end;
