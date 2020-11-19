# K-IS Makefile
# requires lazy-K interpreter 'lazy'

.PHONY: output sample count size pdf

lang:
ifndef LANG 
$(error Please specify a language target with LANG=??)
endif

output: lang
	lazy K-IS_$(LANG).lazy

sample: lang
	@lazy K-IS_$(LANG).lazy | (head -c42; printf " ... " ; tail -c43)
	@echo

count: lang
	lazy K-IS_$(LANG).lazy | wc -w

size: lang
	wc -c K-IS_$(LANG).lazy
