all: main.pdf

clean:
	# "Does not clean the out/ dir, just delete it\n"
	latexmk -C
	rm -rf out

# generic tex->pdf rule from man latexmk
# plus out/ creation
# and $$ for make esc char
.PHONY : FORCE_MAKE
%.pdf : %.tex FORCE_MAKE out
	latexmk -f -pdf -outdir=out \
		-e "\$$pdflatex = 'pdflatex %O -interaction=nonstopmode -synctex=1 %S'" \
		$< # the file argument from the pattern match

# somewhere to store the results files
out:
	mkdir -p out
