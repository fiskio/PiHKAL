all:
	pdflatex list.tex
	biber list
	pdflatex list.tex

clean:
	rm *aux *bcf *log *xml *blg
