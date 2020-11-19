# K-IS Makefile
# requires lazy-K interpreter 'lazy'

.PHONY: output sample count size pdf

lang:
ifndef lang
$(error Please specify a language target with lang=??)
endif

output: lang
	lazy K-IS_$(lang).lazy

sample: lang
	@lazy K-IS_$(lang).lazy | (head -c42; printf " ... " ; tail -c43)
	@echo

count: lang
	lazy K-IS_$(lang).lazy | wc -w

size: lang
	wc -c K-IS_$(lang).lazy
