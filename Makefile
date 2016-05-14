# Latex Makefile
filename=main

pdf:
	pdflatex $(filename)
	bibtex $(filename)
	pdflatex $(filename)
	pdflatex $(filename)

read:
	evince $(filename).pdf &

clean:
	\rm *.log *.aux *.bbl *.blg

