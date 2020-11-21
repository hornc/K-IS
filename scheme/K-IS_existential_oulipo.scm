(load "LazyK/lazier.scm")
(load "LazyK/prelude.scm")
(load "LazyK/prelude-numbers.scm")

(lazy-def 'K. '(o (cons 75) (o (cons 46) (o (cons 32) (o (cons 105) (cons 115))))))
(lazy-def 'IS '(o (cons 44) (o (cons 32) (o (cons 105) (cons 115)))))

(lazy-def '(main input)
   '(o (K.) (o ((* 78 (1+ (* 64 10))) IS) (cons 46)) end-of-output))

(print-as-unlambda (laze 'main))
