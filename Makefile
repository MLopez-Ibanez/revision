.PHONY: clean all example test

all: clean example.pdf

example:
	touch example.tex
	@$(MAKE) example.pdf

example.pdf: example.tex example-common.tex newrevisor.sty
	@$(MAKE) test
	@$(RM) example.pdf
	latexmk -pdf "example.tex"
	@$(MAKE) clean

test:
	@$(MAKE) clean
	cd tests && ./test

clean:
	@$(RM) -f *.aux *.log *.out *.sta *.synctex.gz *.fls \
		  tests/*.pdf tests/test/test-*-new-*.png




