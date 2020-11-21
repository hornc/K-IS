(load "LazyK/lazier.scm")
(load "LazyK/prelude.scm")
(load "LazyK/prelude-numbers.scm")

; UTF-8: 0xF0 0x92 a b
(lazy-def '(CUN a b) '(o (cons (* 10 24)) (o (cons (* 2 73)) (o (cons a) (cons b)))))

; UTF-8: 0xF0 0x92 a a+b
(lazy-def '(CUN2 a b) '(o (cons (* 10 24)) (o (cons (* 2 73)) (o (cons a) (cons (+ a b))))))

;(lazy-def 'QA '(CUN (1+ (* 2 69)) (* 7 23)))
(lazy-def 'QA '(CUN2 (1+ (* 2 69)) 22))
(lazy-def 'ESZI '(o (cons 32) (o (CUN (* 10 13) (* 2 69)) (o (CUN (* 10 14) (* 3 47)) (CUN (* 3 47) (1+ (* 6 27)))))))
(lazy-def 'ISKUNANZ '(o (cons 32) (o (CUN2 (* 7 19) 17) (o (CUN2 (* 2 67) 36) (o (CUN2 (* 4 34) 54) (o (CUN2 (* 8 16) 45) (CUN2 (* 3 47) 16)))))))

(lazy-def '(main input)
   '(o QA (o ((* 78 (1+ (* 64 10))) ISKUNANZ) ESZI) end-of-output))

(print-as-cc (laze 'main))
