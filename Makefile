all: paper.pdf

paper.pdf:

	pdflatex paper.tex 
	bibtex paper
	pdflatex paper.tex
	pdflatex paper.tex

clean:	
	rm -f paper.pdf *.aux *.blg *.bbl *.log *.tmp *.xref *.idv *.4og *.4ct *.lg *.4tc *~

mac: paper.pdf 
	open -a preview.app paper.pdf 

