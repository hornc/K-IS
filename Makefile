# K-IS Makefile
# Requires lazy-K interpreter 'lazy'
# and pandoc for pdf output.

SHELL := /bin/bash
.PHONY: output sample count size pdf

ifndef lang
lang:
	$(error Please specify a language target with lang=??)

sample:
	@echo Sampling all *.lazy files output:
	@$(foreach file, $(wildcard *.lazy), echo \# $(file):;lazy $(file) | (head -c42; printf " ... " ; tail -c43);echo;)

else
sourcefile = K-IS_$(lang).lazy
outfile = K-IS_$(lang).pdf

lang:
	@:

sample:
	@lazy $(sourcefile) | (head -c42; printf " ... " ; tail -c43)
	@echo
endif

build: lang
	echo | scheme --quiet --load scheme/K-IS_$(lang).scm | sed 's/^K(S/K(IS/' > $(sourcefile)

output: lang
	lazy $(sourcefile)

count: lang
	lazy $(sourcefile) | wc -w

size: lang
	wc -c $(sourcefile)

pdf: lang
	pandoc -o $(outfile) <(cat <(echo -e "---\ntitle:") <(grep "^$(lang)" titles.csv | cut -d, -f2) <(echo -e  "\n...\n\\\tiny") <(fold -w100 $(sourcefile)) <(echo -e "\n\n\\\normalsize ") <(lazy $(sourcefile)| sed 's/,\x08//'))
