(load "LazyK/lazier.scm")
(load "LazyK/prelude.scm")
(load "LazyK/prelude-numbers.scm")

(lazy-def '(AR a)  '(o (cons (* 7 31)) (cons a))) ; 0xD9 nn
(lazy-def '(AR2 a) '(o (cons (* 8 27)) (cons a))) ; 0xD8 nn

(lazy-def 'KAF '(AR (1+ (* 10 13))))
(lazy-def 'KASUL '(o (cons 32) (o KAF (o (AR2 (1+ (* 2 89))) (o (AR (* 8 17)) (o (AR (* 11 12 )) (AR2 (* 10 14))))))))

(lazy-def '(main input)
   '(o KAF (o ((1+ (* 78 (1+ (* 64 10)))) KASUL) (o (cons 8) (cons 46))) end-of-output))

(print-as-cc (laze 'main))
