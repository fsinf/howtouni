PROJECT = slides
SOURCES := *.tex

LATEXMK = latexmk
TEXOPTS = -pdf -interaction=nonstopmode -output-directory=target

all: $(PROJECT).pdf

clean:
	$(LATEXMK) $(TEXOPTS) -c

distclean:
	$(LATEXMK) $(TEXOPTS) -C

purge:
	rm -rf target

live:
	$(LATEXMK) $(TEXOPTS) -pvc $(PROJECT).tex

draft:
	$(LATEXMK) $(TEXOPTS) -d $(PROJECT).tex

$(PROJECT).pdf: $(SOURCES)
	$(LATEXMK) $(TEXOPTS) $(PROJECT).tex

.PHONY: all clean distclean live draft purge
