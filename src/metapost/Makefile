MPEPS=mpost -s 'outputformat="eps"'
MPSVG=mpost -s 'outputformat="svg"'
MPPNG=mpost -s 'outputformat="png"'

%.eps : %.mp
	$(MPEPS) $<

bookI : bookI.eps

clean :
	-rm *.log *.mpx *.mps *.svg *.png
