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

vardef circle(expr center, radius) =
  fullcircle scaled 2radius shifted center
enddef;

vardef line(expr A, B) =
  A--B
enddef;

vardef triangle(expr A, B, C) =
  A--B--C--cycle
enddef;

endinput;
