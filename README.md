# A LaTeX document template

Nothing fancy, so far.

## Environment

Assumes TexLive or similar with working latexmk.
Built for TexLive 2011 on Ubuntu Linux.

## Compile PDF
`make`

### Renaming
If renaming the PDF after build isn't good eonugh, you should edit the Makefile.

## File structure

  * / contains the source files (tex, bib, ..)
  * out/ contains the compiled pdf along with all the aux junk. Rescue your pdf from here, `make clean` deletes the directory


