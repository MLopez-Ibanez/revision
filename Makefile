.PHONY: clean

example.pdf: example.tex newrevisor.sty
	@$(MAKE) clean
	#pdflatex -file-line-error -shell-escape -interaction=nonstopmode -synctex=1  -recorder  "example.tex"
	latexmk -pdf "example.tex"
	@$(MAKE) clean

clean:
	rm -f tmp-* *.aux *.log *.out *.sta
