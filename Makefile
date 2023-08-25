# Anpassen, wenn noetig
#Name der Hauptdatei, ohne Endung .tex
TEX=vorlage
#Name vom Programm, das die PDF-Datei anzeigen soll 
VIEWER=okular 

# Automatische Variablen
SRC=$(wildcard *.tex)
BIB=$(wildcard *.bib)
BIBFILE=$(BIB:.bib=)
SHELL := /bin/bash

all:	$(TEX).pdf
	$(MAKE) -C praesentation all
	$(MAKE) -C minimalbeispiel all

$(TEX).pdf:	$(SRC) $(BIB)

%.pdf:	%.tex
	pdflatex $< && biber $(TEX) && makeindex $(TEX) && pdflatex $< && pdflatex $<
show:	all
	$(VIEWER) $(TEX).pdf

git-clean:
	$(MAKE) -C praesentation git-clean
	$(MAKE) -C minimalbeispiel git-clean
	rm -f $(TEX).{aux,bbl,blg,dvi,log,ps,toc,out,lof,ind,idx,ilg,bcf,lol,run.xml} *~ ksbglogo.pdf design.tex

clean:	git-clean
	$(MAKE) -C praesentation clean
	$(MAKE) -C minimalbeispiel clean
	rm -f $(TEX).pdf

zip:	all git-clean
	cd ..;rm -f matura-arbeit-vorlage-latex.zip; zip -r matura-arbeit-vorlage-latex.zip matura-arbeit-vorlage-latex -x \*.git

