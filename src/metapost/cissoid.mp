input euclid;

% p. 164 (cissoid)

vardef cissoid_point(expr i, ABC, O, A, C, frac, r) =
  save E, F, G, H;

  pair E, F, G, H;

  G = O + frac [O, C];
  H = O + frac [O, A];

  E = ABC intersectionpoint (G--(G + r * down));
  F = ABC intersectionpoint (H--(H + r * down));

  ( ray(A, E) intersectionpoint ray(H, F) )
enddef;

beginfig(1)
  r = 72bp;

  save A, B, C, D, E, F, G, H, K, O, P;

  pair A, B, C, D, E, F, G, H, K, O, P;

  path ABC;

  O = origin;

  ABC = circle(O, r);

  A = O + r * right;
  B = O + r * down;
  C = O + r * left;
  D = O + r * up;

  G = O + (2/5) [O, C];
  H = O + (2/5) [O, A];

  E = ABC intersectionpoint (G--(G + r * down));
  F = ABC intersectionpoint (H--(H + r * down));

  P = (A--E) intersectionpoint (H--F);

  K = C + 1.7r * down;

  draw ABC;

  draw C--A;
  draw D--B;

  draw G--E;
  draw H--F;

  draw E--A;

  draw C--K;

  label.rt ("A", A);
  label.bot("B", B shifted right);
  label.lft("C", C);
  label.top("D", D);
  label.bot("E", E);
  label.bot("F", F);
  label.top("G", G);
  label.top("H", H);
  label.lft("K", K);

  label.ulft("P", P);

  label.urt("O", O);

  save num_points;
  numeric num_points;
  num_points = 20;

  save inner, outer;
  path inner, outer;

  inner := B--
    for i = 0 step 1 until (num_points - 1):
        (cissoid_point(i, ABC, O, A, C, (i/num_points), r))--
    endfor
    A;

    draw inner;
    draw inner yscaled -1            dashed withdots scaled .25;
    draw inner yscaled -1 xscaled -1 dashed withdots scaled .25;
    draw inner xscaled -1            dashed withdots scaled .25;

    outer := B
      for i = 0 step 1 until 5:
          --(cissoid_point(i, ABC, O, A, C, (-i/num_points), r))
      endfor;

      draw outer dashed withdots scaled .25;

endfig;

end;
