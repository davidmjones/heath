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

vardef circle(expr center, radius) =
  fullcircle scaled 2radius shifted center
enddef;

vardef segment(expr A, B) =
  A--B
enddef;

vardef triangle(expr A, B, C) =
  A--B--C--cycle
enddef;

vardef distance(expr P, Q) = 
  (xpart P - xpart Q) ++ (ypart P - ypart Q)
enddef;

endinput;
