prologues := 3;

if outputformat = "svg":
  outputtemplate := "%j.svg";
else:
  if outputformat = "eps":
    outputtemplate := "%j.mps";
  else:
    outputtemplate := "%j.png";
  fi
fi

defaultfont := "cmmi5";
labeloffset := 1.5;

boolean drawDots;
drawDots := true;

vardef circle(expr center, radius) =
  fullcircle scaled 2radius shifted center
enddef;

vardef ray(expr A, B) =
  A--(A + 1000 * unitvector(B - A))
enddef;

vardef triangle(expr A, B, C) =
  A--B--C--cycle
enddef;

vardef distance(expr P, Q) = 
  (xpart P - xpart Q) ++ (ypart P - ypart Q)
enddef;

vardef drawdots(text list) = 
  if drawDots:
    pickup pencircle scaled 2pt;

    for x = list:
      drawdot x;
    endfor
  fi
enddef

endinput;
