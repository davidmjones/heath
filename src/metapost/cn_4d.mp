input euclid;

% p. 231a

beginfig(1)
  u = 36bp;

  numeric theta;

  theta = 20;

  pair A, B, C, D, D[];

  A = origin;
  B = A + u * left;
  C = A + u * right;
  D = A + 2 u * up;

  D2 = D rotated theta;
  D3 = D rotated -theta;

  draw B--C;

  draw A--D;

  picture base;

  base = currentpicture;

  dashedline (A--D2);
  dashedline (A--D3);

  transform T;

  T = identity shifted (3 u * right);

  draw base transformed T;

  label.bot("A", A);
  label.bot("B", B);
  label.bot("C", C);

  label.top("D", D);

  label.top(btex $\scriptscriptstyle D''$ etex, D2);
  label.top(btex $\scriptscriptstyle D'''$ etex, D3);

  label.bot(btex $\scriptscriptstyle A'$ etex, A transformed T);
  label.bot(btex $\scriptscriptstyle B'$ etex, B transformed T);
  label.bot(btex $\scriptscriptstyle C'$ etex, C transformed T);
  label.top(btex $\scriptscriptstyle D'$ etex, D transformed T);
endfig;

end;
