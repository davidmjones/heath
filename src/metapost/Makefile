LIB=../../lib/metapost

export MPINPUTS=.:$(LIB):

vpath %.mp $(LIB)

MPEPS=mpost -s 'outputformat="eps"'
MPSVG=mpost -s 'outputformat="svg"'
MPPNG=mpost -s 'outputformat="png"'

ALL=$(shell find . -name "*.mp")

%.mps : %.mp euclid.mp
	$(MPEPS) $<

%.svg : %.mp euclid.mp
	$(MPSVG) $^

%.png : %.mp euclid.mp
	$(MPPNG) $^

all: $(ALL:.mp=.mps)

scratch: scratch.mps

clean :
	-rm *.log *.mpx *.mps *.svg *.png
