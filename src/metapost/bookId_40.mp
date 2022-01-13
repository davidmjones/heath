input euclid;

% p. 230b

beginfig(1)
  u = 72bp;
  o = 9bp;

  numeric theta;

  theta = 30;

  pair O, A, B, C;

  O = origin;
  A = O + u * right;
  B = O + .9 u * (up rotated theta);
  C = .55 [B, A];

  draw B--O--A--cycle;
  draw A--(A + o * right);
  draw B--(B + o * (up rotated theta));

  draw O--C;

  draw C--(C + o * (unitvector(C - O)));

  picture pic;

  pic = currentpicture;

  transform T;

  T = identity shifted (2 u * right);

  draw pic transformed T;

  label.bot("O", O);
  label.bot("A", A);
  label.lft("B", B);
  label.top("C", C shifted up shifted left);
  label.lft("k", .5[O, B]);
  label.bot("h", .5[O, A]);
  label.top("l", O + (distance(O, C) + o) * unitvector(C - O));

  label.bot(btex $\scriptscriptstyle O'$ etex, O transformed T);
  label.bot(btex $\scriptscriptstyle A'$ etex, A transformed T);
  label.lft(btex $\scriptscriptstyle B'$ etex, B transformed T);
  label.top(btex $\scriptscriptstyle C'$ etex, (C shifted up shifted left) transformed T);
  label.lft(btex $\scriptscriptstyle k'$ etex, (.5[O, B]) transformed T);
  label.bot(btex $\scriptscriptstyle h'$ etex, (.5[O, A]) transformed T);
  label.top(btex $\scriptscriptstyle l'$ etex, (O + (distance(O, C) + o) * unitvector(C - O)) transformed T);
endfig;

end;
