all: main.pdf
# enable if you don't want log files etc kept after build
#	cp main.pdf main.pdf.keep
#	make clean
#	mv main.pdf.keep main.pdf

clean:
	latexmk -C
	rm *.glg *.glo *.gls *.ist # glossaries files

# generic tex->pdf rule from man latexmk
# and $$ for make esc char
.PHONY : FORCE_MAKE
%.pdf : %.tex FORCE_MAKE
	latexmk -f -pdf \
		-e "\$$pdflatex = 'pdflatex %O -interaction=nonstopmode -synctex=1 %S'" \
		$< # the file argument from the pattern match
