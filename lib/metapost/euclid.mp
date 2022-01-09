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

pickup pencircle scaled 1bp;  % set default line width
defaultpen := savepen;


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
  (A--(A + 1024 * unitvector(B - A)))
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
enddef;

% MetaPost: A User's Manual (May 21, 2014), Figure 47

numeric mark_size;
mark_size = 4pt;

% Change angle of mark from 90 to 120

numeric markangle;
markangle = 120;

def draw_mark(expr p, a) =
  begingroup
    save t, dm; pair dm;

    t = arctime a of p;

    dm = mark_size * unitvector direction t of p rotated markangle;

    draw (-.5dm .. .5dm) shifted point t of p;
  endgroup
enddef;

picture mark_pattern;

def draw_marked(expr p, n) =
  begingroup
    save amid;

    amid = .5 * arclength p;

    for i=-(n-1)/2 upto (n-1)/2:
      draw_mark(p, amid + .6 mark_size * i);
    endfor

    draw p if known mark_pattern: dashed mark_pattern fi;
  endgroup
enddef;

% MetaPost: A User's Manual (May 21, 2014), Figure 48

numeric angle_radius;
angle_radius=8pt;

def mark_angle(expr a, b, c, n) =
  begingroup
    save s, p;

    path p;

    p = unitvector(a-b){(a-b) rotated 90}..unitvector(c-b);

    s = .9 mark_size/length(point 1 of p - point 0 of p);

    if s < angle_radius: s := angle_radius; fi

    draw_marked(p scaled s shifted b, n);
  endgroup
enddef;

def mark_rt_angle(expr a, b, c) =
  draw ((1,0)--(1,1)--(0,1)) zscaled (angle_radius * unitvector(a-b)) shifted b
enddef;

endinput;
