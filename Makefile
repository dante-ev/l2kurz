.PHONY: ctan

all:
	latexmk

clean:
	latexmk -c


ctan:
	rm -rf l2kurz-ctan l2kurz-ctan.tgz
	mkdir l2kurz-ctan
	cp *tex l2kurz.pdf l2kurz.bib latexmkrc fontspec.pdf README.l2kurz ozean.svg ozean.pdf CHANGES l2kurz-ctan
	tar czf l2kurz-ctan.tgz l2kurz-ctan
