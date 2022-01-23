input euclid;

% p. 181

beginfig(1)
  r = 72bp;

  pair a, b, V;

  %% Left side

  V = origin;

  numeric theta;

  theta := 40;

  numeric num_lines;

  num_lines := 10;

  numeric start_angle;

  start_angle = -90 - (theta/2);

  for i = 0 step 1 until (num_lines - 1):
    draw V--(r * dir (start_angle + i * (theta/(num_lines - 1))));
  endfor;

  draw V--(.5r * dir (90 + (theta/2))) dashed withdots scaled .25;
  draw V--(.5r * dir (90 - (theta/2))) dashed withdots scaled .25;

  label.rt("V", V);

  label.lft("a", V + (r * dir start_angle));

  label.rt ("b", V + (r * dir (start_angle + theta)));

  %% Right side

  pair A, B;

  V := origin + 2r * right;
  A := origin +  r * right;
  B := origin + 3r * right;

  draw A--B;



  for theta = -80 step 10 until 80:
    draw V--(V + r * dir(90 + theta)) dashed withdots scaled .25;
  endfor;

  label.bot("A", A);
  label.bot("V", V);
  label.bot("B", B);

  draw V--(V + r * dir(70));

  label.top("C", V + r * dir(70));

endfig;

end;
