input euclid;

beginfig(1)
  u = 54bp;

  path A;

  A = origin--(u * up);

  for i = 0 step 1 until 2:
    draw A shifted (i * 18 * right);
    label.lft(char(ASCII("A") + i), (i * 18 * right) + (2/3) * u * up);
  endfor;

endfig;

end;
