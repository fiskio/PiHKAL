all: fetch pdf clean view

fetch:
	bibsync -b pihkal.bib -d papers -v -s -u -r -j -V -f $(ARXIV)

pdf:
	pdflatex pihkal.tex
	biber pihkal
	pdflatex pihkal.tex

view:
	open pihkal.pdf

clean:
	rm *aux *bcf *log *xml *blg *bbl

