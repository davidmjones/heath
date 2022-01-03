LIB=../../lib/metapost
SRC=../../src/metapost

export MPINPUTS=.:$(LIB):

vpath %.mp $(LIB):$(SRC)

MPEPS=mpost -s 'outputformat="eps"'
MPSVG=mpost -s 'outputformat="svg"'
MPPNG=mpost -s 'outputformat="png"'

ALL=$(notdir $(patsubst %.mp,%.mps, $(wildcard $(SRC)/*.mp)))

%.mps : %.mp euclid.mp
	$(MPEPS) $^

%.svg : %.mp euclid.mp
	$(MPSVG) $^

%.png : %.mp euclid.mp
	$(MPPNG) $^

default: all

all: $(ALL)

scratch: scratch.mps

clean :
	-rm *.log *.mpx *.mps *.svg *.png $(SRC)/*.mpx
