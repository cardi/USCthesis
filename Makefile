.PHONY: all pdf FORCE_MAKE

all pdf:: paper.pdf

# let latexmk do all the dependencies (%.pdf: %.tex mixes make and
# latexmk)
%.pdf: %.tex FORCE_MAKE
	latexmk -g -pdf $<

clean::
	latexmk -pdf -C $*

# vim: set noexpandtab ts=2 sw=2 tw=72:
