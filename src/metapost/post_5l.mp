input euclid;

% p. 209

beginfig(1)
  h = 54bp;

  l = h * phi;

  pair A, B, C, D;

  A = origin;
  B = A + l * right;
  C = A + h * up;
  D = C + l * right;

  draw A--B--D--C--cycle;

  draw A--D dashed withdots scaled .25;
  draw B--C dashed withdots scaled .25;

  label.bot("A", A);
  label.bot("B", B);
  label.top("C", C);
  label.top("D", D);
endfig;

end;
