export MPINPUTS=.:../../lib/metapost:

MPEPS=mpost -s 'outputformat="eps"'
MPSVG=mpost -s 'outputformat="svg"'
MPPNG=mpost -s 'outputformat="png"'

%.mps : %.mp ../../lib/metapost/euclid.mp
	$(MPEPS) $<

scratch: scratch.mps

clean :
	-rm *.log *.mpx *.mps *.svg *.png
