(load "LazyK/lazier.scm")
(load "LazyK/prelude.scm")
(load "LazyK/prelude-numbers.scm")

(lazy-def 'D7 '(* 5 43))
(lazy-def '(HEB n) '(o (cons D7) (cons n)))
(lazy-def 'YOD '(HEB (* 9 17)))

; Yiddish
(lazy-def 'KAF '(o (cons (1+ (* 14 17))) (o (cons (* 4 43)) (o (cons (* 11 17)) (cons 46)))))
(lazy-def 'KIZ '(o KAF (o (cons 32) (o (cons D7) (o (cons (* 9 16)) (o YOD (o (cons D7) (cons (* 10 15)))))))))
(lazy-def 'FOYL '(o (cons 32) (o (HEB (* 4 41)) (o (HEB (1+ (* 4 37))) (o YOD (o (HEB (* 12 13)) (cons 44)))))))

(lazy-def '(main input)
   '(o KIZ (o ((* 78 (1+ (* 64 10))) FOYL) (o (cons 8) (cons 46))) end-of-output))

(print-as-cc (laze 'main))
