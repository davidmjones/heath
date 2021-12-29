prologues := 3;

if outputformat = "svg":
  outputtemplate := "%j-%c.svg";
else:
  if outputformat = "eps":
    outputtemplate := "%j-%c.mps";
  else:
    outputtemplate := "%j-%c.png";
  fi
fi

endinput;
