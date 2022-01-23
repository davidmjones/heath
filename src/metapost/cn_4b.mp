input euclid;

% p. 230a

beginfig(1)
  u = 72bp;

  pair A[], B[], C[], D[];

  A1 = origin;
  B1 = A1 + u * right;
  C1 = A1 + (.25 * u * right) + (.6 * u * up);
  D1 = B1 + .5 * u * right;

  draw A1--D1--C1--cycle;

  draw C1--B1;

  mark_angle(C1, B1, A1, 0);

  picture pic;

  pic = currentpicture;

  transform T;

  T = identity shifted (2 u * right);

  draw pic transformed T;

  label.bot("A", A1);
  label.bot("B", B1);
  label.top("C", C1);
  label.bot("D", D1);

  label.bot(btex $\scriptscriptstyle A'$ etex, A1 transformed T);
  label.bot(btex $\scriptscriptstyle B'$ etex, B1 transformed T);
  label.top(btex $\scriptscriptstyle C'$ etex, C1 transformed T);
  label.bot(btex $\scriptscriptstyle D'$ etex, D1 transformed T);

endfig;

end;
