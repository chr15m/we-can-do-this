SVGS=$(shell ls pages/*.svg)
PDFS=$(SVGS:.svg=.pdf)
PDFS_BLANK=$(foreach pdf,$(PDFS),$(pdf) page-blank.pdf)

all: we-can-do-this-cover_x3.pdf pages_x3.pdf

%.pdf: %.svg
	inkscape --without-gui --file=$< --export-pdf=$@ #--export-text-to-path

pages.pdf: $(PDFS) page-blank.pdf
	pdftk $(PDFS_BLANK) cat output pages.pdf

%_x3.pdf: %.pdf
	gs -dPDFX -dBATCH -dNOPAUSE -dNOOUTERSAVE -dUseCIEColor -sDEVICE=pdfwrite -sProcessColorModel=DeviceCMYK -sOutputFile=$(<:.pdf=_x3.pdf) -dPDFSETTINGS=/prepress ./PDFX_def_wecandothis.ps $<

clean:
	rm -f pages/*.pdf
	rm -f *.pdf
	rm -f _x3.pdf

