.PHONY: clean all cleanall

all: cleanall example.pdf

example.pdf: example.tex newrevisor.sty
	@$(MAKE) clean
	latexmk -pdf "example.tex"
	@$(MAKE) clean

test:
	@$(MAKE) clean
	./test

clean:
	rm -f *.aux *.log *.out *.sta *.synctex.gz *.fls

cleanall: clean
	rm -f *.pdf
