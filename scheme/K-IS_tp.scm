(load "LazyK/lazier")
(load "LazyK/prelude")
(load "LazyK/prelude-numbers")

(lazy-def 'K_LI  '(o (cons 75) (o (cons 46) (o (cons 32) (o (cons 108) (cons 105))))))
(lazy-def 'WILE_ALA_PALI '(o (cons 32) 
			  (o (cons 119) (o (cons 105) (o (cons 108) (o (cons 101)
			  (o (cons 32)
			  (o (cons 97) (o (cons 108) (o (cons 97) 
			  (o (cons 32)
			  (o (cons 112) (o (cons 97) (o (cons 108) (o (cons 105) (cons 44))))))))))))))))

(lazy-def '(main input)
   '(o (K_LI) (o ((* 26 (1+ (* 64 10))) WILE_ALA_PALI) (o (cons 8) (cons 46))) end-of-output))

(print-as-cc (laze 'main))
