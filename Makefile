all: update pdf clean view

update:
	bibsync -b pihkal.bib -d papers -v -u -r -j -V

fetch:
	bibsync -b pihkal.bib -d papers -s -j -V -f $(ARXIV)
	$(MAKE) all

pdf:
	pdflatex pihkal.tex
	biber pihkal
	pdflatex pihkal.tex

view:
	open pihkal.pdf

clean:
	rm *aux *bcf *log *xml *blg *bbl

