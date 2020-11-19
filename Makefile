# K-IS Makefile
# Requires lazy-K interpreter 'lazy'
# and pandoc for pdf output.

SHELL := /bin/bash
.PHONY: output sample count size pdf

lang:
ifndef lang
$(error Please specify a language target with lang=??)
else
sourcefile = K-IS_$(lang).lazy
outfile = K-IS_$(lang).pdf
endif

output: lang
	lazy $(sourcefile)

sample: lang
	@lazy $(sourcefile) | (head -c42; printf " ... " ; tail -c43)
	@echo

count: lang
	lazy $(sourcefile) | wc -w

size: lang
	wc -c $(sourcefile)

pdf: lang
	pandoc -o $(outfile) <(cat <(echo -e "---\ntitle:") <(grep "^$(lang)" titles.csv | cut -d, -f2) <(echo -e  "\n...\n\\\tiny") <(fold -w100 $(sourcefile)) <(echo -e "\n\n\\\normalsize ") <(lazy $(sourcefile)| sed 's/,\x08//'))
