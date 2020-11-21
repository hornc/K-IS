(load "LazyK/lazier.scm")
(load "LazyK/prelude.scm")
(load "LazyK/prelude-numbers.scm")

(lazy-def 'KIS  '(o (cons 75) (o (cons 46) (o (cons 32) (o (cons 105) (cons 115))))))
(lazy-def 'LAZY  '(o (cons 32) (o (cons 108) (o (cons 97) (o (cons 122) (o (cons 121) (cons 44)))))))

(lazy-def '(main input)
   '(o (KIS) (o ((* 78 (1+ (* 64 10))) LAZY) (o (cons 8) (cons 46))) end-of-output))

(print-as-cc (laze 'main))
