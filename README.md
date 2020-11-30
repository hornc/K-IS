# K-IS
[NaNoGenMo-2020](https://github.com/NaNoGenMo/2020) submission

K. is Lazy.

A Kafkaesque, esoteric, Nano NaNoGenMo, [_Meow_](https://github.com/dariusk/NaNoGenMo-2014/issues/50) inspired [epizeuxical](https://en.wikipedia.org/wiki/Epizeuxis) ["lengthy work of fiction"](https://nanowrimo.uservoice.com/knowledgebase/articles/329132-why-50-000-words-and-how-do-you-define-novel) attempt in [Lazy-K](https://esolangs.org/wiki/Lazy_K).

https://github.com/NaNoGenMo/2020/issues/50

> "A short while later, K. was lying in his bed. He very soon went to sleep, but before
> he did he thought a little while about his behaviour, he was satisfied
> with it but felt some surprise that he was not more satisfied."

Important note on pronunciation: For the purposes of this project, 'K.' refers to Franz Kafka's fictional character Josef K., and is to be pronounced as the German letter: 'kah'.

### Requirements

#### Basic CLI output:
* Interpreter [Lazy-K](https://github.com/msullivan/LazyK)

#### PDF output:
* [pandoc](https://pandoc.org/)
* Hebrew / Yiddish font: https://fonts.google.com/specimen/Cardo
* Hittite font (UllikumiA): https://www.hethport.uni-wuerzburg.de/cuneifont/
* Arabic font (KacstOffice): https://fontlibrary.org/en/font/kacstoffice

### Usage and Contents

The main source files for the various novels are named `K-IS_*.lazy`
There is a Makefile to perform basic tasks for each novel.
It assumes the is a compiled Lazy-K interpreter named `lazy` avaiable in `$PATH` , you will need to 
`export PATH=$PATH:~/LazyK` or similar.

`make output lang=en` will produce the English version of the novel.
`make count lang=en` will count the words in the novel.
`make sample lang=en` will output a truncated sample of the novel, so you get the idea.

`make sample` provides a sample for every `.lazy` novel in this project.


### Translation / Edition Notes
* **English**: First version in Lazy-K.
* **German**: Translating into the original language Kafka used to write 'The Trial'. *Faul* is used for lazy. Kafka uses this word in chapter 3 to refer to *die Beamten*
* **Latin**: A version with a different structure due to grammar.  ... *est*.
* **Catalan**: Testing whether Lazy-K can produce Unicode output: *"K. és mandrós"* Yes!
* **Yiddish**: Primarily because I wanted to test RTL layouts in PDF and push Unicode output, but reflects Kafka's Ashkenazi heritage. Yiddish *פויל (foyl)* is close to the German *faul*. Noticed that Semitic aphabets' `K` is ~ `Kaf` and that Kafka's name is 'Kaf' + 'Kah' I'd be interested to know if there is any analysis of the letter symbolism in Kafka's choice of character name related to *both* syllables of his surname.
* **Hittite**: Taking Unicode usage to an obscure extreme. I chose an Akkadiogram [*QA*](https://en.wikipedia.org/wiki/Qa_(cuneiform)) for K. because Akkadian is one of the earliest attested Semitic langauge, and it resembles the letter K, and the Akkadian word *QATU* means hand, which is the origin meaning of the letter in both Arabic and Hebrew, although I can't find a reference that makes that link directly. I could not find a Hittite word for 'lazy', so used one which means 'dirty' in a 'worthy-of-reproach' sense. *Iskunanz* is on the linguistic [Swadesh list](https://en.wiktionary.org/wiki/Appendix:Hittite_Swadesh_list#188) 

### Submit a Translation
To suggest a version in another language
* Equivalant abbreviated *K.* name (K / Kah / Kaf letter)
* 3rd person singular form of *is lazy* (or 'is {another verb}'.)
* Grammatical structure in the form of: `{begin-text} {repeated-middle} {end-text}`.
