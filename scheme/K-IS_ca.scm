(load "LazyK/lazier.scm")
(load "LazyK/prelude.scm")
(load "LazyK/prelude-numbers.scm")

(lazy-def 'KIS  '(o (cons 75) (o (cons 46) (o (cons 32) (o (cons 105) (cons 115))))))
(lazy-def 'LAZY  '(o (cons 32) (o (cons 108) (o (cons 97) (o (cons 122) (o (cons 121) (cons 44)))))))

; Catalan, with utf-8 é C3A9 and ó C3B3
(lazy-def 'KES  '(o (cons 75) (o (cons 46) (o (cons 32) (o (cons (* 5 39)) (o (cons (S S (S K) * 13)) (cons 115)))))))
(lazy-def 'MANDROS '(o (cons 32) (o (cons 109) (o (cons 97) (o (cons 110) (o (cons 100) (o (cons 114) (o (cons (* 5 39)) (o (cons (1+ (* 2 89))) (o (cons 115) (cons 44)))))))))))

(lazy-def '(main input)
   '(o (KES) (o ((* 78 (1+ (* 64 10))) MANDROS) (o (cons 8) (cons 46))) end-of-output))
   ;'(o (KES) (o (I MANDROS) (o (cons 8) (cons 46))) end-of-output))

(print-as-cc (laze 'main))
