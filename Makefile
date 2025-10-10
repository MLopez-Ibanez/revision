.PHONY: clean all example test

all: clean example.pdf

example:
	@$(MAKE) --ignore-errors test
	@$(RM) example.pdf
	latexmk -pdf "example.tex"
	latexmk -pdf "example.tex"
	@$(MAKE) clean

test:
	@$(MAKE) clean
	cd tests && ./test

clean:
	@$(RM) -f *.aux *.log *.out *.sta *.synctex.gz *.fls \
		  tests/*.pdf tests/test/test-*-new-*.png




