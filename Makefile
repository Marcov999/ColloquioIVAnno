SECS := $(wildcard secs/*.tex)

all: SlidesColloquio.pdf

SlidesColloquio.pdf: main.tex $(SECS) mstyle.sty
	pdflatex main.tex
	pdflatex main.tex
	mkdir -p build
	mv *.toc build
	mv *.aux build
	mv *.log build
	mv *.out build
	mv *.nav build
	mv *.snm build
	mv main.pdf SlidesColloquio.pdf
	rm -rf build
