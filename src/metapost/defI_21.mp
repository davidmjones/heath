input euclid;

% p. 188

beginfig(1)
  r = 24bp;

  pair A, B, C, D;

  A = origin +   r * left;
  C = origin +   r * right + down;
  B = origin + .6r * up + 2left;
  D = origin + 1.5r * up;

  draw A--B--C--D--cycle;
endfig;

end;
