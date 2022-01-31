SRC=../../src/latex

export TEXINPUTS=.:../../lib/tex:../eps:${SRC}:

all:
	(cd ../eps; make)
	xelatex $(SRC)/elements.tex

test:
	xelatex $(SRC)/test.tex

clean:
	rm *.pdf *.log *.aux *.toc *.out
