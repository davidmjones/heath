input euclid;

beginfig(1)
  u = 108bp;

  pair A, B, C, D, E, F;

  A = origin;
  B = A + u * right;

  C = .6 [A, B] + .25u * up;
  D = C yscaled -1;

  E = .75 [A, B];

  draw A--C--B;
  draw A--D--B;

  draw A--E--B;

  draw C--E--D;

  F = .8 [A, B] + .09u * down;

  draw A--F--B;
  draw E--F;

  % TODO: Figure out how ellipses work.

  draw (C..D..F..cycle) xscaled .3;

  label.lft("A", A);
  label.rt("B", B);

  label.top("C", C);
  label.bot("D", D);

  label.top("E", E + 2right);
  label.top("F", F);
endfig;

end;
