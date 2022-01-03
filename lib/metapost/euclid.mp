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
drawDots := false;
% drawDots := true;

vardef circle(expr center, radius) =
  fullcircle scaled 2radius shifted center
enddef;

% A line segment starting at A and continuing indefinitely in the
% direction of B (where indefinitely means approximately 14 inches).
% Useful for determining where an extension of a line segment would
% intersect another path.  1024 is infinity/4, which should be large
% enough to exceed any practical image size, but small enough to avoid
% overflow.

vardef ray(expr A, B) =
  A--(A + 1024 * unitvector(B - A))
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

    for dot = list:
      drawdot dot;
    endfor
  fi
enddef

endinput;
